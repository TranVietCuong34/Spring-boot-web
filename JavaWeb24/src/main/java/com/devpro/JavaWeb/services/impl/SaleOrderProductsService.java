package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.SaleOrderProducts;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class SaleOrderProductsService extends BaseService<SaleOrderProducts> {

	@Override
	protected Class<SaleOrderProducts> clazz() {
		return SaleOrderProducts.class;
	}

}
