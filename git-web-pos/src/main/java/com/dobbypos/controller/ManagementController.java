package com.dobbypos.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.service.EmployeeService;

@Controller
@RequestMapping("/management")
public class ManagementController {
	
	@Resource(name = "employeeDao")
	private EmployeeDao employeeDao;
	
	@Autowired()
	@Qualifier("employeeService")
	private EmployeeService employeeService;
	
	
	
	@RequestMapping(value = "/managementhome.action", method = RequestMethod.GET)
	public String menu() {	
		
		List<Employee> employees = employeeService.getAllEmployees();
//		Model.addAttribute("employees", employees);//HttpServletRequest.setAttribute("members", members);		
		
		return "management/managementhome"; 
	}
	
	@RequestMapping(value = "/salarymanagement.action", method = RequestMethod.GET)
	public String SettingMenu() {
		
		return "management/salarylist"; 
	}
	
}
