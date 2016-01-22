package com.dobbypos.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class Attendance implements Serializable {
	
	private int attendanceNo;
	private Date startWork;
	private Date endWork;
	private int employeeNo;
	
	public int getAttendanceNo() {
		return attendanceNo;
	}
	public void setAttendanceNo(int attendanceNo) {
		this.attendanceNo = attendanceNo;
	}
	public Date getStartWork() {
		return startWork;
	}
	public void setStartWork(Date startWork) {
		this.startWork = startWork;
	}
	public Date getEndWork() {
		return endWork;
	}
	public void setEndWork(Date endWork) {
		this.endWork = endWork;
	}
	public int getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(int employeeNo) {
		this.employeeNo = employeeNo;
	}

}
