package com.devpro.JavaWeb.model;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder")
public class saleorder extends BaseEntity {
	@Column(name = "code", length = 100, nullable = false)
	private String code;

	@Column(name = "total", precision = 13, scale = 2, nullable = true)
	private BigDecimal total;

	@Column(name = "customer_name", length = 100, nullable = false)
	private String customer_name;

	@Column(name = "customer_address", length = 100, nullable = false)
	private String customer_address;

	@Column(name = "seo", length = 1000, nullable = false)
	private String seo;

	@Column(name = "customer_phone", length = 100, nullable = false)
	private String customer_phone;

	@Column(name = "cutomer_email", length = 100, nullable = false)
	private String cutomer_email;

	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id")
	private User user_id;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable( name = "tbl_saleorder_products",
				joinColumns = @JoinColumn(name = "saleorder_id"), 
				inverseJoinColumns = @JoinColumn(name = "product_id"))
	private Set<Product> products = new HashSet<Product>();
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_address() {
		return customer_address;
	}

	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public String getCutomer_email() {
		return cutomer_email;
	}

	public void setCutomer_email(String cutomer_email) {
		this.cutomer_email = cutomer_email;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

}
