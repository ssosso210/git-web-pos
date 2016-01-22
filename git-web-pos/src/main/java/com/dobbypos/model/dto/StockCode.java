package com.dobbypos.model.dto;

import java.io.Serializable;

public class StockCode implements Serializable {
	
	private int stockCodeNo;
	private String stockName;
	private String standard;
	private int price;
	private String clientName;
	
	public int getStockCodeNo() {
		return stockCodeNo;
	}
	public void setStockCodeNo(int stockCodeNo) {
		this.stockCodeNo = stockCodeNo;
	}
	public String getStockName() {
		return stockName;
	}
	public void setStockName(String stockName) {
		this.stockName = stockName;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

}
