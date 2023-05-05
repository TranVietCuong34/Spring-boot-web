package com.devpro.JavaWeb.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class BaseEntity {
	@Id 	//khóa chính
	@GeneratedValue(strategy = GenerationType.IDENTITY) //tăng tự động
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "status",nullable = true)
	private boolean status;
	
	@Column(name = "created_date",nullable = true)
	private Date created_date;
	
	@Column(name = "updated_date",nullable = true)
	private Date updated_date;
	
	@Column(name = "created_by",nullable = true)
	private Integer created_by;
	
	@Column(name = "updated_by",nullable = true)
	private Integer updated_by;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}

	public Date getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(Date updated_date) {
		this.updated_date = updated_date;
	}

	public Integer getCreated_by() {
		return created_by;
	}

	public void setCreated_by(Integer created_by) {
		this.created_by = created_by;
	}

	public Integer getUpdated_by() {
		return updated_by;
	}

	public void setUpdated_by(Integer updated_by) {
		this.updated_by = updated_by;
	}
	
}
