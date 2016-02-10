package com.dobbypos.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;
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
	
		return "sale/salehome_test"; 
	}

	
	@RequestMapping(value = "/salehome.action", method = RequestMethod.GET)
	public String SettingMenu(String storeCode1,  Model model) {
		
		model.addAttribute("storeCode1", storeCode1);
	
		Integer recentableNo=tableService.selectRecentTableNo(storeCode1);
		model.addAttribute("recentno", recentableNo);
		System.out.println("recentno"+recentableNo);
		return "sale/salehome"; 
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
	

	//테이블디비에  storeCode 로 최근 tableNo select  (박은영)
	@RequestMapping(value="/newTable.action", method=RequestMethod.GET)
	public void newTable(HttpServletResponse response, String storeCode1) throws IOException{
		
		Integer recentableNo=tableService.selectRecentTableNo(storeCode1);//처음에 0이 들어옴 
		//System.out.println("saleController: recentTableno:" + recentableNo);
		
		StoreTable st=new StoreTable();
		st.setStoreCode(storeCode1);
		st.setTableNo(recentableNo+1);
	
		tableService.insertTable(st);
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(recentableNo);
	}

	
	
	
	
	
	
}
