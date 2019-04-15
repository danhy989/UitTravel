package com.seuit.spring.uittravel.service;

import java.util.List;

import com.seuit.spring.uittravel.entity.Feedback;

public interface FeedbackService {

	void saveFeedback(Feedback feedback);
	
	List<Feedback> getAllFeedback();
	
	void check(Integer id);
}
