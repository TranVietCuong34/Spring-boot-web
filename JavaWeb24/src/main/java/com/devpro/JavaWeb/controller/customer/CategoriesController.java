package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.ProductImages;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ProductService;
import com.devpro.JavaWeb.services.impl.Product_imageService;

@Controller
public class CategoriesController extends BaseController {

	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private ProductService productService;
	@Autowired
	private Product_imageService imageService;

	@RequestMapping(value = { "/all-category" }, method = RequestMethod.GET)
	public String test(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		String tenDM = request.getParameter("TenDm");
		Categories name_category = categoriesService.getEntityByNativeSQL("select * from tbl_category where name= '"+ tenDM+"'");
		model.addAttribute("name_category",name_category);
		
		return "customer/mayTinh";
	}

}
