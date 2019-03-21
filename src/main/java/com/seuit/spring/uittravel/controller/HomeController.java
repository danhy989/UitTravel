package com.seuit.spring.uittravel.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.seuit.spring.uittravel.entity.User;
import com.seuit.spring.uittravel.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping(value= {"/","/index"})
	public String showIndex() {
		return "index";
	}
	
	@GetMapping("/access-denied")
	public String showPageAccessDenied() {
		return "accessDeniedPage";
	}
	
	@GetMapping("/test")
	public String showTest() {
		return "test";
	}
	
}
