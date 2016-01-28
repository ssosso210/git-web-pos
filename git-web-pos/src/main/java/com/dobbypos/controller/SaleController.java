package com.dobbypos.controller;


import java.util.List;

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
	
	@RequestMapping(value = "/salehome.action", method = RequestMethod.GET)
	public String SettingMenu() {
		
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
	
	//테이블디비에추가(박은영)
	@RequestMapping(value="/newTable.action", method=RequestMethod.GET)
	public String newTable(@RequestParam("storeCode")String storeCode){
		System.out.println(" storeCode 는 :"+storeCode);
		return null;
	}
	
	
	
	
	
}
