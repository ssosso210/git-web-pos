package com.dobbypos.controller;

<<<<<<< HEAD
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
	
=======
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

	// 관리를 눌렀을 경우 이동
	@RequestMapping(value = "/managementhome", method = RequestMethod.GET)
	public String SettingMenu1() {

		return "management/managementhome";
	}

	// 관리에서 인권비 관리로 이동
	@RequestMapping(value = "/salarylist", method = RequestMethod.GET)
	public String menu(Model model) {

		List<Employee> employees = employeeService.getAllEmployees();
		System.out.println("Controller");
		model.addAttribute("employees", employees);

		return "management/salarylist";
	}

>>>>>>> branch 'master' of https://github.com/ssosso210/git-web-pos.git
}
