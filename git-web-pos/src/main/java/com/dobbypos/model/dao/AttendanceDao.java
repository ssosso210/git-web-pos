package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.Employee;

public interface AttendanceDao {

	List<Attendance> selectAttendanceAllByStoreCode(String storeCode);

	int insertAttendanceByEmployeeNo(int employeeNum);

	Attendance selectAttendancByEmployeeNoDate(int employeeNum, String dateStr);

	int updateAttendanceEndWorkByAttendanceNo(int attendanceNo);

	List<Attendance> selectAttendanceByStoreCodeAndMonth(String storeCode, String monthDateStr);

	List<Attendance> selectAttendanceAllByStoreCodeAndDate(String storeCode, String startdayStr, String endtodayStr);

	List<Attendance> selectAttendanceByEmployeeAndMonth(int employeeNo, String todaymonth);



	





}