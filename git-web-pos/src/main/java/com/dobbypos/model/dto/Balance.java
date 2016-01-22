package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class Balance implements Serializable {
	
	private int balanceNo;
	private int plusMinus;
	private Date regDate;
	private String storeCode;
	private String description;
	private String itemCode;
	
	public int getBalanceNo() {
		return balanceNo;
	}
	public void setBalanceNo(int balanceNo) {
		this.balanceNo = balanceNo;
	}
	public int getPlusMinus() {
		return plusMinus;
	}
	public void setPlusMinus(int plusMinus) {
		this.plusMinus = plusMinus;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

}
