package com.dobbypos.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.common.Util;
import com.dobbypos.model.service.CustomerService;
import com.dobbypos.model.service.HqService;

@Controller
@RequestMapping("/adminpos")
public class AdminPosController {
	
	private String urlstr = "adminpos/";
	@Autowired
	@Qualifier("hqService")
	private HqService hqService;
	
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService;
	

	@RequestMapping(value = "homechart.action", method = RequestMethod.GET)
	public String mainchart(HttpSession session, HttpServletRequest req) {
		
		String path = req.getRequestURI();
		Date date = new Date();
		String date2 = Util.getTodayMonth();
		String date3 = date2.substring(5);
		System.out.println(date3);
		int revenue = hqService.getCurrentMonthRevenue(date2);
		int totalCustomers = customerService.countTotalCustomers();
		req.setAttribute("totalCustomers", totalCustomers);
		req.setAttribute("path", path);
		req.setAttribute("date", date);
		req.setAttribute("revenue", revenue);
		
		
		return urlstr+"homechart";
	}	
	
	
	
	
	
}





