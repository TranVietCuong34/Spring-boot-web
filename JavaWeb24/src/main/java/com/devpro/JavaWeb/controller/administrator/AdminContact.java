package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ContactService;
@Controller
public class AdminContact extends BaseController{
	
	@Autowired
	private ContactService  contactService;
	@RequestMapping(value = {"/admin/contact"}, method = RequestMethod.GET)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{
		
		// lấy danh sách categories từ database và trả về view thông qua model
//		List<Contact> contacts = contactService.findAll();
		List<Contact> contacts = contactService.getEntitiesByNativeSQL("select * from tbl_contact");
		
		
		
		//đẩy xuống view để xử lý
		model.addAttribute("contacts", contacts);
		
		return "administrator/contact-admin";
	}
}
