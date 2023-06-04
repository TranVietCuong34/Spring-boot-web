package com.devpro.JavaWeb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.dto.RegisterLogin;
import com.devpro.JavaWeb.model.Role;
import com.devpro.JavaWeb.model.User;
import com.devpro.JavaWeb.services.impl.UserService;

@Controller
public class RegisterLoginController {
	
	@Autowired
	private UserService  userService;
	@RequestMapping(value = { "/register-login" }, method = RequestMethod.GET)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		RegisterLogin registerLogin = new RegisterLogin();
		model.addAttribute("registerLogin", registerLogin);

		return "registerlogin";
	}

	@RequestMapping(value = { "/register-login" }, method = RequestMethod.POST)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			final @ModelAttribute RegisterLogin registerLogin) throws IOException {

		User user = new User();
		user.setUsername(registerLogin.getUsername());
		user.setPassword(registerLogin.getPassword());
		user.setEmail(registerLogin.getEmail());
		userService.saveOrUpdate(user);
		
		model.addAttribute("registerLogin", new  RegisterLogin());
		
		

		return "registerlogin";
	}
}
