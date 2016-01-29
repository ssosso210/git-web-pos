package com.dobbypos.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.mapper.AttendanceMapper;

@Repository("attendanceDao")
public class MySqlAttendanceDao implements AttendanceDao {
	

	
	@Autowired
	@Qualifier("attendanceMapper")
	private AttendanceMapper attendanceMapper;

	
		
}
