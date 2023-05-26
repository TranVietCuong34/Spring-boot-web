package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ContactService;
import com.devpro.JavaWeb.services.impl.ProductService;
import com.devpro.JavaWeb.services.impl.SaleOrderService;

@Controller
public class AdminSaleOrder extends BaseController{
	
	@Autowired
	private SaleOrderService saleorderSrervice;
	@Autowired
	private ProductService  productService;
	@RequestMapping(value = {"/admin/manager/saleOrder"}, method = RequestMethod.GET)
	public String login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{
		
		// lấy danh sách categories từ database và trả về view thông qua model
		List<SaleOrder> saleOrders = saleorderSrervice.findAll();
			
		//đẩy xuống view để xử lý
		model.addAttribute("saleOrders", saleOrders);
		
		return "administrator/saleOrder-admin";
	}
	@RequestMapping(value = { "/admin/SaleOrder/list" }, method = RequestMethod.GET)
	public String searchProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		String keyword = request.getParameter("keyword");
		String categoryId = request.getParameter("categoryId");
		Integer page = 1;
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		ProductSearch searchModel = new ProductSearch();
		searchModel.setKeyword(keyword);
		searchModel.setCategoreisId(categoryId);
		searchModel.setPage(page);

		model.addAttribute("products", productService.searchProduct(searchModel));
		model.addAttribute("searchModel", searchModel);
		return "administrator/categories-admin";
	}
	
}
