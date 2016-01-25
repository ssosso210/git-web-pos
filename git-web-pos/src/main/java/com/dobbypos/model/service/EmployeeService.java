package com.dobbypos.model.service;

import com.dobbypos.model.dto.Employee;

public interface EmployeeService {

<<<<<<< HEAD
	void registerMember(Employee employee);

/*	List<Member> getAllMembers();

	Member searchMemberById(String id);

	Member searchMemberByIdAndPasswd(String id, String passwd);*/
=======
	Employee searchEmployeeByLogin(String hqCode, String storeCode, String employeeId, String passwd);

	
>>>>>>> branch 'master' of https://github.com/ssosso210/git-web-pos.git

}