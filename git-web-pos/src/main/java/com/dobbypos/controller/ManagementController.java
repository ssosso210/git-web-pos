package com.dobbypos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.service.EmployeeService;

@Controller
@RequestMapping("/management")
public class ManagementController {
	
	@RequestMapping(value = "/managementhome.action", method = RequestMethod.GET)
	public String menu() {
		
		return "management/managementhome"; 
	}
	
	@RequestMapping(value = "/salarymanagement.action", method = RequestMethod.GET)
	public String SettingMenu() {
		
		return "management/salarylist"; 
	}
	
}
