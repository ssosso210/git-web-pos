package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Timestamp;

public class Menu implements Serializable {
	
	private String foodCode;
	private String foodName;
	private int foodPrice;
	private Timestamp regDate;
	private String hqCode;
	
	public String getFoodCode() {
		return foodCode;
	}
	public void setFoodCode(String foodCode) {
		this.foodCode = foodCode;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public int getFoodPrice() {
		return foodPrice;
	}
	public void setFoodPrice(int foodPrice) {
		this.foodPrice = foodPrice;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public String getHqCode() {
		return hqCode;
	}
	public void setHqCode(String hqCode) {
		this.hqCode = hqCode;
	}

}
