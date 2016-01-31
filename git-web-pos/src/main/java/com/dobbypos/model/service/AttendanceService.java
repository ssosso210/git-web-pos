package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Employee;

public interface AttendanceService {

	List<Employee> getEmployeesByStoreCode(String storeCode);

}
