package com.devpro.JavaWeb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.services.impl.CategoriesService;

public abstract class BaseController {

	@Autowired
	private CategoriesService  categoriesService;
	@ModelAttribute("categories")
	public List<Categories> getAllCategories(){
		return categoriesService.findAll();
	}
}
