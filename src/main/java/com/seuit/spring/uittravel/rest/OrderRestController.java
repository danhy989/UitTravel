package com.seuit.spring.uittravel.rest;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.seuit.spring.uittravel.entity.Order;
import com.seuit.spring.uittravel.entity.OrderAPI;
import com.seuit.spring.uittravel.service.OrderService;

@RestController
@RequestMapping(value= {"/rest"})
public class OrderRestController {

	@Autowired 
	OrderService orderService;
	
	@PostMapping("/order")
	String newOrder(@Valid @RequestBody OrderAPI orderAPI) {
		orderService.saveOrder(orderAPI);
		return "Add success";
	}
}
