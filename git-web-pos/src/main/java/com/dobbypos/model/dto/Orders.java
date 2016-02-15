package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;


public class Orders implements Serializable {
	
	private int orderNo;
	private Timestamp orderDate;
	private String payType;
	private int discountRate;
	private String orderStatus;
	private int totalTableNo;
	private String storeCode;
	private int customerNo;
	
	private List<OrderDetail> orderDetails;
	
	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}
	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	
	public int getTotalTableNo() {
		return totalTableNo;
	}
	public void setTotalTableNo(int totalTableNo) {
		this.totalTableNo = totalTableNo;
	}
	public String getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
	public int getCustomerNo() {
		return customerNo;
	}
	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}
	

}