package com.dobbypos.model.dto;

import java.io.Serializable;

public class OrderDetail implements Serializable {
	
	private int orderDetailNo;
	private int orderNo;
	private int quantity;
	private int price;
	private String foodCode;
	private int totalTableNo;
	private String foodName;
	
	public int getTotalTableNo() {
		return totalTableNo;
	}
	public void setTotalTableNo(int totalTableNo) {
		this.totalTableNo = totalTableNo;
	}
	public int getOrderDetailNo() {
		return orderDetailNo;
	}
	public void setOrderDetailNo(int orderDetailNo) {
		this.orderDetailNo = orderDetailNo;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
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

}
