package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Hq;

public interface EmployeeService {
	
	List<Employee> getAllEmployees();

	Employee searchEmployeeByNo(String no);

	void insertEmployee(Employee employee);


	Employee searchEmployeeByLogin(String hqCode, String storeCode, String employeeId, String passwd);



	

}