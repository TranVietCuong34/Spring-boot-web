package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.Employees;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.services.impl.ContactService;
import com.devpro.JavaWeb.*;

@Controller
public class ContactController extends BaseController {

	/* cách 1: form đơn giản */
//		@RequestMapping(value = {"/contact"},method = RequestMethod.GET)
//	public String ContactUs(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse respone) throws IOException{
//	
//		return "customer/contact";
//	}
//	@RequestMapping(value = {"/contact"},method = RequestMethod.POST)
//	public String ContactPost(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse respone) throws IOException{
		// đọc dữ liệu từ request thông qua một HTML form
//		String firtName = request.getParameter("firtName");
//		System.out.println("firtName = " + firtName);
//		
//		return "customer/contact";
//	}

	@Autowired
	private ContactService contactService;
	/* cách 2 : form spring */
//	buổi 4
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

		// cách 3: đọc dữ liệu từ request thông qua một HTML FORM
		System.out.println("firstName = " + contactUs.getFirtName());
		System.out.println("Name  = " + contactUs.getName());
		System.out.println("Age  = " + contactUs.getAge());
		System.out.println("E-mail = " + contactUs.getEmail());
		System.out.println("Address  = " + contactUs.getAddress());
		
		
		
		//ghi dữ liệu vào database
		Contact contact = new Contact();
		contact.setFirst_name(contactUs.getFirtName());
		contact.setFirst_name(contactUs.getName());
		contact.setEmail(contactUs.getEmail());
		contact.setMessage(contactUs.getMessage());
		contactService.saveOrUpdate(contact);//lưu vào database

		// đọc tên file
		System.out.println(contactUsFile.getOriginalFilename());

		// reset lại form
		model.addAttribute("contactUs", new com.devpro.JavaWeb.dto.ContactUs());

		return "customer/contact";
	}

//	Cách 3: Ajax

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
//															 final @RequestBody com.devpro.JavaWeb.dto.ContactUs contactUs,
//															 @RequestParam("contactUsFile") MultipartFile contactUsFile) {
//
//		// cách 3: đọc dữ liệu từ request thông qua một HTML FORM
//		System.out.println("FirstName = " + contactUs.getFirtName());
//		System.out.println("Name  = " + contactUs.getName());
//		System.out.println("Age  = " + contactUs.getAge());
//		System.out.println("E-mail = " + contactUs.getEmail());
//		System.out.println("Address  = " + contactUs.getAddress());
//
//		Map<String, Object> jsonResult = new HashMap<String, Object>();
//		jsonResult.put("statusCode", 200); // status code ví dụ: 200 500:error 404 : Notfound
//		jsonResult.put("statusMessage", "Cảm ơn bạn " + contactUs.getEmail() + ", Chúng tôi sẽ liên hệ bạn sớm nhất !");
//
//		return ResponseEntity.ok(jsonResult);
//	}
//	
	
	
	
	@RequestMapping(value = { "/index" }, method = RequestMethod.GET)
	public String ContactUs6(final Model model, final HttpServletRequest request, final HttpServletResponse respone)
			throws IOException {

		com.devpro.JavaWeb.dto.ContactUs contactUs = new com.devpro.JavaWeb.dto.ContactUs();
		model.addAttribute("contactUs", contactUs);

		return "customer/index";
	}

	@RequestMapping(value = { "/index" }, method = RequestMethod.POST)
	public ResponseEntity<String> ContactPost2(final Model model, final HttpServletRequest request, final HttpServletResponse respone,
			final @ModelAttribute com.devpro.JavaWeb.dto.ContactUs contactUs,
			// hứng file
			@RequestParam("file") MultipartFile contactUsFile) throws IOException {

		System.out.println(contactUsFile.getOriginalFilename());

		return ResponseEntity.ok("File uploaded successfully.");
	}

}
