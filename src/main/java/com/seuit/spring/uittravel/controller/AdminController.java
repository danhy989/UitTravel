package com.seuit.spring.uittravel.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.seuit.spring.uittravel.entity.User;
import com.seuit.spring.uittravel.service.UserService;

@Controller
@RequestMapping(value= {"/admin"},method= RequestMethod.GET)
public class AdminController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping(value= {""})
	public String showAdminPageIndex() {
		return "adminIndex";
	}
	
	
	@GetMapping("/user")
	public String showUserManagementPage(Model model) {
		List<User> listUser = userService.getAllUser();
		model.addAttribute("listUser",listUser);
		return "userManagementPage";
	}
	
	@GetMapping("/role")
	public String showRoleManagementPage() {
		return "roleManagementPage";
	}
	
	@GetMapping("/api")
	public String showApiManagementPage() {
		return "apiManagementPage";
	}
	
	
}
