package com.dobbypos.model.dto;

import java.io.Serializable;

public class Employee implements Serializable {
	
	private int employeeNo;
	private String employeeName;
	private String phoneNo;
	private String passwd;
	private String storeCode;
	private int wage;
	private String employeeType;
	private String employeeId;
	
	public int getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(int employeeNo) {
		this.employeeNo = employeeNo;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
	public int getWage() {
		return wage;
	}
	public void setWage(int wage) {
		this.wage = wage;
	}
	@Override
	public String toString() {
		return "Employee [employeeNo=" + employeeNo + ", employeeName=" + employeeName + ", phoneNo=" + phoneNo
				+ ", passwd=" + passwd + ", storeCode=" + storeCode + ", wage=" + wage + ", employeeType="
				+ employeeType + ", employeeId=" + employeeId + "]";
	}
	
	

}
