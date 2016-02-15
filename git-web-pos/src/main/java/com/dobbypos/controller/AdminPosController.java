package com.dobbypos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/adminpos")
public class AdminPosController {
	
	private String urlstr = "adminpos/";
	

	@RequestMapping(value = "homechart.action", method = RequestMethod.GET)
	public String mainchart(HttpSession session, HttpServletRequest req) {
		
		
		
		
		return urlstr+"homechart";
	}	
	
	
	
	
	
}





