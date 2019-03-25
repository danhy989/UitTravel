package com.seuit.spring.uittravel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.seuit.spring.uittravel.entity.Tour;

@Repository
public interface TourRepository extends JpaRepository<Tour, Integer>{
	
}
