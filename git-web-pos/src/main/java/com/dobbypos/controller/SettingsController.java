package com.dobbypos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.service.EmployeeService;

@Controller
@RequestMapping("/settings")
public class SettingsController {
	
//	@Autowired
//	@Qualifier("employeeDao")
//	private EmployeeDao employeeDao; 

	@Autowired
	@Qualifier("employeeService")
	private EmployeeService employeeService;
	
	@RequestMapping(value = "/settinghome.action", method = RequestMethod.GET)
	public String SettingMenu() {
		
		return "settings/settinghome"; 
	}
	
	
	@RequestMapping(value = "/employeeregisterform.action", method = RequestMethod.GET)
	public String EmployeeRegisterForm() {
		return "settings/employeeregisterform"; 
	}	
	
	@RequestMapping(value = "/employeeregister.action", method = RequestMethod.POST)
	public String EmployeeRegister(Employee employee) {
	//	employee.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-1"));
		employeeService.registerMember(employee);
		return "redirect:/settings/settinghome.action";
		
	}
	
	/*//employeer 등록 취소시
	@RequestMapping(value = "/list.action", method = RequestMethod.GET)
	public String EmployeeList() {
		return "settings/employeelist"; 
	}*/
	
	
	
}





