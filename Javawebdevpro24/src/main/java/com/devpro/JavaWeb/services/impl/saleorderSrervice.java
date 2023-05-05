package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.saleorder;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class saleorderSrervice extends BaseService<saleorder> {

	@Override
	protected Class<saleorder> clazz() {
		return saleorder.class;
	}
	
}
