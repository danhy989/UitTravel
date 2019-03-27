package com.seuit.spring.uittravel.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "province")
public class Province {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_PROVINCE")
	private Integer id;

	@Column(name = "NAME")
	private String name;

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "province")
	@JsonIgnore
	private Set<TourInformation> tourInformation = new HashSet<TourInformation>();

	@ManyToOne
	@JoinColumn(name = "ID_AREA")
	private Area area;

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

	public Set<TourInformation> getTourInformation() {
		return tourInformation;
	}

	public void setTourInformation(Set<TourInformation> tourInformation) {
		this.tourInformation = tourInformation;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public Province() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Province(Integer id, String name, Set<TourInformation> tourInformation) {
		super();
		this.id = id;
		this.name = name;
		this.tourInformation = tourInformation;
	}

	@Override
	public String toString() {
		return "Province [id=" + id + ", name=" + name + ", tourInformation=" + tourInformation + ", area=" + area
				+ "]";
	}

}
