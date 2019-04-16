package com.seuit.spring.uittravel.service;

import java.util.List;

import com.seuit.spring.uittravel.entity.Comment;
import com.seuit.spring.uittravel.entity.CommentAPI;

public interface CommentService {
	void addComment(CommentAPI commentAPI);
	List<Comment> listCommentWithTourInforId(Integer id);
}
