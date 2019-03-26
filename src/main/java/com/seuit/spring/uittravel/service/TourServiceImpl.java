package com.seuit.spring.uittravel.service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seuit.spring.uittravel.entity.Image;
import com.seuit.spring.uittravel.entity.Province;
import com.seuit.spring.uittravel.entity.Tour;
import com.seuit.spring.uittravel.entity.TourFull;
import com.seuit.spring.uittravel.entity.TourInformation;
import com.seuit.spring.uittravel.entity.User;
import com.seuit.spring.uittravel.repository.ProvinceRepository;
import com.seuit.spring.uittravel.repository.TourInforRepository;
import com.seuit.spring.uittravel.repository.TourRepository;

import javassist.NotFoundException;

@Service
public class TourServiceImpl implements TourService {

	@Autowired
	private TourRepository tourRepository;
	
	@Autowired
	private TourInforRepository tourInforRepository;
	
	@Autowired
	private ProvinceRepository provinceRepository;
	
	@Override
	@Transactional
	public List<Tour> getAllTour() {
		// TODO Auto-generated method stub
		return tourRepository.findAll();
	}

	@Override
	@Transactional
	public void addTour(TourFull tourFull) throws NotFoundException {
		
		Set<String> listImage = new HashSet<String>();
		listImage.add("123");
		listImage.add("456");
		tourFull.setImages(listImage);
		
		//init province
		Optional<Province> province = provinceRepository.findById(tourFull.getProvince());
		province.orElseThrow(()-> new NotFoundException("Cant find Province"));
		//init 
		Tour tour = new Tour(tourFull.getName(),tourFull.getImage());
		TourInformation tourInfo = new TourInformation(tourFull.getTitle(),tourFull.getDetail()
				,tourFull.getPrice(),tourFull.getStatus());
		Set<Image> images = new HashSet<Image>();
		Set<TourInformation> listTourInfo = new HashSet<TourInformation>();
	
		//Set<String> => Set<Image>
		if(tourFull.getImages()!=null) {
			for (String imageString : tourFull.getImages()) {
				images.add(new Image(imageString));
			}
		}
		
		//TOurInfo - province
		listTourInfo.add(tourInfo);
		province.get().setTourInformation(listTourInfo);
		tourInfo.setProvince(province.get());
		
		//TourInfo - image
		for (Image image : images) {
			image.setTourInfo(tourInfo);
		}
		tourInfo.setImages(images);
		
		//Tour - TourInfo
		tourInfo.setTour(tour);
		tour.setTourInfor(tourInfo);
		
		tourRepository.save(tour);
	}

	@Override
	@Transactional
	public void deleteTour(Integer Id) {
		// TODO Auto-generated method stub
		tourRepository.deleteById(Id);
	}

	@Override
	@Transactional
	public TourFull findTourFullById(Integer Id) throws NotFoundException {
		// TODO Auto-generated method stub
		Optional<Tour> tour = tourRepository.findById(Id);
		tour.orElseThrow(()->new NotFoundException("Cant find tour"));
		TourInformation tourInfo = tour.get().getTourInfor();
		
		//set<images> to set<string>
		Set<String> images = new HashSet<String>();
		if(tourInfo.getImages()!=null) {
			for (Image image : tourInfo.getImages()) {
				images.add(image.getUrl());
			}
		}
		
		return new TourFull(tour.get().getId(),tour.get().getName(),tour.get().getImage(),
				tourInfo.getTitle(),tourInfo.getDetail(),images
				,tourInfo.getPrice(),tourInfo.getStatus(),tourInfo.getProvince().getId());
	}

	@Override
	@Transactional
	public TourInformation findTourInforById(Integer Id) throws NotFoundException {
		// TODO Auto-generated method stub
		Optional<TourInformation> tourInfo = tourInforRepository.findById(Id);
		tourInfo.orElseThrow(()->new NotFoundException("Cant find tourInfo"));
		return tourInfo.get();
	}

	
	

}
