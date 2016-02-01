package com.dobbypos.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.service.AttendanceService;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {
	
	@Autowired
	@Qualifier("attendanceService")
	private AttendanceService attendanceService;
	
	private String urlstr = "attendance/";
	

	/**
	 * 출석을 위해서 헤딩 store의 직원리스트를 불러옴
	 * @return
	 */
	@RequestMapping(value = "main.action", method = RequestMethod.GET)
	public String attendancemain(HttpSession session, HttpServletRequest req) {
		Employee employee = (Employee)session.getAttribute("loginuser");
		
		List<Employee> employees = attendanceService.getEmployeesByStoreCodeAndUser(employee.getStoreCode());
		
		
		req.setAttribute("employees", employees);
	
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return urlstr+"main";
	}	
	
	
	/**
	 * 출석을 위해서 헤딩 store의 직원리스트를 불러옴
	 * @return
	 */
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String attendancelist(HttpSession session, HttpServletRequest req) {
		Employee employee = (Employee)session.getAttribute("loginuser");
		System.out.println("attendancelist list");
		List<Employee> employees = attendanceService.getAttendanceAllByStoreCode(employee.getStoreCode());
		for (Employee employee2 : employees) {
			System.out.println(employee2.toString());
			for (Attendance attendance2 : employee2.getAttendances()) {
				System.out.println(attendance2.toString());
			}
		}
		
		req.setAttribute("employees", employees);
	
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return urlstr+"list";
	}	
	
	
	

}