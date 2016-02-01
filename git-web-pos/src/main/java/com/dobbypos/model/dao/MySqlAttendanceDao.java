package com.dobbypos.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.mapper.AttendanceMapper;

@Repository("attendanceDao")
public class MySqlAttendanceDao implements AttendanceDao {
	

	
	@Autowired
	@Qualifier("attendanceMapper")
	private AttendanceMapper attendanceMapper;

	
	@Override
	public List<Employee> selectAttendanceAllByStoreCode(String storeCode) {
		// TODO Auto-generated method stub
		return attendanceMapper.selectAttendanceAllByStoreCode(storeCode);
	}

	
		
}
