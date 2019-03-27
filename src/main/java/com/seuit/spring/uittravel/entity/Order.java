package com.seuit.spring.uittravel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order_tour")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_ORDER")
	private Integer id;

	@Column(name = "NAME")
	private String name;

	@Column(name = "PHONE")
	private Integer phone;

	@Column(name = "ADDRESS")
	private String address;

	@Column(name = "PASSENGERS")
	private Integer passengers;

	@Column(name = "DECRIPTION")
	private String decription;

	@ManyToOne
	@JoinColumn(name = "ID_TOUR")
	private Tour tour;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPhone() {
		return phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getPassengers() {
		return passengers;
	}

	public void setPassengers(Integer passengers) {
		this.passengers = passengers;
	}

	public String getDecription() {
		return decription;
	}

	public void setDecription(String decription) {
		this.decription = decription;
	}

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

	public Order(Integer id, String name, Integer phone, String address, Integer passengers, String decription) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.passengers = passengers;
		this.decription = decription;
	}

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", name=" + name + ", phone=" + phone + ", address=" + address + ", passengers="
				+ passengers + ", decription=" + decription + ", tour=" + tour + "]";
	}

}
