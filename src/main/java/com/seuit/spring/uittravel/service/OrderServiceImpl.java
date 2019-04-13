package com.seuit.spring.uittravel.service;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seuit.spring.uittravel.entity.Order;
import com.seuit.spring.uittravel.entity.OrderAPI;
import com.seuit.spring.uittravel.entity.Tour;
import com.seuit.spring.uittravel.entity.TourInformation;
import com.seuit.spring.uittravel.entity.User;
import com.seuit.spring.uittravel.repository.OrderRepository;
import com.seuit.spring.uittravel.repository.TourInforRepository;
import com.seuit.spring.uittravel.repository.TourRepository;

@Service
public class OrderServiceImpl implements OrderService{

	
	@Autowired
	private EntityManager entityManager;
	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private TourRepository tourRepository;
	
	@Override
	public List<Order> getAllOrder() {
		List<Order> orderList = orderRepository.findAll();
		orderList.sort(Comparator.comparing(Order::getStatus));
		return orderList;
		
	}

	@Override
	@Transactional
	public void check(Integer id) {
		Session session = this.getSession();
		Order order = session.get(Order.class,id);
		order.setStatus(1);
		session.merge(order);
	}

	@Override
	public void saveOrder(OrderAPI orderAPI) {
		Order order = orderAPI.getOrder();
		Optional<Tour> tour = tourRepository.findById(orderAPI.getIdTour());
		order.setTour(tour.get());
		order.setStatus(0);
		
		orderRepository.save(order);
	}
	

}
