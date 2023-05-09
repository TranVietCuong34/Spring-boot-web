package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ProductService;

@Controller
public class AdminProductController extends BaseController{
	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = {"/admin/manage/product"}, method = RequestMethod.GET)
	public String manageProduct(	final Model model, 
									final HttpServletRequest request, 
									final HttpServletResponse response)
		throws IOException{
		
		List<Product> products =productService.findAll();
		
		
		model.addAttribute("products", products);
		
		return "administrator/product-admin";
	}
	
	
	@RequestMapping(value = {"/admin/product"}, method = RequestMethod.GET)
	public String addOrUpdateView(	final Model model, 
									final HttpServletRequest request, 
									final HttpServletResponse response)
		throws IOException{
		
		//khởi tạo 1 product(entity) mới
		Product newProduct = new Product();
		model.addAttribute("product", newProduct);
		
		//trả về danh sách category 
		model.addAttribute("categories", categoriesService.findAll());
		
		return "administrator/add_product_admin";
	}
	
	@RequestMapping(value = {"/admin/product/saveOrUpdate"}, method = RequestMethod.POST)
	public String addOrUpdateStore(	final Model model, 
									final HttpServletRequest request, 
									final HttpServletResponse response,
									@ModelAttribute("product") Product product,
									@RequestParam("productAvatar") MultipartFile productAvatar,
									@RequestParam("productPictures") MultipartFile[] productPictures)
		throws IOException{
		
		if(product.getId() == null || product.getId()<= 0 ) {
			productService.addProduct(product, productAvatar, productPictures);
		}
		// trả về view (list) sử dụng redirect để chuyển hướng request
		return "redirect:/admin/product/list";
	}
}
