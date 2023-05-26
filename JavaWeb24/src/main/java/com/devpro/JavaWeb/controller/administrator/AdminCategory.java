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

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.services.impl.CategoriesService;

@Controller
public class AdminCategory extends BaseController{
	//inject một bean(service ) vào một bean khác(controller)
	@Autowired
	private CategoriesService  categoriesService;
	
	@RequestMapping(value = {"/admin/manager/categories"}, method = RequestMethod.GET)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{
		String categoryId = request.getParameter("categoryId");
		Integer page = 1;
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		ProductSearch searchModel = new ProductSearch();
		searchModel.setCategoreisId(categoryId);
		searchModel.setPage(page);
		
		model.addAttribute("categories2", categoriesService.searchCategory(searchModel));
		model.addAttribute("searchModel", searchModel);
		return "administrator/categories-admin";
	}
}
