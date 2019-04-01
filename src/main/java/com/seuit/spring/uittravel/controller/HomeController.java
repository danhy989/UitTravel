package com.seuit.spring.uittravel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {


	@GetMapping(value = { "/", "/index" })
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

	@PostMapping("/loading")
	public String showLoading() {
		return "loading";
	}
	
	@GetMapping("/tour-info")
	public String showTourInforPage() {
		return "doc";
	}
	
	@GetMapping("/contact")
	public String showContactPage() {
		return "contact";
	}
	
	@GetMapping("/search")
	public String showSearchPage() {
		return "search_results";
	}
}
