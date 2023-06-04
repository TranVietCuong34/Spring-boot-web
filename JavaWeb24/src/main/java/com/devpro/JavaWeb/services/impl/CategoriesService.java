package com.devpro.JavaWeb.services.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.BaseService;
import com.devpro.JavaWeb.services.PagerData;

@Service
public class CategoriesService extends BaseService<Categories> {

	@Override
	protected Class<Categories> clazz() {
		return Categories.class;
	}
	public PagerData<Categories> searchCategory(ProductSearch searchModel) {
		// khởi tạo câu lệnh
				String sql = "SELECT * FROM tbl_category p WHERE 1=1";

				if (searchModel != null) {

					// tìm kiếm theo category
					if (searchModel.getCategoreisId() != null && !"0".equals(searchModel.getCategoreisId())) {
						sql += " and id = " + searchModel.getCategoreisId();
					}

					// tìm kiếm theo seo
//					if(!StringUtils.isEmpty(searchModel.getSeo())) {
//						sql += " and seo = '" + searchModel.getSeo() + "'";
//					}
				}

				return getEntitiesByNativeSQL(sql,searchModel.getPage());
	}
	public List<Product> getProductsByCategoryName(String categoryName) {
	    // lấy danh sách sản phẩm theo tên danh mục từ cơ sở dữ liệu
	    List<Product> products = new ArrayList<>();
	    try {
	        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shop", "root", "123456");
	        String query = "SELECT * FROM tbl_product WHERE categories = ?";
	        PreparedStatement statement = connection.prepareStatement(query);
	        statement.setString(1, categoryName);
	        ResultSet result = statement.executeQuery();
	        while (result.next()) {
	            Product product = new Product();
	            product.setId(result.getInt("id"));
	            product.setTitle(result.getString("title"));
	            product.setDetails(result.getString("details"));
	            product.setPrice(result.getBigDecimal("price"));
	            product.setPriceSale(result.getBigDecimal("priceSale"));
	            product.setAvatar(result.getString("avatar"));
	            // thêm các thuộc tính khác của đối tượng Product nếu có
	            products.add(product);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return products;
	}
	
}
