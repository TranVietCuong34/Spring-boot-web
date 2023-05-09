package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.ProductImages;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class Product_imageService extends BaseService<ProductImages> {

	@Override
	protected Class<ProductImages> clazz() {
		return ProductImages.class;
	}
	
}
