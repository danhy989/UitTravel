package com.seuit.spring.uittravel.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seuit.spring.uittravel.entity.Feedback;
import com.seuit.spring.uittravel.entity.Order;
import com.seuit.spring.uittravel.entity.Tour;
import com.seuit.spring.uittravel.entity.TourFull;
import com.seuit.spring.uittravel.helper.ProductExcelHelper;
import com.seuit.spring.uittravel.service.FeedbackService;
import com.seuit.spring.uittravel.service.OrderService;
import com.seuit.spring.uittravel.service.TourService;

import javassist.NotFoundException;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {

	Logger logger = Logger.getLogger(this.getClass().getName());

	@Autowired
	private TourService tourService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private FeedbackService feedbackService;

	@GetMapping("")
	public String showIndex() {
		return "managerPage";
	}

	@GetMapping("/tour")
	public String showTourManagementPage(Model model) {
		List<Tour> listTour = tourService.getAllTour();
		model.addAttribute("listTour", listTour);
		TourFull tourFull = new TourFull();
		List<String> listImage = new ArrayList<String>();
		for (int i = 5; i > 0; i--) {
			listImage.add("");
		}
		tourFull.setImages(listImage);
		model.addAttribute("tour", tourFull);
		return "tourManagerPage";
	}

	@PostMapping("/tour/saveTour")
	public String saveTour(@ModelAttribute("tour") TourFull tourFull, Model model, RedirectAttributes redirect) {
		try {
			tourService.addTour(tourFull);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/manager/tour";
	}

	@PostMapping("/tour/updateTour")
	public String updateTour(@ModelAttribute("tour") TourFull tourFull, Model model, RedirectAttributes redirect) {
		try {
			tourService.updateTour(tourFull);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/manager/tour";
	}

	@PostMapping("/tour/deleteTour/{tourId}")
	public String deletteTour(@PathVariable(value = "tourId") Integer tourId, RedirectAttributes redirect) {
		tourService.deleteTour(tourId);
		return "redirect:/manager/tour";
	}

	@GetMapping("/tour/editTourForm/{tourId}")
	public String showEditTourForm(@PathVariable(value = "tourId") Integer tourId, Model model) {
		TourFull tourFull = new TourFull();
		try {
			tourFull = tourService.findTourFullById(tourId);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("tourFull", tourFull);
		return "editTourForm";
	}

	@GetMapping("/order")
	public String showAllOrder(Model model) {
		List<Order> listOrder = orderService.getAllOrder();
		model.addAttribute("listOrder", listOrder);
		model.addAttribute("order", new Order());
		return "manageOrderPage";
	}

	@PostMapping("/order/check/{id}")
	public String checkOrder(@PathVariable(value = "id") Integer id, RedirectAttributes redirect) {
		orderService.check(id);
		return "redirect:/manager/order";
	}

	@PostMapping("/tour/importExcel")
	public String importExcel(@RequestParam MultipartFile file, RedirectAttributes redirect) {
		ProductExcelHelper productExcelHelper = new ProductExcelHelper();
		File excelFile = convert(file);
		List<TourFull> tourFull;
		try {
			tourFull = productExcelHelper.saveProductsFromExcelFile(excelFile);
			tourFull.stream().forEach((tour) -> {
				try {
					tourService.addTour(tour);
				} catch (NotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			});
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return "redirect:/manager/tour";
	}

	public File convert(MultipartFile file) {
		File convFile = new File(file.getOriginalFilename());
		try {
			convFile.createNewFile();
			FileOutputStream fos = new FileOutputStream(convFile);
			fos.write(file.getBytes());
			fos.close();
			return convFile;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@GetMapping("/feedback")
	public String showAllFeedback(Model model) {
		List<Feedback> listFeedback = feedbackService.getAllFeedback();
		model.addAttribute("listFeedback", listFeedback);
		model.addAttribute("feedback", new Feedback());
		return "feedbackPage";
	}
	
	@PostMapping("/feedback/check/{id}")
	public String checkFeedback(@PathVariable(value = "id") Integer id, RedirectAttributes redirect) {
		feedbackService.check(id);
		return "redirect:/manager/feedback";
	}
}
