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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_USER")
	private Integer id;
	

	@Column(name="USERNAME")
	private String username;
	
	
	@Column(name="PASSWORD")
	private String password;
	
	
	@Column(name="NAME")
	private String name;
	
	
	
	@Column(name="EMAIL")
	private String email;
	
	
	@Column(name="PHONE")
	private Long phone;
	
	@Column(name="STATUS")
	private Integer status;
	
	
	@ManyToMany(fetch=FetchType.EAGER,cascade={CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinTable(name="user_role",joinColumns=@JoinColumn(name="user_id")
				,inverseJoinColumns=@JoinColumn(name="role_id"))
	@JsonIgnore
	private Set<Role> roles = new HashSet<Role>();
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getPhone() {
		return phone;
	}

	public void setPhone(Long phone) {
		this.phone = phone;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	


	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public User(User user) {
		this.id = user.id;
		this.username = user.username;
		this.password = user.password;
		this.name = user.name;
		this.email = user.email;
		this.phone = user.phone;
		this.status = user.status;
		this.roles = user.roles;
	}
	
	


	public User(Integer id, String username, String password, String name, String email, Long phone, Integer status,
			Set<Role> roles) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.status = status;
		this.roles = roles;
	}
	
	
	

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", email="
				+ email + ", phone=" + phone + ", status=" + status + ", roles=" + roles + "]";
	}
	
	
	
	
	
	
}
