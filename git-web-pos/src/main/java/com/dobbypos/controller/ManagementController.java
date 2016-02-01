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
import com.dobbypos.model.dao.StockDao;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Stock;
import com.dobbypos.model.service.EmployeeService;
import com.dobbypos.model.service.StockService;

@Controller
@RequestMapping("/management")
public class ManagementController {

	/////////////////////////////////////////////////////////////
	// 메인에서 관리로 이동

	// 관리를 눌렀을 경우 이동
	@RequestMapping(value = "/managementhome", method = RequestMethod.GET)
	public String SettingMenu1() {

		return "management/managementhome";
	}

	/////////////////////////////////////////////////////////////////////////////////////
	// 인건비 관리

	@Resource(name = "employeeDao")
	private EmployeeDao employeeDao;

	@Autowired()
	@Qualifier("employeeService")
	private EmployeeService employeeService;

	// 관리에서 인건비 관리(salarylist.jsp)로 이동
	@RequestMapping(value = "/salarylist", method = RequestMethod.GET)
	public String menu(Model model) {

		List<Employee> employees = employeeService.getAllEmployees();
		// System.out.println("Controller");
		model.addAttribute("employees", employees);

		return "management/salarylist";
	}

	// 인건비 관리에서 직원 정보보기(employeeinfo.jsp)로 이동
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String findByName(@RequestParam("employeeNo") int employeeNo,
			@ModelAttribute("employee") Employee employee) {

		// Member member2 = memberDao.getMemberById(memberId);
		Employee employee2 = employeeService.searchEmployeeByNo(employeeNo);
		if (employee2 != null) {
			employee.setEmployeeNo(employee2.getEmployeeNo());
			employee.setEmployeeName(employee2.getEmployeeName());
			employee.setEmployeeId(employee2.getEmployeeId());
			employee.setPasswd(employee2.getPasswd());
			employee.setPhoneNo(employee2.getPhoneNo());
			employee.setStoreCode(employee2.getStoreCode());
			employee.setWage(employee2.getWage());
			employee.setEmployeeType(employee2.getEmployeeType());
			return "management/employeeinfo";
		} else {
			return "redirect:/management/salarylist";
		}

	}

	//////////////////////////////////////////////////////////////////////////////////////
	// 재고관리

	@Autowired()
	@Qualifier("stockService")
	private StockService stockService;

	@RequestMapping(value = "/stocklist")
	public String stocklist(Model model) {

		List<Stock> stocks = stockService.getAllStocks();
		System.out.println("Controller");
		model.addAttribute("stocks", stocks);

		return "management/stocklist";
	}
}
