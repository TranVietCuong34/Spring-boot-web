package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class ProductService extends BaseService<Product> {

	@Override
	protected Class<Product> clazz() {
		return Product.class;
	}

}
