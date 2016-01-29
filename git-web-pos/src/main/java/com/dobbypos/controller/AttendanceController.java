package com.dobbypos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.service.AttendanceService;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {
	
	@Autowired
	@Qualifier("attendanceService")
	private AttendanceService attendanceService;
	

	/**
	 * 출석을 위해서 헤딩 store의 직원리스트를 불러옴
	 * @return
	 */
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String loginForm() {
		
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return "index";
	}	
	
	
	

}