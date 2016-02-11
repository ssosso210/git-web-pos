package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Timestamp;

public class Stock implements Serializable {

	private int stockNo;
	private Timestamp stockRegDate;
	private int stockNumber;
	private int stockPrice;
	private String storeCode;
	private String stockType;	

	private int stockCodeNo;	

	private StockCode stockCode;

	public int getStockNo() {
		return stockNo;
	}

	public void setStockNo(int stockNo) {
		this.stockNo = stockNo;
	}

	public Timestamp getStockRegDate() {
		return stockRegDate;
	}

	public void setStockRegDate(Timestamp stockRegDate) {
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
	
	public String getStockType() {
		return stockType;
	}

	public void setStockType(String stockType) {
		this.stockType = stockType;
	}

}
