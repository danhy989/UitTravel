package com.seuit.spring.uittravel.entity;

import javax.validation.constraints.NotNull;

public class OrderAPI {
	private Order order = new Order();
	@NotNull
	private Integer idTour;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Integer getIdTour() {
		return idTour;
	}
	public void setIdTour(Integer idTour) {
		this.idTour = idTour;
	}
	public OrderAPI(Order order, @NotNull Integer idTour) {
		super();
		this.order = order;
		this.idTour = idTour;
	}
	@Override
	public String toString() {
		return "OrderAPI [order=" + order + ", idTour=" + idTour + "]";
	}
	
}
