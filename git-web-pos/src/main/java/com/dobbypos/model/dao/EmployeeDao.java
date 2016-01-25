package com.dobbypos.model.dao;

import com.dobbypos.model.dto.Employee;

public interface EmployeeDao {

	Employee selectEmployeeByCodeAndIdAndPw(String hqCode, String storeCode, String employeeId, String passwd);

	






}