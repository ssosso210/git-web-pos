package com.dobbypos.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.service.CustomerService;
import com.dobbypos.model.service.EmployeeService;
import com.dobbypos.model.service.HqService;
import com.dobbypos.model.service.StoreService;

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
	
	@Autowired
	@Qualifier("storeService")
	private StoreService storeService;
	
	

	

	@RequestMapping(value = "homechart.action", method = RequestMethod.GET)
	public String mainchart(HttpServletRequest req,  Model model) {
		
		String path = req.getRequestURI();
		Date date = new Date();
		Employee employee = (Employee)req.getSession().getAttribute("loginuser");
		Hq hq = (Hq) storeService.getHqByStoreCode(employee.getStoreCode());
		int revenue = hqService.getCurrentMonthRevenue(hq.getHqCode());
		int lastRevenue1 = hqService.getLastMonthRevenue(hq.getHqCode());
		int lastRevenue2 = hqService.getLastMonth2Revenue(hq.getHqCode());
		int lastRevenue3 = hqService.getLastMonth3Revenue(hq.getHqCode());
		int lastRevenue4 = hqService.getLastMonth4Revenue(hq.getHqCode());
		int lastRevenue5 = hqService.getLastMonth5Revenue(hq.getHqCode());
		int lastRevenue6 = hqService.getLastMonth6Revenue(hq.getHqCode());
		int lastRevenue7 = hqService.getLastMonth7Revenue(hq.getHqCode());
		int lastRevenue8 = hqService.getLastMonth8Revenue(hq.getHqCode());
		int lastRevenue9 = hqService.getLastMonth9Revenue(hq.getHqCode());
		int lastRevenue10 = hqService.getLastMont10hRevenue(hq.getHqCode());
		int lastRevenue11 = hqService.getLastMonth11Revenue(hq.getHqCode());
		
		int currentPurchases = hqService.getCurrentMonthPurchases(hq.getHqCode());
		int lastMonthPurchases1 = hqService.getLastMonth1Purchases(hq.getHqCode());
		int lastMonthPurchases2 = hqService.getLastMonth2Purchases(hq.getHqCode());
		int lastMonthPurchases3 = hqService.getLastMonth3Purchases(hq.getHqCode());
		int lastMonthPurchases4 = hqService.getLastMonth4Purchases(hq.getHqCode());
		int lastMonthPurchases5 = hqService.getLastMonth5Purchases(hq.getHqCode());
		int lastMonthPurchases6 = hqService.getLastMonth6Purchases(hq.getHqCode());
		int lastMonthPurchases7 = hqService.getLastMonth7Purchases(hq.getHqCode());
		int lastMonthPurchases8 = hqService.getLastMonth8Purchases(hq.getHqCode());
		int lastMonthPurchases9 = hqService.getLastMonth9Purchases(hq.getHqCode());
		int lastMonthPurchases10 = hqService.getLastMonth10Purchases(hq.getHqCode());
		int lastMonthPurchases11 = hqService.getLastMonth11Purchases(hq.getHqCode());		
		
		int lastYearRevenues = hqService.getLastYearRevenues(hq.getHqCode());
		int lastYearPurchases = hqService.getLastYearPurchases(hq.getHqCode());
		
		int lastYearProfits = lastYearRevenues - lastYearPurchases;
		
		int totalCustomers = customerService.countTotalCustomers(hq.getHqCode());
		model.addAttribute("totalCustomers", totalCustomers);
		model.addAttribute("path", path);
		model.addAttribute("date", date);
		model.addAttribute("revenue", revenue);
		model.addAttribute("lastRevenue", lastRevenue1);
		model.addAttribute("lastRevenue2", lastRevenue2);
		model.addAttribute("lastRevenue3", lastRevenue3);
		model.addAttribute("lastRevenue4", lastRevenue4);
		model.addAttribute("lastRevenue5", lastRevenue5);
		model.addAttribute("lastRevenue6", lastRevenue6);
		model.addAttribute("lastRevenue7", lastRevenue7);
		model.addAttribute("lastRevenue8", lastRevenue8);
		model.addAttribute("lastRevenue9", lastRevenue9);
		model.addAttribute("lastRevenue10", lastRevenue10);
		model.addAttribute("lastRevenue11", lastRevenue11);
		model.addAttribute("currentPurchases", currentPurchases);
		model.addAttribute("lastMonthPurchases1", lastMonthPurchases1);
		model.addAttribute("lastMonthPurchases2", lastMonthPurchases2);
		model.addAttribute("lastMonthPurchases3", lastMonthPurchases3);
		model.addAttribute("lastMonthPurchases4", lastMonthPurchases4);
		model.addAttribute("lastMonthPurchases5", lastMonthPurchases5);
		model.addAttribute("lastMonthPurchases6", lastMonthPurchases6);
		model.addAttribute("lastMonthPurchases7", lastMonthPurchases7);
		model.addAttribute("lastMonthPurchases8", lastMonthPurchases8);
		model.addAttribute("lastMonthPurchases9", lastMonthPurchases9);
		model.addAttribute("lastMonthPurchases10", lastMonthPurchases10);
		model.addAttribute("lastMonthPurchases11", lastMonthPurchases11);
		model.addAttribute("lastYearProfits", lastYearProfits);
		
		return urlstr+"homechart";
	}	
	
	
	
	
	
}





