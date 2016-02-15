package com.dobbypos.model.dto;

import java.io.Serializable;

public class Store implements Serializable {
	
	private String storeCode;
	private String address;
	private String storeName;
	private String managerName;
	private String email;
	private String phoneNo;
	private String hqCode;
	
	//Store 테이블과 store hq 사이의 Many:1 관계를 구현한 필드(변수)
	
	private Hq hqone;
	
	public String getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getHqCode() {
		return hqCode;
	}
	public void setHqCode(String hqCode) {
		this.hqCode = hqCode;
	}
	
	
	public Hq getHqone() {
		return hqone;
	}
	public void setHqone(Hq hqone) {
		this.hqone = hqone;
	}
	@Override
	public String toString() {
		return "Store [storeCode=" + storeCode + ", address=" + address
				+ ", storeName=" + storeName + ", managerName=" + managerName + ", email=" + email + ", phoneNo="
				+ phoneNo + ", hqCode=" + hqCode + "]";
	}

	
	
}
