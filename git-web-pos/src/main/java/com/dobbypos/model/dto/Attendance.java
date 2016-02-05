package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Timestamp;


public class Attendance implements Serializable {
	
	private int attendanceNo;
	private Timestamp startWork;
	private Timestamp endWork;
	private int employeeNo;
	
	/**
	 * 계산된 값, DB(X)
	 */
	private long workHour;
	
	
	private Employee employeeone;
	
	public int getAttendanceNo() {
		return attendanceNo;                         
	}
	public void setAttendanceNo(int attendanceNo) {
		this.attendanceNo = attendanceNo;
	}
	public Timestamp getStartWork() {
		return startWork;
	}
	public void setStartWork(Timestamp startWork) {
		this.startWork = startWork;
	}
	public Timestamp getEndWork() {
		return endWork;
	}
	public void setEndWork(Timestamp endWork) {
		this.endWork = endWork;
	}
	public int getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(int employeeNo) {
		this.employeeNo = employeeNo;
	}
	
	
	public Employee getEmployeeone() {
		return employeeone;
	}
	public void setEmployeeone(Employee employeeone) {
		this.employeeone = employeeone;
	}
	
	
	public long getWorkHour() {
		return workHour;
	}
	public void setWorkHour(long workHour) {
		this.workHour = workHour;
	}
	@Override
	public String toString() {
		return "Attendance [attendanceNo=" + attendanceNo + ", startWork=" + startWork + ", endWork=" + endWork
				+ ", employeeNo=" + employeeNo + "]";
	}
	

}
