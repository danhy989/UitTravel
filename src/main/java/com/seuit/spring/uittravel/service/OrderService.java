package com.seuit.spring.uittravel.service;

import java.util.List;

import com.seuit.spring.uittravel.entity.Order;
import com.seuit.spring.uittravel.entity.OrderAPI;

public interface OrderService {
	List<Order> getAllOrder();
	
	void saveOrder(OrderAPI orderAPI);
	
	void check(Integer id);
}
