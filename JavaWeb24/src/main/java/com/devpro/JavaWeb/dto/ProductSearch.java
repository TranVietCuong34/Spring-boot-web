package com.devpro.JavaWeb.dto;

public class ProductSearch  extends BaseSearchModel{
	private String keyword;
	private String categoreisId ;
	private String currentPage;
	private String seo;
	public ProductSearch(String keyword, String categoreisId, String currentPage, String seo) {
		super();
		this.keyword = keyword;
		this.categoreisId = categoreisId;
		this.currentPage = currentPage;
		this.seo = seo;
	}
	public ProductSearch() {
		super();
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getCategoreisId() {
		return categoreisId;
	}
	public void setCategoreisId(String categoreisId) {
		this.categoreisId = categoreisId;
	}
	public String getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
	public String getSeo() {
		return seo;
	}
	public void setSeo(String seo) {
		this.seo = seo;
	}
}
