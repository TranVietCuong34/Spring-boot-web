package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.User;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class UserService extends BaseService<User> {

	@Override
	protected Class<User> clazz() {
		return User.class;
	}

}
