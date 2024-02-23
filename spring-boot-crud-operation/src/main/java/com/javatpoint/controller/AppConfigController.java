package com.javatpoint.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class AppConfigController implements WebMvcConfigurer {
	@Override
	public void addViewControllers(ViewControllerRegistry register) {

		register.addViewController("/home").setViewName("welcome");
		register.addViewController("/adminLogin1").setViewName("adminLogin");
		register.addViewController("/login").setViewName("admin");
		register.addViewController("/adminLogin").setViewName("Login");
		register.addViewController("/student").setViewName("student");



	}
}
