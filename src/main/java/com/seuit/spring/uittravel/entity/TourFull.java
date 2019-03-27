package com.seuit.spring.uittravel.entity;

import java.util.List;

public class TourFull {

	private Integer id;
	private String name;
	private String image;
	private String title;
	private String detail;
	private List<String> images;
	private Double price;
	private Integer status;
	private Integer province;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getProvince() {
		return province;
	}

	public void setProvince(Integer province) {
		this.province = province;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void addImage(String image) {
		this.images.add(image);
	}

	public TourFull(String name, String image, String title, String detail, List<String> images, Double price,
			Integer status, Integer province) {
		super();
		this.name = name;
		this.image = image;
		this.title = title;
		this.detail = detail;
		this.images = images;
		this.price = price;
		this.status = status;
		this.province = province;
	}

	public TourFull(Integer id, String name, String image, String title, String detail, List<String> images,
			Double price, Integer status, Integer province) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.title = title;
		this.detail = detail;
		this.images = images;
		this.price = price;
		this.status = status;
		this.province = province;
	}

	public TourFull() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "TourFull [id=" + id + ", name=" + name + ", image=" + image + ", title=" + title + ", detail=" + detail
				+ ", images=" + images + ", price=" + price + ", status=" + status + ", province=" + province + "]";
	}

}
