package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.AttendanceSearch;
import com.dobbypos.model.dto.Employee;

public interface AttendanceMapper {

	List<Attendance> selectAttendanceAllByStoreCode(String storeCode);

	int insertAttendanceByEmployeeNo(int employeeNum);


	Attendance selectAttendancByEmployeeNoDate(AttendanceSearch atSearch);

	int updateAttendanceEndWorkByAttendanceNo(int attendanceNo);


}
