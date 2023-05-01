package com.devpro.JavaWeb.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/*
 * 1. Báo cho spring mvc biết đây là câu hình hco mô hình MVC
 * 2. Tạo instance của cấu hình này  <=>MVCCConf mvc = new MVCConf()
 * 	  mvc sẽ được lưu vào trong spring-container(kiểu dữ liệu list ,map)
 * */

@Configuration
public class MVCConf implements WebMvcConfigurer {
	/*
	 * Xử lí cho phần css và js,img
	 * 
	 */
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		//bất cứ request nào có dạng:  http://localhost:8080/css/style.css sẽ vào folder src/main/resources/css
		//classpath = /src/main/resources
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/js/");
		registry.addResourceHandler("/img/**").addResourceLocations("classpath:/img/");
	}

	/*
	 * @Bean báo spring biết cần tạo instance ViewResolver vr = mvc.viewResolver();
	 * vr sẽ được lưu vào trong spring-container(kiểu dữ liệu List, Map) spring mvc
	 * sẽ sử dụng vr để biết folder chứa view
	 */
	@Bean
	// hàm viewResolver định nghĩa view engine
	public ViewResolver viewResolver() {
		//class  InternalResourceViewResolver implements ViewResolver
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		
		//thiết lập view engine
		bean.setViewClass(JstlView.class);
		
		// đường dẫn thư mục gốc chứa views
		bean.setPrefix("/WEB-INF/views/");
		// tên đuôi của view
		bean.setSuffix(".jsp");
		
		return bean;
	}

}
