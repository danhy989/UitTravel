package com.seuit.spring.uittravel.service;

import java.util.List;

import com.seuit.spring.uittravel.entity.Tour;
import com.seuit.spring.uittravel.entity.TourFull;
import com.seuit.spring.uittravel.entity.TourInformation;

import javassist.NotFoundException;

public interface TourService {
	List<Tour> getAllTour();
	void addTour(TourFull tourFull) throws NotFoundException;
	void deleteTour(Integer Id);
	TourFull findTourFullById(Integer Id) throws NotFoundException;
	TourInformation findTourInforById(Integer Id) throws NotFoundException;
}
