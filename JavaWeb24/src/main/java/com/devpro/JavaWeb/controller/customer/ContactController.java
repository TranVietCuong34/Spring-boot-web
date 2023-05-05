package com.devpro.JavaWeb.controller.customer;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.services.impl.ContactService;
import com.devpro.JavaWeb.*;

@Controller
public class ContactController extends BaseController {
	@Autowired // => spring  vào springController lấy 1 bean kiểu contactService
	private ContactService ContactService;
	/* cách 2 : form spring */
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String ContactUs(final Model model, final HttpServletRequest request, final HttpServletResponse respone)
			throws IOException {

		com.devpro.JavaWeb.dto.ContactUs contactUs = new com.devpro.JavaWeb.dto.ContactUs();
		model.addAttribute("contactUs", contactUs);

		return "customer/contact";
	}

	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String ContactPost(final Model model, final HttpServletRequest request, final HttpServletResponse respone,
			final @ModelAttribute com.devpro.JavaWeb.dto.ContactUs contactUs,
			// hứng file
			@RequestParam("contactUsFile") MultipartFile contactUsFile) throws IOException {

		Contact contact = new Contact();
		contact.setFirst_name(contactUs.getFirtName());
		contact.setLast_name(contactUs.getName());
		contact.setEmail(contactUs.getEmail());
		contact.setMessage(contactUs.getMessage());
		ContactService.saveOrUpdate(contact); // lưu vào database

		// đọc tên file
		System.out.println(contactUsFile.getOriginalFilename());

		// reset lại form
		model.addAttribute("contactUs", new com.devpro.JavaWeb.dto.ContactUs());

		return "customer/contact";
	}
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
//	public String ContactUs1(final Model model, final HttpServletRequest request, final HttpServletResponse respone)
//			throws IOException {
//
//		return "customer/contact";
//	}
//
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
//	public ResponseEntity<Map<String, Object>> ajax_contact(final Model model, 
//															final HttpServletRequest request,
//															final HttpServletResponse respone, 
//															 final @RequestBody com.devpro.JavaWeb.dto.ContactUs contactUs
//															
//															) {
//
//		// cách 3: đọc dữ liệu từ request thông qua một HTML FORM
//		System.out.println("FirstName = " + contactUs.getFirtName());
//		System.out.println("Name  = " + contactUs.getName());
//		System.out.println("Age  = " + contactUs.getAge());
//		System.out.println("E-mail = " + contactUs.getEmail());
//		System.out.println("Address  = " + contactUs.getAddress());
//		
//		
//		
//		Map<String, Object> jsonResult = new HashMap<String, Object>();
//		jsonResult.put("statusCode", 200); // status code ví dụ: 200 500:error 404 : Notfound
//		jsonResult.put("statusMessage", "Cảm ơn bạn " + contactUs.getEmail() + ", Chúng tôi sẽ liên hệ bạn sớm nhất !");
//
//		return ResponseEntity.ok(jsonResult);
//	}

	
	
	
}
