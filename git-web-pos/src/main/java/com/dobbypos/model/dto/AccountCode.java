package com.dobbypos.model.dto;

import java.io.Serializable;

public class AccountCode implements Serializable {
	
	private String itemCode;
	private String itemName;
	
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

}
