package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

public class Menu implements Serializable {
	
	private String foodCode;
	private String foodName;
	private int foodPrice;
	private Date regDate;
	private String hqCode;
	private String menuGroups;
	private String savedFileName;
	private String userFileName;
	
	
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getHqCode() {
		return hqCode;
	}
	public String getMenuGroups() {
		return menuGroups;
	}
	public void setMenuGroups(String menuGroups) {
		this.menuGroups = menuGroups;
	}
	public String getSavedFileName() {
		return savedFileName;
	}
	public void setSavedFileName(String savedFileName) {
		this.savedFileName = savedFileName;
	}
	public String getUserFileName() {
		return userFileName;
	}
	public void setUserFileName(String userFileName) {
		this.userFileName = userFileName;
	}
	public void setHqCode(String hqCode) {
		this.hqCode = hqCode;
	}

}
