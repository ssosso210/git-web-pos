package com.dobbypos.model.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.AttendanceSearch;
import com.dobbypos.model.mapper.AttendanceMapper;

@Repository("attendanceDao")
public class MySqlAttendanceDao implements AttendanceDao {
	

	
	@Autowired
	@Qualifier("attendanceMapper")
	private AttendanceMapper attendanceMapper;

	
	@Override
	public List<Attendance> selectAttendanceAllByStoreCode(String storeCode) {
		// TODO Auto-generated method stub
		return attendanceMapper.selectAttendanceAllByStoreCode(storeCode);
	}


	@Override
	public int insertAttendanceByEmployeeNo(int employeeNum) {
		// TODO Auto-generated method stub
		return attendanceMapper.insertAttendanceByEmployeeNo(employeeNum);
	}


	@Override
	public Attendance selectAttendancByEmployeeNoDate(int employeeNum, String dateStr) {
				
		AttendanceSearch atSearch = new AttendanceSearch();
		atSearch.setEmployeeNo(employeeNum);
		atSearch.setDateStr(dateStr);
		
		return attendanceMapper.selectAttendancByEmployeeNoDate(atSearch);
	}


	@Override
	public int updateAttendanceEndWorkByAttendanceNo(int attendanceNo) {
		// TODO Auto-generated method stub
		return attendanceMapper.updateAttendanceEndWorkByAttendanceNo(attendanceNo);
	}


	@Override
	public List<Attendance> selectAttendanceByStoreCodeAndMonth(String storeCode, String monthDateStr) {
		HashMap<String, String> params = new HashMap<>();
		params.put("storeCode", storeCode);
		params.put("monthDateStr", monthDateStr);
		
		return attendanceMapper.selectAttendanceByStoreCodeAndMonth( params);
	}



	
		
}
