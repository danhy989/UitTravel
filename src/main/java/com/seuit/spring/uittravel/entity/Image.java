package com.seuit.spring.uittravel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="image")
public class Image {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_IMAGES")
	private Integer id;
	
	@Column(name="URL")
	private String url;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_TOUR_INFO")
	@JsonIgnore
	private TourInformation tourInfo;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public TourInformation getTourInfo() {
		return tourInfo;
	}

	public void setTourInfo(TourInformation tourInfo) {
		this.tourInfo = tourInfo;
	}

	public Image(String url) {
		super();
		this.url = url;
	}

	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Image [id=" + id + ", url=" + url + ", tourInfo=" + tourInfo + "]";
	}
	
	
}
