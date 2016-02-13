package com.dobbypos.model.dto;

import java.io.Serializable;


public class AttendanceSearch implements Serializable {
	
	private int employeeNo;
	
	private String dateStr;
	private String storeCode;
	private int customerNo;
	private String startDay;
	private String endDay;
	
	
	
	public int getEmployeeNo() {
		return employeeNo;                         
	}
	public void setEmployeeNo(int employeeNo) {
		this.employeeNo = employeeNo;
	}
	public String getDateStr() {
		return dateStr;
	}
	public void setDateStr(String dateStr) {
		this.dateStr = dateStr;
	}
	
	
	public String getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
	
	
	
	public int getCustomerNo() {
		return customerNo;
	}
	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}
	public String getStartDay() {
		return startDay;
	}
	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}
	public String getEndDay() {
		return endDay;
	}
	public void setEndDay(String endDay) {
		this.endDay = endDay;
	}
	
	@Override
	public String toString() {
		return "AttendanceSearch [employeeNo=" + employeeNo + ", dateStr=" + dateStr + ", storeCode=" + storeCode
				+ ", customerNo=" + customerNo + ", startDay=" + startDay + ", endDay=" + endDay + "]";
	}
	
	

}
