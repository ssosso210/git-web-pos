package com.dobbypos.model.dto;

import java.io.Serializable;
import java.util.List;



public class Employee implements Serializable {
	
	private int employeeNo;
	private String employeeName;
	private String phoneNo;
	private String passwd;
	private String storeCode;
	private int wage;
	private String employeeType;
	private String employeeId;
	
	//Employee 테이블과 Attendance 테이블 사이의 1:Many 관계를 구현한 필드(변수)
	private List<Attendance> attendances;
	private Attendance attendanceone;
	
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
	public String getEmployeeType() {
		return employeeType;
	}
	public void setEmployeeType(String employeeType) {
		this.employeeType = employeeType;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public List<Attendance> getAttendances() {
		return attendances;
	}
	public void setAttendances(List<Attendance> attendances) {
		this.attendances = attendances;
	}
	public Attendance getAttendanceone() {
		return attendanceone;
	}
	public void setAttendanceone(Attendance attendanceone) {
		this.attendanceone = attendanceone;
	}
	
	@Override
	public String toString() {
		return "Employee [employeeNo=" + employeeNo + ", employeeName=" + employeeName + ", phoneNo=" + phoneNo
				+ ", passwd=" + passwd + ", storeCode=" + storeCode + ", wage=" + wage + ", employeeType="
				+ employeeType + ", employeeId=" + employeeId + "]";
	}
	
	

}
