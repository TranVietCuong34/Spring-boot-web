package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.ProductImages;
import com.devpro.JavaWeb.repository.ProductRepository;
import com.devpro.JavaWeb.services.PagerData;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ProductService;
import com.devpro.JavaWeb.services.impl.Product_imageService;

import org.springframework.data.domain.*;

// 1. Báo cho spring-mvc biết đây là 1 controller
// 2. SpringMVC sẽ tạo 1 instance của TestController và sẽ được quản lí bởi SpringContrainer
// b1: TestController testController = new TestController();
// b2: SpringContainner.Put(testController)
@Controller
public class ShopController extends BaseController {
	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private ProductService productService;
	@Autowired
	private Product_imageService imageService;

	@Autowired
	private ProductRepository productRepo;


	@RequestMapping(value = { "/shop" }, method = RequestMethod.GET)
	public String sort(final Model model, final HttpServletRequest request, final HttpServletResponse response,@RequestParam("page") Optional<Integer> page)
			throws IOException {

		String sortBy = request.getParameter("sortBy");
		String sortDirection = request.getParameter("sort_direction");

		String sortField = sortBy == null ? "priceSale" : sortBy;
		Sort sort = (sortDirection == null || sortDirection.equals("asc")) ? Sort.by(Direction.ASC, sortField) :Sort.by(Direction.DESC, sortField);
		
		Pageable pageable = PageRequest.of(page.orElse(0), 8, sort);
		
		Page products =  this.productRepo.findAll(pageable);
		
		model.addAttribute("pagedata", products);

		return "customer/shop";
	}

//	@RequestMapping(value = {"/sort"}, method = RequestMethod.GET)
//	public String sort(final Model model, final HttpServletRequest request, final HttpServletResponse response)
//		throws IOException{
//		List<Product> products;	
//		String sortBy = request.getParameter("sort_By");
//		if(sortBy != null) {
//			String sortDirecttion = request.getParameter("sort_direction");
//			org.springframework.data.domain.Sort sort;
//			if(sortDirecttion == null || sortDirecttion.equals("asc")) {
//					sort = org.springframework.data.domain.Sort.by(Direction.ASC, sortBy);
//			}
//			else {
//				sort = org.springframework.data.domain.Sort.by(Direction.DESC, sortBy);
//			}
//			products = (List<Product>) this.productRepo.findAll(sort);
//		}
//		else {
//			products = (List<Product>) this.productRepo.findAll();
//		}
//		model.addAttribute("products", products);
//		
//		
//		return "customer/shop";
//	}
}
