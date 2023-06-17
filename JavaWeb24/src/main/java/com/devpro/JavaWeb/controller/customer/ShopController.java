package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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


	@RequestMapping(value = { "/shop" }, method = RequestMethod.GET)
	public String sort(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestParam("page") Optional<Integer> page) throws IOException {

		String sortBy = request.getParameter("sortBy");
		String sortDirection = request.getParameter("sort_direction");

		String sortField = sortBy == null ? "priceSale" : sortBy;
		Sort sort = (sortDirection == null || sortDirection.equals("asc")) ? Sort.by(Direction.ASC, sortField)
				: Sort.by(Direction.DESC, sortField);

		Pageable pageable = PageRequest.of(page.orElse(0), 8, sort);

		Page products = productService.findAll(pageable);

		model.addAttribute("pagedata", products);

		model.addAttribute("sortBy", sortBy);
		model.addAttribute("sortDirection", sortDirection);
		return "customer/shop";
	}

}
