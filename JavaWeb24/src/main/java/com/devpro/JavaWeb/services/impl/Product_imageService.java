package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.Product_image;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class Product_imageService extends BaseService<Product_image> {

	@Override
	protected Class<Product_image> clazz() {
		return Product_image.class;
	}
	
}
