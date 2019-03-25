package com.seuit.spring.uittravel.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="tour_infomation")
public class TourInformation {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_TOUR_INFO")
	private Integer id;
	
	@Column(name="TITLE")
	private String title;
	
	@Column(name="DETAIL")
	private String detail;
	
	@Column(name="IMAGE_FULL")
	private String imageFull;
	
	@Column(name="PRICE")
	private Double price;
	
	@Column(name="STATUS")
	private Integer status;
	
	@OneToOne(mappedBy="tourInfor",cascade=CascadeType.ALL)
	private Tour tour;
	
	@ManyToOne
	@JoinColumn(name="ID_PROVINCE")
	private Province province;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

	public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public TourInformation( String title,String detail, String imageFull, Double price, Integer status,
			Province province) {
		super();
		this.title= title;
		this.detail = detail;
		this.imageFull = imageFull;
		this.price = price;
		this.status = status;
		
		this.province = province;
	}
	public TourInformation( Integer id,String title,String detail, String imageFull, Double price, Integer status,Tour tour,
			Province province) {
		super();
		this.title= title;
		this.id = id;
		this.detail = detail;
		this.imageFull = imageFull;
		this.price = price;
		this.status = status;
		this.tour=tour;
		this.province = province;
	}

	public TourInformation() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "TourInformation [id=" + id + ", detail=" + detail + ", imageFull=" + imageFull + ", price=" + price
				+ ", status=" + status + ", tour=" + tour + ", province=" + province + "]";
	}
	
	
	
}
