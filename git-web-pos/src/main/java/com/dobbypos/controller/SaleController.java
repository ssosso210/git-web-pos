package com.dobbypos.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.service.EmployeeService;
import com.dobbypos.model.service.SaleService;
import com.dobbypos.model.service.TableService;

@Controller
@RequestMapping("/sale")
public class SaleController {
	

	@Autowired
	@Qualifier("saleService")
	private SaleService saleService;
	
	@Autowired
	@Qualifier("tableService")
	private TableService tableService;
	
	@RequestMapping(value = "/salehome_test", method = RequestMethod.GET)
	public String SaleHome(HttpSession session, HttpServletRequest req, Model model) {
		
//		List<Menu> menus = saleService.getSelectMenus();
//	    model.addAttribute("menus", menus);
//		
//		System.out.println(" [ 선택한 메뉴가져왔어 ]  ");
//			
		//int foodCode = (req.getParameter("foodCode"))

		
		
		return "sale/salehome_test"; 
	}
	
	@RequestMapping(value = "/orderhome_test", method = RequestMethod.GET)
	public String OrderHome(HttpSession session, HttpServletRequest req, Model model) {
		
//		List<Menu> menus = saleService.getSelectMenus();
//	    model.addAttribute("menus", menus);
//		
		System.out.println(" [ 주문해야해 ]  ");
//			
		//int foodCode = (req.getParameter("foodCode"))

		
		
		return "sale/orderhome_test"; 
	}
	
	
	/////////////////////////////////////
	@RequestMapping(value = "/select", method = RequestMethod.POST)
	public String SelectMenu(HttpSession session, HttpServletRequest req, Model model) {
		
//		;
//		int foodCode = 1;
//		List<Menu> menus = saleService.getSelectMenus(foodCode);
//	    model.addAttribute("menus", menus);
//		
		System.out.println(" [ 선택한 메뉴가져왔어 ]  ");
		
		String foodCode = "1";
		List<Menu> menus = saleService.getSelectMenus(foodCode);
	    model.addAttribute("menus", menus);
		
		return "redirect:salehome_test"; 
	}
	
	
	
	
	
	
	@RequestMapping(value = "/paymentform", method = RequestMethod.GET)
	public String PaymentForm() {
		return "sale/paymentform"; 
	}	
	
	@RequestMapping(value = "/orderform", method = RequestMethod.GET)
	public String SelectAllMenu(Model model) {
		
		List<Menu> menus = saleService.getAllMenus();
	    model.addAttribute("menus", menus);
		
		System.out.println(" [ 모든 메뉴가져왔어 ]  ");
		return "sale/orderform";
	}
	
	//테이블디비에추가(박은영)
	@RequestMapping(value="/newTable", method=RequestMethod.GET)
	public String newTable(String storeCode){
		System.out.println(" storeCode 는 :"+storeCode);
		return null;
	}
	
	
	
	
	
}
