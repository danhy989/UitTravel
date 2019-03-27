package com.seuit.spring.uittravel.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "area")
public class Area {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_AREA")
	private Integer id;

	@Column(name = "NAME")
	private String name;

	@OneToMany(mappedBy = "area", cascade = CascadeType.ALL)
	@JsonIgnore
	private Set<Province> provinces;

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

	public Set<Province> getProvinces() {
		return provinces;
	}

	public void setProvinces(Set<Province> provinces) {
		this.provinces = provinces;
	}

	public Area(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public Area() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Area [id=" + id + ", name=" + name + ", provinces=" + provinces + "]";
	}

}
