package com.dobbypos.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.service.SaleService;

@Controller
@RequestMapping("/sale")
public class SaleController {
	

	@Autowired
	@Qualifier("saleService")
	private SaleService saleService;
	

	
	@RequestMapping(value = "/salehome.action", method = RequestMethod.GET)
	public String SettingMenu(String storeCode1,  Model model) {
		
		model.addAttribute("storeCode1", storeCode1);
		System.out.println("main.jsp 에서 storecode1받음:"+storeCode1);
		
		return "sale/salehome"; 
	}
	
	@RequestMapping(value = "/paymentform.action", method = RequestMethod.GET)
	public String PaymentForm() {
		return "sale/paymentform"; 
	}	
	
	@RequestMapping(value = "/orderform.action", method = RequestMethod.GET)
	public String SelectAllMenu(Model model) {
		
		List<Menu> menus = saleService.getAllMenus();
	    model.addAttribute("menus", menus);
		
		System.out.println(" [ 메뉴가져왔어 ]  ");
		return "sale/orderform";
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
