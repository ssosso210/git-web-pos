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
	private int isDeleted;
	private String paytype;
	
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	/**
	 * 계산된 가격의 함계
	 */
	private long totalprice;
	/**
	 * 총 갯수
	 */
	private int totalcount;
	
	private int orderDetailPrice;
	
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
	
	
	
	
	public long getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(long totalprice) {
		this.totalprice = totalprice;
	}
	
	
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getOrderDetailPrice() {
		return orderDetailPrice;
	}
	public void setOrderDetailPrice(int orderDetailPrice) {
		this.orderDetailPrice = orderDetailPrice;
	}
	public int getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(int isDeleted) {
		this.isDeleted = isDeleted;
	}
	@Override
	public String toString() {
		return "Menu [foodCode=" + foodCode + ", foodName=" + foodName + ", foodPrice=" + foodPrice + ", regDate="
				+ regDate + ", hqCode=" + hqCode + ", menuGroups=" + menuGroups + ", savedFileName=" + savedFileName
				+ ", userFileName=" + userFileName + ", totalprice=" + totalprice + "]";
	}

}
