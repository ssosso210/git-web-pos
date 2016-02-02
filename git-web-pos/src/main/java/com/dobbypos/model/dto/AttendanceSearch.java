package com.dobbypos.model.dto;

import java.io.Serializable;


public class AttendanceSearch implements Serializable {
	
	private int employeeNo;
	private String dateStr;
	
	
	
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
	@Override
	public String toString() {
		return "AttendanceSearch [employeeNo=" + employeeNo + ", dateStr=" + dateStr + "]";
	}
	
	

}
