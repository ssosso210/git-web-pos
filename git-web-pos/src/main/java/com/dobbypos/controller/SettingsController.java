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
		System.out.println(employee.toString());
		employeeService.insertEmployee(employee);
		System.out.println("employee register 성공  ");
		return "redirect:/settings/settinghome.action";
	}
	
	@RequestMapping(value="/tableregisterform.action", method=RequestMethod.GET)
	public String TableRegisterForm(){
		return "settings/tableregisterform";
	}
	@RequestMapping(value="/tableregister.action", method=RequestMethod.POST)
	public String TableRegister(){
		System.out.println("table register 성공 ");
		return "redirect:/settings/settinghome.action";
	}
	
	@RequestMapping(value="/menuregisterform.action", method=RequestMethod.GET)
	public String MenuRegisterForm(){
		return "settings/menuregisterform";
	}
	@RequestMapping(value="/tableregister.action", method=RequestMethod.POST)
	public String MenuRegister(){
		System.out.println("menu register 성공 ");
		return "redirect:/settings/settinghome.action";
	}
	
}





