package com.seuit.spring.uittravel.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonValueInstantiator;

@Entity
@Table(name="tour")
public class Tour {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_TOUR")
	private Integer id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="IMAGE")
	private String image;
	
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="ID_TOUR_INFO")
	@JsonIgnore
	private TourInformation tourInfor;
	

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

	public TourInformation getTourInfor() {
		return tourInfor;
	}

	public void setTourInfor(TourInformation tourInfor) {
		this.tourInfor = tourInfor;
	}

	public Tour(String name, String image) {
		super();
		this.name = name;
		this.image = image;
	}
	
	public Tour(Integer id,String name, String image,TourInformation tourInfo) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.tourInfor = tourInfo;
	}
	

	public Tour() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Tour [id=" + id + ", name=" + name + ", image=" + image + ", tourInfor=" + tourInfor + "]";
	}
	
	
}
