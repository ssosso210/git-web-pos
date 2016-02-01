package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.AttendanceDao;
import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.Employee;

@Service("attendanceService")
public class AttendanceServiceImpl implements AttendanceService {

	public void init() {
		System.out.println("init method is called");
	}

	public void destroy() {
		System.out.println("destroy method is called");
	}

	@Autowired
	@Qualifier("attendanceDao")
	private AttendanceDao attendanceDao;
	
	@Autowired
	@Qualifier("employeeDao")
	private EmployeeDao employeeDao;
	


	@Override
	public List<Employee> getEmployeesByStoreCodeAndUser(String storeCode) {
		// TODO Auto-generated method stub
		return employeeDao.selectEmployeesByStoreCodeAndUser(storeCode);
	}

	@Override
	public List<Attendance> getAttendanceAllByStoreCode(String storeCode) {
		// TODO Auto-generated method stub
		return attendanceDao.selectAttendanceAllByStoreCode(storeCode);
	}


	

}
