package com.seuit.spring.uittravel.entity;

public class TourFull {

	private Integer id;
	private String name;
	private String image;
	private String detail;
	private String imageFull;
	private Double price;
	private Integer status;
	private Integer province;
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
	public String getImageFull() {
		return imageFull;
	}
	public void setImageFull(String imageFull) {
		this.imageFull = imageFull;
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
	public TourFull(String name, String image, String detail, String imageFull, Double price, Integer status, 
			Integer province) {
		super();
		this.name = name;
		this.image = image;
		this.detail = detail;
		this.imageFull = imageFull;
		this.price = price;
		this.status = status;
		this.province = province;
	}
	public TourFull(Integer id,String name, String image, String detail, String imageFull, Double price, Integer status, 
			Integer province) {
		super();
		this.id  = id;
		this.name = name;
		this.image = image;
		this.detail = detail;
		this.imageFull = imageFull;
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
		return "TourFull [name=" + name + ", image=" + image + ", detail=" + detail + ", imageFull=" + imageFull
				+ ", price=" + price + ", status=" + status + ", province=" + province + "]";
	}
	
}
