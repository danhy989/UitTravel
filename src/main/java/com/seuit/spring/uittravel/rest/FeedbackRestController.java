package com.seuit.spring.uittravel.rest;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.seuit.spring.uittravel.entity.Feedback;
import com.seuit.spring.uittravel.service.FeedbackService;

@RestController
@RequestMapping(value= {"/rest"})
public class FeedbackRestController {
	@Autowired
	FeedbackService feedbackService;
	
	@PostMapping("/feedback")
	String saveFeedback(@Valid @RequestBody Feedback feedback) {
		feedbackService.saveFeedback(feedback);
		return "Save success";
	}
}
