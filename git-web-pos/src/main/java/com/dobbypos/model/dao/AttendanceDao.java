package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Employee;

public interface AttendanceDao {

	List<Employee> selectAttendanceAllByStoreCode(String storeCode);

	





}