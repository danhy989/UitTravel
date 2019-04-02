package com.seuit.spring.uittravel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.seuit.spring.uittravel.entity.Comment;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Integer>{

}
