package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.Employee;

public interface EmployeeMapper {

	Employee selectEmployeeByCodeAndIdAndPw(HashMap<String, String> params);

	void insertEmployee(Employee employee);
	
	List<Employee> selectEmployees();
	
	Employee selectEmployeeByNo(int employeeNo);

	List<Employee> selectEmployeesByStoreCodeAndUser(String storeCode);

	
	
	

}
