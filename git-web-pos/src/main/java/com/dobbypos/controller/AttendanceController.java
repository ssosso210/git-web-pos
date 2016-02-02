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
		
		for (Employee employee2 : employees) {
			System.out.println(employee2.toString());
			if (employee2.getAttendanceone() != null) {
				System.out.println(employee2.getAttendanceone().toString());
			}
		}
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
	public String attendancecheck(HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		String employeeNo = req.getParameter("employeeNo");
		int employeeNum = Integer.parseInt(employeeNo);
		String attendType = req.getParameter("attendType");
		String attenNo = req.getParameter("attendanceNo");
		int attendanceNo = Integer.parseInt(attenNo);
		
		System.out.println("attendcheck.action ------ employeeNo="+employeeNo+ ", attendType="+attendType+", attendanceNo="+attendanceNo );
		
		int returnValue = 0;
		String returnMsg = "";
		String buttonMsg = "";
		//출근 일 경우 값을 insert
		if(attendType.equals("towork")){ // 출근 
			returnValue = attendanceService.setAttendToWork(employeeNum); 
			if(returnValue == 0){
				returnMsg = "출근하였습니다. ";
			}
			buttonMsg = "출근 : " +Util.getTodayDateTime();
		}else if(attendType.equals("offwork")){ // 퇴근
			if(attendanceNo < 1){
				returnMsg = "먼저 출근을 하세요. ";
			}else{
				returnValue = attendanceService.setAttendOffWork(attendanceNo, employeeNum);
				if(returnValue < 1){
					returnMsg = "퇴근을 하거나 출근하지 않았습니다.";
				}
				buttonMsg = "퇴근 : "+Util.getTodayDateTime();

				
			}
		}
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
//		Gson gson = new Gson();
		HashMap<String, String> map = new HashMap<>();


		map.put("attendType", attendType);
		map.put("buttonMsg", buttonMsg);
		map.put("employeeNo", employeeNo);
		map.put("returnMsg", returnMsg);
		map.put("returnValue", returnValue+ "");
		
		System.out.println("attendType="+ attendType+ ", buttonMsg="+ buttonMsg+", employeeNo="+ employeeNo+", returnMsg="+ returnMsg+", returnValue="+ returnValue);
		
		
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