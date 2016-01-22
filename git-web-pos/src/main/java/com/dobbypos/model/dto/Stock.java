package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class Stock implements Serializable {
	
	private int stockNo;
	private Date s_regDate;
	private int s_number;
	private int s_price;
	private String storeCode;
	private int stockCodeNo;
	
	public int getStockNo() {
		return stockNo;
	}
	public void setStockNo(int stockNo) {
		this.stockNo = stockNo;
	}
	public Date getS_regDate() {
		return s_regDate;
	}
	public void setS_regDate(Date s_regDate) {
		this.s_regDate = s_regDate;
	}
	public int getS_number() {
		return s_number;
	}
	public void setS_number(int s_number) {
		this.s_number = s_number;
	}
	public int getS_price() {
		return s_price;
	}
	public void setS_price(int s_price) {
		this.s_price = s_price;
	}
	public String getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
	public int getStockCodeNo() {
		return stockCodeNo;
	}
	public void setStockCodeNo(int stockCodeNo) {
		this.stockCodeNo = stockCodeNo;
	}

}
