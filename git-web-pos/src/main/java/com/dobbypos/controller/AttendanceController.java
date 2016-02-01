package com.dobbypos.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dobbypos.common.Util;
import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.service.AttendanceService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
	 * 출석, 조퇴, 퇴근 실행 
	 * @return
	 */
	@RequestMapping(value = "attendcheck.action", method = RequestMethod.POST)
	@ResponseBody
	public String attendancecheck(HttpSession session, HttpServletRequest req,HttpServletResponse res) {
		String employeeNo = req.getParameter("employeeNo");
		String attendType = req.getParameter("attendType");
		
		System.out.println("attendcheck.action ------ employeeNo="+employeeNo+ " "+ Util.getHourFromAmPm());
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
//		Gson gson = new Gson();
		HashMap<String, String> map = new HashMap<>();
		map.put("date", Util.getHourFromAmPm()+"한글");
		map.put("attendType", attendType);
		map.put("buttonVal", "출근 : _________1_____");
		map.put("employeeNo", employeeNo);
		
		String result = gson.toJson(map);
		
		res.setContentType("application/json;charset=utf-8");
		return result;

	}	
	
	
	
	/**
	 * 출석을 위해서 헤딩 store의 직원리스트를 불러옴
	 * @return
	 */
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String attendancelist(HttpSession session, HttpServletRequest req) {
		Employee employee = (Employee)session.getAttribute("loginuser");
		System.out.println("attendancelist list");
		List<Attendance> attendances = attendanceService.getAttendanceAllByStoreCode(employee.getStoreCode());
		/*for (Employee employee2 : employees) {
			System.out.println(employee2.toString());
			for (Attendance attendance2 : employee2.getAttendances()) {
				System.out.println(attendance2.toString());
			}
		}*/
		for (Attendance attendance2 : attendances) {
			System.out.println(attendance2.toString());
			System.out.println(attendance2.getStartWork().toString());
		}
		
		
		
		req.setAttribute("attendances", attendances);
	
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return urlstr+"list";
	}	
	
	
	

}