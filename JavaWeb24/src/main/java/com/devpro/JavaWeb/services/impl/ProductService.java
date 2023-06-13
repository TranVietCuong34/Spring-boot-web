package com.devpro.JavaWeb.services.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.ProductImages;
import com.devpro.JavaWeb.repository.ProductRepository;
import com.devpro.JavaWeb.services.BaseService;
import com.devpro.JavaWeb.services.PagerData;

import antlr.StringUtils;

@Service
public class ProductService extends BaseService<Product> {

	@Autowired
	private Product_imageService productImagesService;

	@Autowired
	protected Class<Product> clazz() {
		return Product.class;
	}

	/**
	 * dùng để kiểm tra xem admin có upload ảnh product hay không
	 */
	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;

		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;

		return false;
	}

	/**
	 * dùng để kiểm tra xem admin có upload ảnh product hay không
	 */
	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}

	/**
	 * tạo tên file upload
	 */
	private String getUniqueUploadFileName(String fileName) {
		String[] splitFileName = fileName.split("\\.");
		return splitFileName[0] + System.currentTimeMillis() + "." + splitFileName[1];
	}

	/**
	 * thêm mới sản phẩm
	 */
	@Transactional
	public Product addProduct(Product product, MultipartFile productAvatar, MultipartFile[] productPictures)
			throws IllegalStateException, IOException {
		// kiểm tra xem admin có đẩy avatar lên không ???
		if (!isEmptyUploadFile(productAvatar)) { // có đẩy avatar lên.

			String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());

			// tạo đường dẫn tới file chứa avatar
			String pathToAvatar = "F:/upload/product/avatar/" + fileName;

			// lưu avatar vào đường dẫn trên
			productAvatar.transferTo(new File(pathToAvatar));

			product.setAvatar("product/avatar/" + fileName);
		}
		Product productSaved = super.saveOrUpdate(product);

		// có đẩy pictures(product_images) ???
		if (!isEmptyUploadFile(productPictures)) { // có đẩy pictures lên.

			// nếu admin đẩy lên thì duyệt tất cả file đẩy lên và lưu trên server
			for (MultipartFile pic : productPictures) {
				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());

				// lưu ảnh admin đẩy lên vào server
				pic.transferTo(new File("F:/upload/product/pictures/" + fileName));

				// tạo mới 1 bản ghi product_images
				ProductImages productImages = new ProductImages();
				productImages.setPath("product/pictures/" + fileName);
				productImages.setTitle(fileName);
				productImages.setProduct(productSaved);
				productImagesService.saveOrUpdate(productImages);
			}
		}

		// tạo seo: bổ sung thêm thời gian tính bằng miliseconds để tránh trùng seo
//		Slugify slugify = new Slugify();
//		product.setSeo(slugify.slugify(product.getTitle() + "-" + System.currentTimeMillis()));

		// lưu vào database
		return productSaved;
	}

//	/**
//	 * chỉnh sửa sản phẩm
//	 * @throws IOException 
//	 * @throws IllegalStateException 
//	 */
	@Transactional
	public Product editProduct(Product product, MultipartFile productAvatar, MultipartFile[] productPictures)
			throws IllegalStateException, IOException {

		// lấy thông tin cũ của product theo id
		Product productInDb = super.getById(product.getId());

		// có đẩy avartar ??? => xóa avatar cũ đi và cap nhat avatar mới
		if (!isEmptyUploadFile(productAvatar)) {
			// xóa avatar trong folder lên
			new File("F:/upload/" + productInDb.getAvatar()).delete();

			// update avatar mới
			String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());
			productAvatar.transferTo(new File("F:/upload/product/avatar/" + fileName));
			product.setAvatar("product/avatar/" + fileName);
		} else {
			// sử dụng lại avartar cũ
			product.setAvatar(productInDb.getAvatar());
		}
		Product productSaved = super.saveOrUpdate(product); // update san pham trong database

		// có đẩy pictures ???
		if (!isEmptyUploadFile(productPictures)) {
			List<ProductImages> productImages = productImagesService.getEntitiesByNativeSQL(
					"select * from tbl_products_images where product_id = " + productSaved.getId());
			// xóa pictures cũ
			if (productImages != null && productImages.size() > 0) {
				for (ProductImages opi : productImages) {
					// xóa anh san pham trong folder upload
					new File("F:/upload/" + opi.getPath()).delete();

					// xóa dữ liệu anh trong database
					productImagesService.delete(opi);
				}
			}

			// update pictures mới
			for (MultipartFile pic : productPictures) {
				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());

				pic.transferTo(new File("F:/upload/product/pictures/" + fileName));

				ProductImages pi = new ProductImages();
				pi.setPath("product/pictures/" + fileName);
				pi.setTitle(fileName);
				pi.setProduct(productSaved);
				productImagesService.saveOrUpdate(pi);
			}
		}

		// tạo seo
//		Slugify slugify = new Slugify();
//		product.setSeo(slugify.slugify(product.getTitle() + "-" + System.currentTimeMillis()));

		// lưu vào database
		return productSaved;
	}

//	
	public PagerData<Product> searchProduct(ProductSearch searchModel) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_products p WHERE 1=1 ";

		if (searchModel != null) {

			// tìm kiếm theo category
			if (searchModel.getCategoreisId() != null && !"0".equals(searchModel.getCategoreisId())) {
				sql += " and category_id = " + searchModel.getCategoreisId();
			}

			// tìm kiếm theo title và description
			if (!org.springframework.util.StringUtils.isEmpty(searchModel.getCategoreisId())) {
				sql += " and (p.title like '%" + searchModel.getKeyword() + "%'" + " or p.detail_description like '%"
						+ searchModel.getKeyword() + "%'" + " or p.short_description like '%" + searchModel.getKeyword()
						+ "%')";
			}

			// tìm kiếm theo seo
//			if(!StringUtils.isEmpty(searchModel.getSeo())) {
//				sql += " and seo = '" + searchModel.getSeo() + "'";
//			}
			sql += " ORDER BY p.price ASC";
		}

		return getEntitiesByNativeSQL(sql, searchModel.getPage());
	}

	@Transactional
	public Product deleteSanPham(Product product) {
		Product productDel = super.getById(product.getId());
		if (productDel.getStatus() == false) {
			return productDel;
		}
		productDel.setStatus(false);
		return super.saveOrUpdate(productDel);
	}

	@Autowired
	private ProductRepository productRepository;

	public Page<Product> findAll(Pageable pageable) {
		return productRepository.findAll(pageable);
	}

	public List<Product> search(String keyWord) {
		String sql = "SELECT * FROM tbl_products  p WHERE "
				+ "CONCAT(p.title , p.short_description, p.price_sale, p.price)" + "LIKE '%" + keyWord + "%'";
		return getEntitiesByNativeSQL(sql);
	}

}
