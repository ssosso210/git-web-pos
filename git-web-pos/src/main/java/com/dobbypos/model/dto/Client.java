package com.dobbypos.model.dto;

import java.io.Serializable;

public class Client implements Serializable {
	
	private String clientName;
	private String hqCode;
	private int clientPhoneNo;
	
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getHqCode() {
		return hqCode;
	}
	public void setHqCode(String hqCode) {
		this.hqCode = hqCode;
	}
	public int getClientPhoneNo() {
		return clientPhoneNo;
	}
	public void setClientPhoneNo(int clientPhoneNo) {
		this.clientPhoneNo = clientPhoneNo;
	}

}
