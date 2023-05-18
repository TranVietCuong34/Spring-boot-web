package com.devpro.JavaWeb.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/*
 * dùng để cấu hình cho MVC
 * */
//1. Báo chỗ spring mvc biết đây là cấu hình cho mô hình MVC
//2. Tạo instance của cấu hình này <==> MVCConf mvc = new MVCConf()
// mvc sẽ được lưu vào spring-container( kiểu dữ liệu list,map)
@Configuration
public class MVCConf implements WebMvcConfigurer {
	/*
	 * Xử lí cho phần css và js,img
	 * 
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		//bất cứ request nào có dạng: http://localhost:8080/css/abc.css sẽ vào folder src/main/resource/css
		//classpath: =/src/main/resources
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/css/");
		
		//bất cứ request nào có dạng: http://localhost:8080/css/abc.css sẽ vào folder src/main/resource/js
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/js/");
		
		//bất cứ request nào có dạng: http://localhost:8080/css/abc.css sẽ vào folder src/main/resource/img
		registry.addResourceHandler("/img/**").addResourceLocations("classpath:/img/");
		
		// đăng kí thêm folder upload
		registry.addResourceHandler("/upload/**").addResourceLocations("file:"+"F:/upload/");
	}
	
	/*định nghĩa view engine*/
	// @Bean báo spring biết cần tạo instance
	// ViewResolver vr = mvc.viewResolver()
	// vr sẽ được lưu vào trong spring-container(kiểu dữ liệu list,map)
	// spring mvc sẽ sử dụng vr để biết folder chứ view
	@Bean
	public ViewResolver viewResolver() {
		// class InternalResourceViewResolver implements ViewResolver
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		
		// thiết lập view engine
		bean.setViewClass(JstlView.class);
		
		// đường dẫn thư mục gốc chứa views
		bean.setPrefix("/WEB-INF/views/");
		
		// tên đuôi của view
		bean.setSuffix(".jsp");
		return bean;
	}
}
