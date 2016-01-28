package com.dobbypos.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String findById(
		@RequestParam("employeename") String employeeName, @ModelAttribute("employee") Employee employee) {
		
		//Member member2 = memberDao.getMemberById(memberId);
		Employee employee2 = employeeService.searchByEmployeeName(employeeName);
		if (employee2 != null) {
			employee.setEmployeeNo(employee2.getMemberId());
			employee.setEmployeeName(employee2.getEmail());
			employee.setEmployeeId(employee2.getUserType());
			employee.setPasswd(employee2.isActive());
			employee.setPhoneNo(employee2.getUserType());			
			employee.setWage(employee2.getRegDate());
			employee.setEmployeeType(employee2.getRegDate());
			return "salarylist/employeeinfo";
		} else {
			return "redirect:/management/salarylist";
		}
		
	}

}
