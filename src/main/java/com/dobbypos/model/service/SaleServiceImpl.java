package com.dobbypos.model.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.SaleDao;
import com.dobbypos.model.dto.Menu;


@Service("saleService")
public class SaleServiceImpl implements SaleService {

	public void init() {
		System.out.println("init method is called");
	}
	
	public void destroy() {
		System.out.println("destroy method is called");
	}
	

	@Autowired
	@Qualifier("saleDao")
	private SaleDao saleDao;


	@Override
	public List<Menu> getAllMenus() {
		
		return saleDao.getList();
	}


	

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

//	@Override
//	public void insertEmployee(Employee employee) {
//		employeeDao.insertEmployee(employee);
//		
//	}
	
	
}
