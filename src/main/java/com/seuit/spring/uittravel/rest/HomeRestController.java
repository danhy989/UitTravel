package com.seuit.spring.uittravel.rest;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.seuit.spring.uittravel.entity.Tour;
import com.seuit.spring.uittravel.entity.TourInformation;
import com.seuit.spring.uittravel.service.TourService;

import javassist.NotFoundException;

@RestController
@RequestMapping(value = { "/rest" }, method = RequestMethod.GET)
public class HomeRestController {
	@Autowired
	private TourService tourService;

	@GetMapping("/tour")
	public ResponseEntity<List<Tour>> showTour() {
		List<Tour> tours = tourService.getAllTour();
		return ResponseEntity.ok().body(tours);
	}

	@GetMapping("/tour/{idTour}")
	public ResponseEntity<Object> showTourInfor(@PathVariable(name = "idTour") Integer idTour) {
		TourInformation tourInfo = new TourInformation();
		try {
			tourInfo = tourService.findTourInforByTourId(idTour);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ResponseEntity.ok().body(tourInfo);
	}

	@SuppressWarnings("rawtypes")
	@GetMapping("/tour/area")
	public ResponseEntity<Map> showTourWithArea() {
		Map mapTour = null;
		try {
			mapTour = tourService.getAllTourWithArea();
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ResponseEntity.ok().body(mapTour);
	}

	@GetMapping("/tour/province/{provinceId}")
	public ResponseEntity<List<Tour>> showTourWithProvince(@PathVariable(name = "provinceId") Integer provinceId) {
		List<Tour> listTour = tourService.getAllTourByProvinceId(provinceId);
		return ResponseEntity.ok().body(listTour);
	}

	@GetMapping("/tour/topOrder")
	public ResponseEntity<List<Tour>> showTourTopOrder() {
		return ResponseEntity.ok().body(tourService.getTopTourOrder());
	}

}
