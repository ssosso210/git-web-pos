package com.dobbypos.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dto.Employee;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	@Qualifier("employeeDao")
	private EmployeeDao employeeDao;

	@Override
	public void registerMember(Employee employee) {
		employeeDao.insertEmployee(employee);
		
	}
}
