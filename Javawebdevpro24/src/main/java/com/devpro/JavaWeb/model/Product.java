package com.devpro.JavaWeb.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ManyToAny;

import com.ibm.icu.math.BigDecimal;

@Entity
@Table(name = "tbl_products")
public class Product extends BaseEntity{
	@Column(name = "title" , length = 1000, nullable = false)
	private String title;
	
	@Column(name = "price" , precision = 13,scale =  2, nullable = false)
	private java.math.BigDecimal price;
	
	
	@Column(name = "price_sale" ,  precision = 13,scale =  2,nullable = true)
	private java.math.BigDecimal price_sale;
	
	@Column(name = "short_description" , length = 3000, nullable = false)
	private String short_description;
	
	@Lob
	@Column(name = "detail_description", nullable = false, columnDefinition = "LONGTEXT")
	private String detail_description;

	@Column(name = "avatar" , nullable = true)
	private String avatar;
	
	@Column(name = "seo" , length = 1000, nullable = true)
	private String seo;
	
	@Column(name = "is_hot" , nullable = true)
	private boolean is_hot = Boolean.FALSE;
	
	@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private  Categories categories;

	@ManyToMany(cascade = CascadeType.ALL,
			fetch = FetchType.EAGER,
			mappedBy = "products")
	private Set<saleorder> saleorders = new HashSet<saleorder>();
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public java.math.BigDecimal getPrice() {
		return price;
	}

	public void setPrice(java.math.BigDecimal price) {
		this.price = price;
	}

	public java.math.BigDecimal getPrice_sale() {
		return price_sale;
	}

	public void setPrice_sale(java.math.BigDecimal price_sale) {
		this.price_sale = price_sale;
	}

	public String getShort_description() {
		return short_description;
	}

	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}

	public String getDetail_description() {
		return detail_description;
	}

	public void setDetail_description(String detail_description) {
		this.detail_description = detail_description;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public boolean isIs_hot() {
		return is_hot;
	}

	public void setIs_hot(boolean is_hot) {
		this.is_hot = is_hot;
	}

	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}






}
