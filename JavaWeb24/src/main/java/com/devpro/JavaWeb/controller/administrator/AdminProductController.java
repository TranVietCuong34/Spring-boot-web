package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.print.DocFlavor.STRING;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ProductService;

@Controller
public class AdminProductController extends BaseController {
	@Autowired
	private ProductService productService;
		
	@RequestMapping(value = { "/admin/manager/add-product" }, method = RequestMethod.GET)
	public String addOrUpdateView(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {

		// khởi tạo 1 product(entity) mới
		Product newProduct = new Product();
		model.addAttribute("product", newProduct);

		return "administrator/add_product";
	}

	@RequestMapping(value = { "/admin/manager/add-product/{productId}" }, method = RequestMethod.GET)
	public String edit(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("productId") int productID) throws IOException {
    
		Product productIdDatabase = productService.getById(productID);
		model.addAttribute("product", productIdDatabase);

		return "administrator/add_product";
	}

	@RequestMapping(value = {"/admin/manager/del-product/{productId}" }, method = RequestMethod.GET)
	public String del(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("productId") int productID) throws IOException {

	    
		productService.delete(productID);
		return "redirect:/admin/product/list";
	}
	
	@RequestMapping(value = { "/admin/add-product/saveOrUpdate" }, method = RequestMethod.POST)
	public String addOrUpdateStore(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("product") Product product,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures) throws IOException {

		if (product.getId() == null || product.getId() <= 0) {
			productService.addProduct(product, productAvatar, productPictures);
		} else {
			productService.editProduct(product, productAvatar, productPictures);
		}
		// trả về view (list) sử dụng redirect để chuyển hướng request
		return "redirect:/admin/product/list";
	}

	@RequestMapping(value = { "/admin/product/list" }, method = RequestMethod.GET)
	public String searchProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		String keyword = request.getParameter("keyword");
		String categoryId = request.getParameter("categoryId");
		Integer page = 1;
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		ProductSearch searchModel = new ProductSearch();
		searchModel.setKeyword(keyword);
		searchModel.setCategoreisId(categoryId);
		searchModel.setPage(page);

		model.addAttribute("products", productService.searchProduct(searchModel));
		model.addAttribute("searchModel", searchModel);
		return "administrator/product_list";
	}
}
