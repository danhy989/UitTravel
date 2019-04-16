package com.seuit.spring.uittravel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;



@Entity
@Table(name="comment")
public class Comment {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_CMT")
	private Integer id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="CONTENT")
	private String content;
	
	@ManyToOne
	@JsonIgnore
	@JoinColumn(name="ID_TOUR_INFO")
	private TourInformation tourInfo ;

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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	

	public TourInformation getTourInfo() {
		return tourInfo;
	}

	public void setTourInfo(TourInformation tourInfo) {
		this.tourInfo = tourInfo;
	}

	public Comment(String name, String content) {
		super();
		this.name = name;
		this.content = content;
	}

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Comment [id=" + id + ", name=" + name + ", content=" + content + ", tourInfo=" + tourInfo + "]";
	}

	
	
	
}
