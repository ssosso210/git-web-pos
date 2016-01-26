package com.dobbypos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/management")
public class ManagementController {

	@RequestMapping("/management")
	public String manageMain() {		
		
	
		return "management/management"; // /WEB-INF/views/ + index + .jsp
	}
	
	@RequestMapping("/managementAdmin")
	public String manageAdmin() {		
		
		String type = "admin";
	//7단계
		
		
		return "management/managementAdmin"; // /WEB-INF/views/ + index + .jsp
	}
	
}
