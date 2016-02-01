package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Attendance;

public interface AttendanceDao {

	List<Attendance> selectAttendanceAllByStoreCode(String storeCode);

	int insertAttendanceByEmployeeNo(int employeeNum);

	





}