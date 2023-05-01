package com.devpro.JavaWeb.dto;

public class Employees {
	private String ten;
	private int tuoi;
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public int getTuoi() {
		return tuoi;
	}
	public void setTuoi(int tuoi) {
		this.tuoi = tuoi;
	}
	public Employees(String ten, int tuoi) {
		super();
		this.ten = ten;
		this.tuoi = tuoi;
	}
	
}
