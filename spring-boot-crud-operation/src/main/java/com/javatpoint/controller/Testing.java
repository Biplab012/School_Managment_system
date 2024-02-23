package com.javatpoint.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.javatpoint.model.AddStudent;
import com.javatpoint.service.UserService;

public class Testing {
	@Autowired
	UserService userService;
	public static void main(String[] args) {
	UserService us=new UserService();
	List<AddStudent> st=us.getAllStudents();
	st.stream().forEach(x->System.out.println(x));
	
		
	}
	 

}
