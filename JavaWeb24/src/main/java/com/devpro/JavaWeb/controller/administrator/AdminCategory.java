package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ProductService;

@Controller
public class AdminCategory extends BaseController {
	// inject một bean(service ) vào một bean khác(controller)
	@Autowired
	private CategoriesService categoriesService;

	@RequestMapping(value = { "/admin/manager/categories" }, method = RequestMethod.GET)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
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

		model.addAttribute("listCategories", categoriesService.searchCategory(searchModel));
		model.addAttribute("searchModel", searchModel);
		return "administrator/categories-admin";
	}
	@RequestMapping(value = { "/admin/manager/add-category" }, method = RequestMethod.GET)
	public String del(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		Categories newCategories = new Categories();
		model.addAttribute("newCategory", newCategories);
		return "administrator/add_category";
	}

	@RequestMapping(value = { "/admin/manager/add-category/saveOrUpdate" }, method = RequestMethod.POST)
	public String add(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("newCategory") Categories categories) throws IOException {
		
		if(categories.getId() == null || categories.getId() <=0) {
			categoriesService.saveOrUpdate(categories);
		}
		else {
			Categories categoriesInDb = categoriesService.getById(categories.getId());
			categoriesInDb.setName(categories.getName());
			categoriesInDb.setStatus(true);
			
			Categories categoriesSaved = categoriesService.saveOrUpdate(categoriesInDb);
		}
		return "redirect:/admin/manager/categories";
	}
	@RequestMapping(value = { "/admin/delete-category" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> del(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestBody Categories categories) throws IOException {

		categoriesService.deleteCategory(categories);
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("message", "Xóa thành công!");
		return ResponseEntity.ok(jsonResult);
	}
	
	@RequestMapping(value = { "/admin/manager/edit/{catrgoriesId}" }, method = RequestMethod.GET)
	public String edit(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("catrgoriesId") int catrgoriesID) throws IOException {
    
		Categories CategoriesDatabase = categoriesService.getById(catrgoriesID);
		model.addAttribute("newCategory", CategoriesDatabase);

		return "administrator/add_category";
	}
}
