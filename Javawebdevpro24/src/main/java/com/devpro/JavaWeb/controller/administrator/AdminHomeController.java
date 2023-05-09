package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.services.impl.ProductService;
import com.devpro.JavaWeb.services.impl.saleorderSrervice;

@Controller
public class AdminHomeController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private saleorderSrervice saleorderSrervice;
	
	
	@RequestMapping(value = {"/admin/home"}, method = RequestMethod.GET)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{
		
		List<Product> products =productService.findAll();
		List<SaleOrder> saleOrders =saleorderSrervice.findAll();
		
		
		model.addAttribute("products", products);
		model.addAttribute("saleOrders", saleOrders);
		
		
		
		return "administrator/admin";
	}
}
