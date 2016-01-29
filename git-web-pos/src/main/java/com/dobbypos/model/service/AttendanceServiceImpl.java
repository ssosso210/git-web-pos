package com.dobbypos.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.AttendanceDao;

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


	

}
