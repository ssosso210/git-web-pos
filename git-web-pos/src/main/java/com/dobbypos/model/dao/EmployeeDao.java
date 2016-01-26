package com.dobbypos.model.dao;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Employee;





public interface EmployeeDao {

	Employee selectEmployeeByCodeAndIdAndPw(String hqCode, String storeCode, String employeeId, String passwd);

	void insertEmployee(Employee employee);

	







}