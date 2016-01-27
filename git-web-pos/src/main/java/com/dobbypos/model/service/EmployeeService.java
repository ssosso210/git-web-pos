package com.dobbypos.model.service;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Hq;

public interface EmployeeService {


	void insertEmployee(Employee employee);


	Employee searchEmployeeByLogin(String hqCode, String storeCode, String employeeId, String passwd);



	

}