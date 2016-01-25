package com.dobbypos.model.service;

import com.dobbypos.model.dto.Employee;

public interface EmployeeService {

	Employee searchEmployeeByLogin(String hqCode, String storeCode, String employeeId, String passwd);

	

}