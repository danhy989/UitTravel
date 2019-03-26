package com.seuit.spring.uittravel.controller;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seuit.spring.uittravel.entity.Province;
import com.seuit.spring.uittravel.entity.Tour;
import com.seuit.spring.uittravel.entity.TourFull;
import com.seuit.spring.uittravel.entity.TourInformation;
import com.seuit.spring.uittravel.entity.User;
import com.seuit.spring.uittravel.service.TourService;

import javassist.NotFoundException;

@Controller
@RequestMapping(value="/manager")
public class ManagerController {
	
	Logger logger = Logger.getLogger(this.getClass().getName());
	
	@Autowired
	private TourService tourService;
	
	@GetMapping("")
	public String showIndex() {
			return "managerPage";
	}
	@GetMapping("/tour")
	public String showTourManagementPage(Model model) {
		List<Tour> listTour = tourService.getAllTour();
		model.addAttribute("listTour", listTour);
		TourFull tourFull = new TourFull();
		model.addAttribute("tour",tourFull);
		return "tourManagerPage";
	}

	@PostMapping("/tour/saveTour")
	public String saveUser(@ModelAttribute("tour") TourFull tourFull,Model model,RedirectAttributes redirect) {
		try {
			tourService.addTour(tourFull);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/manager/tour";
	}

	@PostMapping("/tour/deleteTour/{tourId}")
	public String deletteTour(@PathVariable(value = "tourId") Integer tourId,RedirectAttributes redirect){
		tourService.deleteTour(tourId);
		return "redirect:/manager/tour";
	}

	@GetMapping("/tour/editTourForm/{tourId}")
	public String showEditTourForm(@PathVariable(value = "tourId") Integer tourId,Model model){
		TourFull tourFull = new TourFull();
		try {
			tourFull = tourService.findTourFullById(tourId);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("tourFull",tourFull);
		return "editTourForm";
	}
}
