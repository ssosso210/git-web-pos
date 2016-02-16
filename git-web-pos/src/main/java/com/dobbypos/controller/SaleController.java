package com.dobbypos.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Orders;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;
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
	
	//윤수오빠화면으로 테스트해봄 --박은영
	@RequestMapping(value = "/salehome_test.action", method = RequestMethod.GET)
	public String SaleHome(Model model, String storeCode1,HttpSession session, HttpServletRequest req) {
		System.out.println("salehome.test  storecode "+storeCode1);
		List<StoreTable> st= tableService.selectCurrentTables(storeCode1);

		model.addAttribute("st", st);
		
		List<Menu> menus = saleService.getAllMenus();
	    model.addAttribute("menus", menus);
	
//		Integer recentableNo=tableService.selectRecentTableNo(storeCode1);
//		model.addAttribute("recentno", recentableNo);
		return "sale/salehome_test2_eunyoung"; 
	}
	
	
	/*//원래윤수오빠꺼
	@RequestMapping(value = "/salehome_test", method = RequestMethod.GET)
	public String SaleHome(HttpSession session, HttpServletRequest req, Model model) {
	
		return "sale/salehome_test"; 
	}*/
	
	
/*	@RequestMapping(value = "/salehome.action", method = RequestMethod.GET)
	public String SettingMenu(String storeCode1,  Model model) {
		
		model.addAttribute("storeCode1", storeCode1);
	
		Integer recentableNo=tableService.selectRecentTableNo(storeCode1);
		model.addAttribute("recentno", recentableNo);
		System.out.println("recentno"+recentableNo);
		return "sale/salehome"; 
	}*/
	
	
	/*주문하기버튼*/
	@RequestMapping(value = "/posorder.action", method = RequestMethod.GET)
	public String OrderInsert(Menu food) {
		
		
		
		
		return "sale/salehome_test"; 
	}
	
	
	
		
		
	@RequestMapping(value = "/orderhome_test", method = RequestMethod.GET)
	public String OrderHome(HttpSession session, HttpServletRequest req, Model model,
			@RequestParam("totalno")int totaltableno) {
		
		List<Menu> menus = saleService.getAllMenus();
	    model.addAttribute("menus", menus);
//		
		System.out.println(" [ 주문해야해 ]  ");
//			
		//int foodCode = (req.getParameter("foodCode"))

		model.addAttribute("totaltableno", totaltableno);
		return "sale/orderhome_test"; 
	}
	
	
	
	@RequestMapping(value = "/pos_popup.action", method = RequestMethod.GET)
	@ResponseBody
	public String PosOrderHome(HttpSession session, HttpServletRequest req, Model model,
			@RequestParam("totalno")int totaltableno) {
		
		

	    List<Orders> orders = saleService.getOnProcessingOrderByTotalTableNo(totaltableno);
	    Gson gson = new GsonBuilder().setPrettyPrinting().create();
	    
	    String json = gson.toJson(orders);
	    
	   
		return json; 
	}
	
	
	// 팝업창에서 메뉴선택
	/////////////////////////////////////
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	@ResponseBody
	public String SelectMenu(HttpSession session, HttpServletResponse resp  ,HttpServletRequest req, Model model , @RequestParam("foodname") String foodName) {
			
		System.out.println(" [ 선택한 메뉴가져왔어 ]  ");
		System.out.println(foodName);
		
		
		List<Menu> menus = saleService.getSelectMenus(foodName);
				
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(menus);
		
	    model.addAttribute("menus", menus);

	    
	    System.out.println(menus);
	    String result = gson.toJson(menus);      
	    System.out.println(result);
	    resp.setContentType("application/json;charset=utf-8");
	    
	    return result;
	}
	
	
	// 주문하기버튼 눌렀을때 데이터 넘겨주는거
	@RequestMapping(value = "/tableinsertmenu.action", method = RequestMethod.POST)
	public String Table_InsertMenu(Menu menu) {
	
		System.out.println("여기까지오니??");
		
		saleService.tableInsertMenu(menu);
		System.out.println("insert menu 성공  ");
		return "redirect:/sale/salehome_test2_eunyoung.action";
	}
	
	
	@RequestMapping(value = "/insertOrder.action", method = RequestMethod.POST)
	@ResponseBody
	public String InsertOrder(@RequestParam("order") String order) {
	//public String InsertOrder(@RequestBody Orders order) {
	
		Gson gson = new Gson();
		Orders orders = gson.fromJson(order, Orders.class);
		
		saleService.createOrder(orders);
		
		
		return String.valueOf(orders.getOrderNo()); 
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
