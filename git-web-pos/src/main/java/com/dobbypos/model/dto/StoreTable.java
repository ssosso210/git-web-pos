package com.dobbypos.model.dto;

public class StoreTable {
	private int tableNo;
	private String storeCode;
	private String totalTableNo;
	private int isDeleted;
	public int getTableNo() {
		return tableNo;
	}
	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}
	public String getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
	public String getTotalTableNo() {
		return totalTableNo;
	}
	public void setTotalTableNo(String totalTableNo) {
		this.totalTableNo = totalTableNo;
	}
	public int getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(int isDeleted) {
		this.isDeleted = isDeleted;
	}
	
	
	
}
