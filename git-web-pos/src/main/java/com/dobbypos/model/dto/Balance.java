package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Timestamp;

public class Balance implements Serializable {
	
	private int balanceNo;
	private int plusMinus;
	private Timestamp regDate;
	private String storeCode;
	private String description;
	private String itemCode;
	private AccountCode accountCode;
	
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
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
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
	public AccountCode getAccountCode() {
		return accountCode;
	}
	public void setAccountCode(AccountCode accountCode) {
		this.accountCode = accountCode;
	}
	
	
}
