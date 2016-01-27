package com.dobbypos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.service.EmployeeService;
import com.dobbypos.model.service.SaleService;

@Controller
@RequestMapping("/sale")
public class SaleController {
	

	@Autowired
	@Qualifier("saleService")
	private SaleService saleService;
	
	@RequestMapping(value = "/salehome.action", method = RequestMethod.GET)
	public String SettingMenu() {
		
		return "sale/salehome"; 
	}
	
	
	@RequestMapping(value = "/orderform.action", method = RequestMethod.GET)
	public String orderForm() {
		return "sale/orderform"; 
	}	
	
	@RequestMapping(value = "/paymentform.action", method = RequestMethod.GET)
	public String paymentForm() {
		return "sale/paymentform"; 
	}	
	
	@RequestMapping(value = "/menulist.action", method = RequestMethod.POST)
	public String EmployeeRegister(Employee employee) {
	//	employee.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-1"));
//		System.out.println(employee.toString());
//		saleService.insertEmployee(employee);
		System.out.println(" [ 메뉴가져왔어 ]  ");
		return "redirect:/sale/salehome.action";
	}
	
	@RequestMapping(value="/tableregisterform.action", method=RequestMethod.GET)
	public String TableRegisterForm(){
		return "settings/tableregisterform";
	}
	@RequestMapping(value="/tableregister.action", method=RequestMethod.POST)
	public String TableRegister(){
		System.out.println("table register 성공 ");
		return "redirect:/settings/settinghome.action";
	}
	
	
	
	/*//employeer 등록 취소시
	@RequestMapping(value = "/list.action", method = RequestMethod.GET)
	public String EmployeeList() {
		return "settings/employeelist"; 
	}*/
	
	
	
}





