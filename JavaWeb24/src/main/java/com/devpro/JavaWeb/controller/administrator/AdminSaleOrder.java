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
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ContactService;
import com.devpro.JavaWeb.services.impl.SaleorderSrervice;
@Controller
public class AdminSaleOrder extends BaseController{
	
	@Autowired
	private SaleorderSrervice saleorderSrervice;
	@RequestMapping(value = {"/admin/saleOrder"}, method = RequestMethod.GET)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{
		
		// lấy danh sách categories từ database và trả về view thông qua model
		List<SaleOrder> saleOrders = saleorderSrervice.findAll();
		
		
		
		
		//đẩy xuống view để xử lý
		model.addAttribute("saleOrders", saleOrders);
		
		return "administrator/saleOrder-admin";
	}
}
