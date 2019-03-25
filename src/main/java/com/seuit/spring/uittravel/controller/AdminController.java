package com.seuit.spring.uittravel.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seuit.spring.uittravel.entity.User;
import com.seuit.spring.uittravel.service.UserService;

@Controller
@RequestMapping(value = { "/admin" })
public class AdminController {

	@Autowired
	private UserService userService;

	@GetMapping(value = { "" })
	public String showAdminPageIndex() {
		return "adminIndex";
	}

	//USER
	@GetMapping("/user")
	public String showUserManagementPage(Model model) {
		List<User> listUser = userService.getAllUser();
		model.addAttribute("listUser", listUser);
		model.addAttribute("user",new User());
		return "userManagementPage";
	}

	@PostMapping("/user/saveUser")
	public String saveUser( @ModelAttribute("user") User user,RedirectAttributes redirect) {
		userService.addUser(user);
		return "redirect:/admin/user";
	}
	
	

	@PostMapping("/user/deleteUser/{userId}")
	public String deletteUser(@PathVariable(value = "userId") Integer userId,RedirectAttributes redirect){
		userService.deleteUser(userId);
		return "redirect:/admin/user";
	}

	@GetMapping("/user/editUserForm/{userId}")
	public String showEditUserForm(@PathVariable(value = "userId") Integer userId,RedirectAttributes redirect,Model model){
		User user = userService.findUserById(userId);
		model.addAttribute("user",user);
		return "editUserForm";
	}

	//Role
	@GetMapping("/role")
	public String showRoleManagementPage() {
		return "roleManagementPage";
	}

	//api
	@GetMapping("/api")
	public String showApiManagementPage() {
		return "apiManagementPage";
	}

}
