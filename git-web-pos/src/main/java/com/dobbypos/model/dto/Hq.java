package com.dobbypos.model.dto;

import java.io.Serializable;

public class Hq implements Serializable {
	
	private String hqCode;
	private String hqName;
	private String phoneNo;
	private String address;
	private String hqId;
	private String hqPasswd;
	
	public String getHqCode() {
		return hqCode;
	}
	public void setHqCode(String hqCode) {
		this.hqCode = hqCode;
	}
	public String getHqName() {
		return hqName;
	}
	public void setHqName(String hqName) {
		this.hqName = hqName;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHqId() {
		return hqId;
	}
	public void setHqId(String hqId) {
		this.hqId = hqId;
	}
	public String getHqPasswd() {
		return hqPasswd;
	}
	public void setHqPasswd(String hqPasswd) {
		this.hqPasswd = hqPasswd;
	}
	@Override
	public String toString() {
		return "Hq [hqCode=" + hqCode + ", hqName=" + hqName + ", phoneNo=" + phoneNo + ", address=" + address
				+ ", hqId=" + hqId + ", hqPasswd=" + hqPasswd + "]";
	}
	
	

}
