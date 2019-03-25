package com.seuit.spring.uittravel.rest;

import java.util.List;
import java.util.logging.Logger;

import javax.websocket.server.PathParam;

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
	public List<Tour> showTour() {
		List<Tour> tours = tourService.getAllTour();
		return tours;
	}
	
	@GetMapping("/tour/{idTourInfo}")
	public ResponseEntity<TourInformation> showTourInfor(@PathVariable(name="idTourInfo") Integer idTourInfo)
	{
		TourInformation tourInfo = new TourInformation();
		try {
			tourInfo = tourService.findTourInforById(idTourInfo);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ResponseEntity.ok().body(tourInfo);
	}
}
