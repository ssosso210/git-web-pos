package com.dobbypos.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.mapper.EmployeeMapper;
import com.mysql.fabric.xmlrpc.base.Member;

@Repository("employeeDao")
public class MySqlEmployeeDao implements EmployeeDao {
	

	
//	@Autowired
//	@Qualifier("sqlSessionTemplate")
//	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("employeeMapper")
	private EmployeeMapper employeeMapper;

	@Override
	public Employee selectEmployeeByCodeAndIdAndPw(String hqCode, String storeCode, String employeeId, String passwd) {
		HashMap<String, String> params = new HashMap<>();
		params.put("hqCode", hqCode);
		params.put("storeCode", storeCode);
		params.put("employeeId", employeeId);
		params.put("passwd", passwd);		
		
		Employee employee = employeeMapper.selectEmployeeByCodeAndIdAndPw(params);
	
		return employee;
	}
	
	@Override
	public void insertEmployee(Employee employee) {
		employeeMapper.insertEmployee(employee);
	}

	@Override
	public List<Employee> getList() {
		List<Employee> employees = employeeMapper.selectEmployees();
		System.out.println("DaoImpl");
		return employees;
	}
	
	public Employee getEmployeeByNo(int employeeNo) {
		
		Employee employee = employeeMapper.selectEmployeeByNo(employeeNo);
			
		return employee;
	}
		
}
