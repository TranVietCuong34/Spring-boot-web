package com.devpro.JavaWeb.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.dto.RegisterLogin;
import com.devpro.JavaWeb.model.Role;
import com.devpro.JavaWeb.model.User;
import com.devpro.JavaWeb.services.impl.RoleService;
import com.devpro.JavaWeb.services.impl.UserService;

@Controller
public class RegisterLoginController {
	
	@Autowired
	private UserService  userService;
	@Autowired
	private RoleService roleService;
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

		Set<Role> roles = new HashSet<Role>(roleService.getEntitiesByNativeSQL("select * from tbl_roles where name = 'GUEST' "));
		User user = new User();
		user.setUsername(registerLogin.getUsername());
		user.setPassword(new BCryptPasswordEncoder(6).encode(registerLogin.getPassword()));
		user.setEmail(registerLogin.getEmail());
		user.setRoles(roles);
		userService.saveOrUpdate(user);
		
		model.addAttribute("registerLogin", new  RegisterLogin());
		
		

		return "login";
	}
}
