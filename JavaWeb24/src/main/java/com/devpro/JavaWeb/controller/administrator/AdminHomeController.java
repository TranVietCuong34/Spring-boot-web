package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ContactService;
import com.devpro.JavaWeb.services.impl.ProductService;
import com.devpro.JavaWeb.services.impl.SaleorderSrervice;

@Controller
public class AdminHomeController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private SaleorderSrervice saleorderSrervice;
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private CategoriesService categoriesService;
	
	@RequestMapping(value = {"/admin/manager/home"}, method = RequestMethod.GET)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{
		
		List<Product> products = productService.findAll();
		List<SaleOrder> saleOrders = saleorderSrervice.findAll();
		List<Contact> contacts = contactService.findAll();
		List<Categories> categories = categoriesService.findAll();
		
		model.addAttribute("products", products);
		model.addAttribute("saleOrders", saleOrders);
		model.addAttribute("contacts", contacts);
		model.addAttribute("categories", categories);
		
		return "administrator/admin";
	}
	//xóa sản phẩm 
//	@RequestMapping(value = {"/admin/manager/delete-product/{productId}" }, method = RequestMethod.GET)
//	public String delete(final Model model, final HttpServletRequest request, final HttpServletResponse response,
//			@PathVariable("productId") int productID) throws IOException {
//
//	    
//		productService.delete(productID);
//		return "administrator/admin";
//	}
}
