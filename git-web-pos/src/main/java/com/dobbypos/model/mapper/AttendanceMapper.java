package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.AttendanceSearch;

public interface AttendanceMapper {

	List<Attendance> selectAttendanceAllByStoreCode(String storeCode);

	int insertAttendanceByEmployeeNo(int employeeNum);


	Attendance selectAttendancByEmployeeNoDate(AttendanceSearch atSearch);

	int updateAttendanceEndWorkByAttendanceNo(int attendanceNo);

	List<Attendance> selectAttendanceByStoreCodeAndMonth(HashMap<String, String> params);

	List<Attendance> selectAttendanceAllByStoreCodeAndDate(HashMap<String, String> params);

	List<Attendance> selectAttendanceByEmployeeAndMonth(AttendanceSearch attendanceSearch);




}
