package com.seuit.spring.uittravel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.seuit.spring.uittravel.entity.Comment;
import com.seuit.spring.uittravel.service.TourService;

import javassist.NotFoundException;

@Controller
public class HomeController {

	@Autowired
	private TourService tourService;

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

	@PostMapping("/addComment")
	public void saveComment(@ModelAttribute(name="cmt") Comment cmt) {
		try {
			tourService.addComment(cmt, 1);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@GetMapping("/testAddComment")
	public String testAddComment() {
		Comment cmt = new Comment("duyAnh","123456121");
		try {
			tourService.addComment(cmt, 1);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "doc";
	}

}
