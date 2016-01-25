package com.dobbypos.model.dao;

<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Employee;



public interface EmployeeDao {

	void insertEmployee(Employee employee);

	/*List<Member> getList();

	Member getMemberById(String id);

	Member getMemberByIdAndPasswd(String id, String passwd);*/
=======
import com.dobbypos.model.dto.Employee;

public interface EmployeeDao {

	Employee selectEmployeeByCodeAndIdAndPw(String hqCode, String storeCode, String employeeId, String passwd);

	





>>>>>>> branch 'master' of https://github.com/ssosso210/git-web-pos.git

}