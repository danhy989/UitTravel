package com.seuit.spring.uittravel.service;

import java.util.List;
import java.util.Map;

import com.seuit.spring.uittravel.entity.Area;
import com.seuit.spring.uittravel.entity.Comment;
import com.seuit.spring.uittravel.entity.Tour;
import com.seuit.spring.uittravel.entity.TourApi;
import com.seuit.spring.uittravel.entity.TourFull;
import com.seuit.spring.uittravel.entity.TourInformation;

import javassist.NotFoundException;

public interface TourService {
	List<Tour> getAllTour();

	void addTour(TourFull tourFull) throws NotFoundException;

	void deleteTour(Integer Id);

	TourFull findTourFullById(Integer Id) throws NotFoundException;

	TourInformation findTourInforByTourId(Integer Id) throws NotFoundException;

	void updateTour(TourFull tourFull) throws NotFoundException;

	Tour findTourById(Integer Id) throws NotFoundException;

	List<TourApi> getAllTourByAreaId(Integer Id);
	
	@SuppressWarnings("rawtypes")
	Map getAllTourWithArea() throws NotFoundException;

	List<Tour> getAllTourByProvinceId(Integer Id);

	List<Tour> getTopTourOrder();
	
	List<Tour> getTourByKeyword(String keyword);
	
	void addComment(Comment cmt,Integer idTourInfor) throws NotFoundException;
	
}
