package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.Employee;

public interface AttendanceService {

	List<Employee> getEmployeesByStoreCodeAndUser(String storeCode);

	List<Attendance> getAttendanceAllByStoreCode(String storeCode);

	int setAttendToWork(int employeeNum);

	int setAttendOffWork(int attendanceNo, int employeeNum);

	Attendance selectAttendancByEmployeeNoDate(int employeeNum, String todayDate);

	List<Attendance> getAttendanceByStoreCodeAndMonth(String storeCode, String monthDateStr);

}
