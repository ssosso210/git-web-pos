package com.dobbypos.model.mapper;

import java.util.HashMap;

import com.dobbypos.model.dto.Employee;

public interface EmployeeMapper {

	Employee selectEmployeeByCodeAndIdAndPw(HashMap<String, String> params);

	void insertEmployee(Employee employee);

	
	
	

}
