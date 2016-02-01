package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Stock implements Serializable {

	private int stockNo;
	private Date stockRegDate;
	private int stockNumber;
	private int stockPrice;
	private String storeCode;
	private int stockCodeNo;	

	private StockCode stockCode;

	public int getStockNo() {
		return stockNo;
	}

	public void setStockNo(int stockNo) {
		this.stockNo = stockNo;
	}

	public Date getStockRegDate() {
		return stockRegDate;
	}

	public void setStockRegDate(Date stockRegDate) {
		this.stockRegDate = stockRegDate;
	}

	public int getStockNumber() {
		return stockNumber;
	}

	public void setStockNumber(int stockNumber) {
		this.stockNumber = stockNumber;
	}

	public int getStockPrice() {
		return stockPrice;
	}

	public void setStockPrice(int stockPrice) {
		this.stockPrice = stockPrice;
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

	public StockCode getStockCode() {
		return stockCode;
	}

	public void setStockCode(StockCode stockCode) {
		this.stockCode = stockCode;
	}

}
