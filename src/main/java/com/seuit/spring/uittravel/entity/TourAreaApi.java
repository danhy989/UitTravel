package com.seuit.spring.uittravel.entity;

public class TourAreaApi {
	private Integer id;
	private String name;
	private String image;
	private Double price;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public TourAreaApi(Integer id, String name, String image, Double price) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
	}
	public TourAreaApi() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
