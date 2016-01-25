<<<<<<< HEAD
﻿package com.dobbypos.model.dao;

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
=======
package com.dobbypos.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.mapper.EmployeeMapper;

@Repository("employeeDao")
public class MySqlEmployeeDao implements EmployeeDao {
	

	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("employeeMapper")
	private EmployeeMapper employeeMapper;

	@Override
	public Employee selectEmployeeByCodeAndIdAndPw(String hqCode, String storeCode, String employeeId, String passwd) {
		HashMap<String, String> params = new HashMap<>();
		params.put("storeCode", storeCode);
		params.put("employeeId", employeeId);
		params.put("passwd", passwd);
		
		
		Employee employee = employeeMapper.selectEmployeeByCodeAndIdAndPw(params);
		
		
		
		return employee;
	}

	

	


	
>>>>>>> branch 'master' of https://github.com/ssosso210/git-web-pos.git

}











