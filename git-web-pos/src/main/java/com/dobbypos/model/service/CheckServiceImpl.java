package com.dobbypos.model.service;



import org.springframework.stereotype.Service;


@Service("checkService")
public class CheckServiceImpl implements CheckService {

	public void init() {
		System.out.println("init method is called");
	}
	
	public void destroy() {
		System.out.println("destroy method is called");
	}
	

	
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
