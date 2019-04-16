package com.seuit.spring.uittravel.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seuit.spring.uittravel.entity.Comment;
import com.seuit.spring.uittravel.entity.CommentAPI;
import com.seuit.spring.uittravel.entity.TourInformation;
import com.seuit.spring.uittravel.repository.CommentRepository;
import com.seuit.spring.uittravel.repository.TourInforRepository;

import javassist.NotFoundException;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentRepository commentRepository;
	
	@Autowired
	private TourInforRepository tourInforRepository;

	@Override
	@Transactional
	public void addComment(CommentAPI commentAPI) {
		// TODO Auto-generated method stub
		Optional<TourInformation> tourInfor = tourInforRepository.findById(commentAPI.getIdTourInfor());
		try {
			tourInfor.orElseThrow(()->new NotFoundException("Cant find tourInfor"));
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Comment comment = commentAPI.getComment();
		comment.setTourInfo(tourInfor.get());
		tourInfor.get().getComments().add(comment);
		
		commentRepository.save(comment);
	}

	@Override
	@Transactional
	public List<Comment> listCommentWithTourInforId(Integer id) {
		// TODO Auto-generated method stub
		Optional<TourInformation> tourInfor = tourInforRepository.findById(id);
		try {
			tourInfor.orElseThrow(()->new NotFoundException("Cant find tourInfor"));
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tourInfor.get().getComments();
	}
	
	
}
