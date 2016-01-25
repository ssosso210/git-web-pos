package com.dobbypos.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.mapper.EmployeeMapper;
import com.dobbypos.model.dto.Employee;

@Repository("employeeDao")
public class MySqlEmployeeDao implements EmployeeDao {

	@Autowired
	@Qualifier("employeeMapper")
	private EmployeeMapper employeeMapper;


	@Override
	public void insertEmployee(Employee employee) {
		employeeMapper.insertEmployee(employee);
		
	}

}











