package com.seuit.spring.uittravel.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.seuit.spring.uittravel.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Integer>{

}
