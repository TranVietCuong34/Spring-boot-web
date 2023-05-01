//package com.devpro.JavaWeb.model;
//
//import javax.persistence.CascadeType;
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.JoinColumn;
//import javax.persistence.Lob;
//import javax.persistence.ManyToOne;
//import javax.persistence.Table;
//
//import org.hibernate.annotations.ManyToAny;
//
//import com.ibm.icu.math.BigDecimal;
//
//@Entity
//@Table(name = "tbl_products")
//public class Product extends BaseEntity {
//
//	@Column(name = "title", length = 100, nullable = false)
//	private String title;
//
//	@Column(name = "price", precision = 13, scale = 2, nullable = false)
//	private BigDecimal price;
//
//	@Column(name = "price_sale", precision = 13, scale = 2, nullable = true)
//	private BigDecimal price_sale;
//
//	@Column(name = "short_description", length = 3000, nullable = false)
//	private String shortDes;
//
//	@Lob
//	@Column(name = "detail_description", nullable = false, columnDefinition = "LONGTEXT")
//	private String details;
//
//	@Column(name = "avatar", nullable = true)
//	private String avatar;
//
//	@Column(name = "seo", length = 3000, nullable = true)
//	private String seo;
//
//	@Column(name = "is_hot", nullable = true)
//	private boolean isHot = Boolean.FALSE;
//
//	@ManyToOne(cascade = CascadeType.ALL,
//			fetch = FetchType.LAZY)
//	@JoinColumn(name = "category_id")
//	private Categories categories;
//
//	public String getTitle() {
//		return title;
//	}
//
//	public void setTitle(String title) {
//		this.title = title;
//	}
//
//	public BigDecimal getPrice() {
//		return price;
//	}
//
//	public void setPrice(BigDecimal price) {
//		this.price = price;
//	}
//
//	public BigDecimal getPrice_sale() {
//		return price_sale;
//	}
//
//	public void setPrice_sale(BigDecimal price_sale) {
//		this.price_sale = price_sale;
//	}
//
//	public String getShortDes() {
//		return shortDes;
//	}
//
//	public void setShortDes(String shortDes) {
//		this.shortDes = shortDes;
//	}
//
//	public String getDetails() {
//		return details;
//	}
//
//	public void setDetails(String details) {
//		this.details = details;
//	}
//
//	public String getAvatar() {
//		return avatar;
//	}
//
//	public void setAvatar(String avatar) {
//		this.avatar = avatar;
//	}
//
//	public String getSeo() {
//		return seo;
//	}
//
//	public void setSeo(String seo) {
//		this.seo = seo;
//	}
//
//	public boolean isHot() {
//		return isHot;
//	}
//
//	public void setHot(boolean isHot) {
//		this.isHot = isHot;
//	}
//
//	public Categories getCategories() {
//		return categories;
//	}
//
//	public void setCategories(Categories categories) {
//		this.categories = categories;
//	}
//
//}
