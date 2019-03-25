package com.seuit.spring.uittravel.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		Optional<Province> province = provinceRepository.findById(tourFull.getProvince());
		province.orElseThrow(()-> new NotFoundException("Cant find Province"));
		Tour tour = new Tour();
		TourInformation tourInfo = 
				new TourInformation(tourFull.getDetail(),tourFull.getImageFull()
					,tourFull.getPrice(),tourFull.getStatus(),province.get());
		if(tourFull.getId()==null) {
			tour = new Tour(tourFull.getName(),tourFull.getImage(),tourInfo);
			tourRepository.save(tour);
		}else {
			tour = new Tour(tourFull.getId(),tourFull.getName(),tourFull.getImage(),tourInfo);
			tourRepository.save(tour);
		}
		
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
		return new TourFull(tour.get().getId(),tour.get().getName(),tour.get().getImage()
				,tourInfo.getDetail(),tourInfo.getImageFull(),tourInfo.getPrice()
				,tourInfo.getStatus(),tourInfo.getProvince().getId());
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
