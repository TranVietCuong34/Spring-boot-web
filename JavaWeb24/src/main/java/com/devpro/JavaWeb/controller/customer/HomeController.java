package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.dto.Emplyee;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.services.impl.CategoriesService;

;

@Controller
public class HomeController {
	@Autowired
	private CategoriesService  categoriesService;
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String home(final Model model, final HttpServletRequest request, final HttpServletResponse respone)
			throws IOException {
		
		// lấy danh sách categories từ database và trả về view thông qua model
		List<Categories> categories = categoriesService.findAll();
		// đẩy xuống view để xử lý
		model.addAttribute("categories", categories);
		// trả về đường dẫn của view
		return "customer/home";
	}

	@RequestMapping(value = { "/home/{tenlop}/{namhoc}" }, method = RequestMethod.GET)
	public String home2(final Model model, final HttpServletRequest request, final HttpServletResponse respone,
			@PathVariable("tenlop") String tenlop, @PathVariable("namhoc") String namhoc) throws IOException {

		/*
		 * Cách 2: đẩy dữ liệu lên controller thông qua "path-variable"
		 * http://localhost:8080/home/java24_1/2028
		 */
		// gửi dữ liệu từ controller --> view -->sử dụng model
		model.addAttribute("tenlop", tenlop);
		model.addAttribute("namhoc ", namhoc);

		List<Emplyee> employees = new ArrayList<Emplyee>();
		employees.add(new Emplyee("Tran Viet Cuong", 22));
		employees.add(new Emplyee("Tran Viet A", 20));
		employees.add(new Emplyee("Tran Viet B", 21));

		model.addAttribute("employees", employees);
		// trả về đường dẫn của view
		return "customer/home";
	}

}
