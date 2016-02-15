package com.dobbypos.model.dao;


import java.util.List;

import com.dobbypos.model.dto.Employee;
import com.mysql.fabric.xmlrpc.base.Member;

public interface EmployeeDao {

	Employee selectEmployeeByCodeAndIdAndPw(String hqCode, String storeCode, String employeeId, String passwd);

	void insertEmployee(Employee employee);

	List<Employee> getList();
	








}