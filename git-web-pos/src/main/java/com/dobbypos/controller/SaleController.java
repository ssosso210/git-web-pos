package com.dobbypos.controller;


import java.io.IOException;
import java.io.PrintWriter;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.service.SaleService;
import com.dobbypos.model.service.TableService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
		System.out.println(" [ 테이블이 나와야해 ]  ");
//			
		//int foodCode = (req.getParameter("foodCode"))

		
		
		return "sale/salehome_test"; 
	}

	
	@RequestMapping(value = "/salehome.action", method = RequestMethod.GET)
	public String SettingMenu(String storeCode1,  Model model) {
		
		model.addAttribute("storeCode1", storeCode1);
		System.out.println("main.jsp 에서 storecode1받음:"+storeCode1);
		
		return "sale/salehome"; 
	}
		
	
//	@RequestMapping(value = "/orderform", method = RequestMethod.GET)
//	public String SelectAllMenu(Model model) {
//		
//		List<Menu> menus = saleService.getAllMenus();
//	    model.addAttribute("menus", menus);
//		
//		System.out.println(" [ 모든 메뉴가져왔어 ]  ");
//		return "sale/orderform";
//	}
	
	
	/////////////////////////////////////
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	@ResponseBody
	public String SelectMenu(HttpSession session, HttpServletRequest req, 
			@RequestParam("foodname") String foodName, Model model) {

//		int foodCode = 1;
//		List<Menu> menus = saleService.getSelectMenus(foodCode);
//	    model.addAttribute("menus", menus);
		
		System.out.println(foodName);
		
		List<Menu> menus = saleService.getSelectMenus(foodName);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(menus);
		String result = gson.toJson(menus);
				
	    model.addAttribute("menus", menus);
		
		return result; 
	}
	
	@RequestMapping(value = "/orderhome_test", method = RequestMethod.GET)
	public String OrderHome(HttpSession session, HttpServletRequest req, Model model) {
		
		List<Menu> menus = saleService.getAllMenus();
	    model.addAttribute("menus", menus);
		
		System.out.println(" [ 주문해야해 ]  ");
	
		return "sale/orderhome_test"; 
	}
	
	
	
	
	
	
	@RequestMapping(value = "/paymentform", method = RequestMethod.GET)
	public String PaymentForm() {
		return "sale/paymentform"; 
	}	
	

	

	//테이블디비에추가(박은영)
	@RequestMapping(value="/newTable", method=RequestMethod.GET)
	public String newTable(String storeCode){
		System.out.println(" storeCode 는 :"+storeCode);
		return null;
	}

	@RequestMapping(value="/addTable.action", method=RequestMethod.GET)
	public void addTable(HttpServletResponse response) throws IOException{
		System.out.println("salehome.jsp에서 addTable()실행됨");
		String testdata = saleService.getAllMenus().get(0).getFoodName();
	
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(testdata);
		
	}
	
	
	
	
}
