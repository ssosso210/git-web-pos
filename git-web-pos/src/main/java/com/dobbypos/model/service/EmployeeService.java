package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Employee;

public interface EmployeeService {
	
	List<Employee> getAllEmployees();	
	
	Employee searchEmployeeByNo(int employeeNo);

	void insertEmployee(Employee employee);	

	Employee searchEmployeeByLogin(String hqCode, String storeCode, String employeeId, String passwd);

	



	

}