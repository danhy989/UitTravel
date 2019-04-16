package com.seuit.spring.uittravel.rest;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.seuit.spring.uittravel.entity.Comment;
import com.seuit.spring.uittravel.entity.CommentAPI;
import com.seuit.spring.uittravel.service.CommentService;

@RestController
@RequestMapping(value = "/rest")
public class CommentRestController {
	
	@Autowired
	private CommentService commentService;
	
	@PostMapping("/comment")
	public String addComment(@Valid @RequestBody CommentAPI commentAPI) {
		commentService.addComment(commentAPI);
		return "Save success";
	}
	
	@GetMapping("/comment/tourInfor/{id}")
	public List<Comment> findAllCommentWithIdTourInfor(@PathVariable(name ="id") Integer id) {
		return commentService.listCommentWithTourInforId(id);
	}
}
