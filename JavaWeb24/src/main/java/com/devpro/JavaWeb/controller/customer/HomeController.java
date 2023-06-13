package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.Emplyee;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.ProductImages;
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.repository.ProductRepository;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ProductService;
import com.devpro.JavaWeb.services.impl.Product_imageService;

;

@Controller
public class HomeController extends BaseController {
	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private ProductService productService;
	@Autowired
	private Product_imageService imageService;

	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String home(final Model model, final HttpServletRequest request, final HttpServletResponse respone)
			throws IOException {

		// lấy danh sách categories từ database và trả về view thông qua model
		List<Categories> categories = categoriesService.findAll();
		List<Product> products = productService.findAll();
		List<ProductImages> images = imageService.findAll();

		// đẩy xuống view để xử lý
		model.addAttribute("categories", categories);
		model.addAttribute("products", products);
		model.addAttribute("images", images);
		// trả về đường dẫn của view
		return "customer/home";
	}
	@RequestMapping(value = { "/search_product" }, method = RequestMethod.GET)
	public String search(final Model model, final HttpServletRequest request, final HttpServletResponse respone, @RequestParam("keyWord" ) String keyWord)
			throws IOException {

		List<Product> products = productService.search(keyWord);
		model.addAttribute("products", products);
		model.addAttribute("keyWord", keyWord);
		return "customer/home";
	}
}
