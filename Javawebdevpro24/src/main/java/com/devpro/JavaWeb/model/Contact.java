package com.devpro.JavaWeb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_contact") 
public class Contact extends BaseEntity {
	@Column(name = "first_name", length = 100 , nullable = false)
	private String  first_name;
	
	@Column(name = "last_name", length = 100 , nullable = false)
	private String  last_name;
	
	@Column(name = "email", length = 100 , nullable = false)
	private String  email;
	
	
	@Column(name = "message", length = 100 , nullable = false)
	private String  message;


	public String getFirst_name() {
		return first_name;
	}


	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}


	public String getLast_name() {
		return last_name;
	}


	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}
}
