package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 1. Báo cho spring-mvc biết đây là 1 controller
// 2. SpringMVC sẽ tạo 1 instance của TestController và sẽ được quản lí bởi SpringContrainer
// b1: TestController testController = new TestController();
// b2: SpringContainner.Put(testController)
@Controller 
public class ShopController {
	@RequestMapping(value = {"/shop"}, method = RequestMethod.GET)
	public String test(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{
		
		return "customer/shop";
	}
}
