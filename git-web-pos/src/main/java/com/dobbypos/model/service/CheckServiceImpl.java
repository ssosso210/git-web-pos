package com.dobbypos.model.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.CheckDao;
import com.dobbypos.model.dto.Balance;


@Service("checkService")
public class CheckServiceImpl implements CheckService {
	
	@Autowired
	@Qualifier("checkDao")
	private CheckDao checkDao;

	public void init() {
		System.out.println("init method is called");
	}
	
	public void destroy() {
		System.out.println("destroy method is called");
	}

	@Override
	public List<Balance> getBalances() {
		System.out.println("ServiceImpl");
		return checkDao.getBalances();
	}
	
//	public List<Balance> getBalances() {
//		System.out.println("getBalances");
//		return checkDao.getBalances();
//	}
	

	/*@Autowired
	@Qualifier("employeeDao")
	private EmployeeDao employeeDao;*/

//	@Override
//	public Employee searchEmployeeByLogin(String hqCode, String storeCode, String employeeId, String passwd) {
//		Employee employee = null;
//		// store table에서 hqCode, storeCode를 조회  -> 없으면  null return 
//		
//		// employee table에서 storeCode, employeeId, passwd를  조회 
//
//		 employee = employeeDao.selectEmployeeByCodeAndIdAndPw( hqCode,  storeCode,  employeeId,  passwd);
//		
//		return employee;
//	}

}
