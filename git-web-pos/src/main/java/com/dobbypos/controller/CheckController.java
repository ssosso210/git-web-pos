package com.dobbypos.controller;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dobbypos.common.Util;
import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Orders;
import com.dobbypos.model.service.CheckService;
import com.dobbypos.model.service.CustomerService;

@Controller
@RequestMapping("/check")
public class CheckController {
	
	@Autowired
	@Qualifier("checkService")
	private CheckService checkService;
	
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService;
	
//	@Resource(name = "checkDao")
//	private CheckDao checkDao;
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////	
	@RequestMapping(value = "/checkmain.action", method = RequestMethod.GET)
	public String Checkmain(HttpSession session,Model model) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		
		
		String todayDate = Util.getTodayDate();
		//List<Balance> balances2 = checkService.getBalancesbyPeriod(todayDate, todayDate);
		
//		List<Balance> balances = checkService.getBalancesbyPeriod2(todayDate, todayDate, employeeSession.getStoreCode());
		
//		List<Balance> balances2 = checkService.getBalancesbyPeriodAndPlus2(todayDate, todayDate, employeeSession.getStoreCode());
		
		//menu 별 메출 오늘 
		List<Menu> menus = checkService.getMenuByDaySell(todayDate, employeeSession.getStoreCode());
	//	System.out.println("pay type0000000000"+menus.get(0).getPaytype());
		
//		for (Menu menu : menus) {
//			System.out.println(menu.toString());
//		}
		
//		int sum = 0;
//		for(int i=0;i<balances.size();i++){
//			sum += balances.get(i).getPlusMinus();
//		}
		
		int total = 0;
		for(int i=0;i<menus.size();i++){
			total += menus.get(i).getTotalprice();
		}
		
		int all = 0;
		for (int i=0; i<menus.size(); i++) {
			all += menus.get(i).getOrderDetailPrice() * menus.get(i).getTotalcount();
		}
		
		int cash = 0;
		int credit = 0;
		int j = 0;

//		if (menus.get(j).getPaytype() == "cash" ) {
//		for (int i=0; i<menus.size(); i++) {
//			cash += menus.get(i).getTotalprice();
//		}
//			} else if(menus.get(j).getPaytype() == "credit") {
//				for (int i=0; i<menus.size(); i++) {
//					credit += menus.get(i).getTotalprice();
//			}
//		}
		
	
			
		
			
		// 오늘 날짜의 결재 타입에 따른 총 합 가져오기 
		List<Orders> orderPayTypes = checkService.getOrdersByPayType(Util.getTodayDate(), Util.getTodayDate(),employeeSession.getStoreCode() );
		
		
		for (Orders orderPayType : orderPayTypes) {
			System.out.println(orderPayType.getPayType());
			if ("cash".equals(orderPayType.getPayType())) {
				cash += orderPayType.getFinalPrice(); 
			} else if (orderPayType.getPayType().equals("credit")) {
				credit += orderPayType.getFinalPrice();
			}
		}
		
		double cashrate = 0;
		cashrate = ((double)cash/(double)(cash+credit))*100;
		
		double creditrate = 0;
		creditrate = ((double)credit/(double)(cash+credit))*100;
		
		
		
		int discountPrice = all - total;
		
//		model.addAttribute("balances", balances);	
		model.addAttribute("startday",todayDate);
		model.addAttribute("endday",todayDate);
		model.addAttribute("menus",menus);
		model.addAttribute("todayStr", Util.getTodayDate());
//		model.addAttribute("sum", sum);
		model.addAttribute("total",total);
		model.addAttribute("all",all);
		model.addAttribute("discountPrice", discountPrice);
		model.addAttribute("cash",(int)cash);
		model.addAttribute("credit", (int)credit);
		model.addAttribute("creditrate",String.format("%.2f", creditrate));
		model.addAttribute("cashrate", String.format("%.2f", cashrate));
		
	
		
		return "check/checkmain"; 
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////	

	@RequestMapping(value = "/checksell.action", method = RequestMethod.GET)
	public String Checksell(HttpSession session, Model model) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		System.out.println("Controller");

		String todayDate = Util.getTodayDate();
		List<Menu> menus = checkService.getMenuByDaySell(todayDate, employeeSession.getStoreCode());

		for (Menu menu : menus) {
			System.out.println(menu.toString());
		}
		
		int total = 0;
		for(int i=0;i<menus.size();i++){
			total += menus.get(i).getTotalprice();
		}
		
		int all = 0;
		for (int i=0; i<menus.size(); i++) {
			all += menus.get(i).getOrderDetailPrice() * menus.get(i).getTotalcount();
		}
		
		System.out.println(total);
		System.out.println(all);
		System.out.println("안나옴?");
		
		int discountPrice = all - total;
		
		System.out.println(discountPrice);
		
		model.addAttribute("startday",todayDate);
		model.addAttribute("endday",todayDate);
		model.addAttribute("menus",menus);
		model.addAttribute("total",total);
		model.addAttribute("all",all);
		model.addAttribute("discountPrice", discountPrice);

		return "check/checksell"; 
		
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@RequestMapping(value = "viewsellbyperiod.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String viewsellbyperiod(HttpSession session, HttpServletRequest req) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		
		String startday = (String)req.getParameter("startday");
		String endday = (String)req.getParameter("endday");

		System.out.println("startday : "+ startday+", endday : "+endday);
		
		List<Menu> menus = checkService.getMenuByPeriodSell(startday, endday, employeeSession.getStoreCode());
	
		System.out.println("attendanceSearchlist : dateStr="+startday+"endStr="+endday);
		
		int total = 0;
		for(int i=0;i<menus.size();i++){
			total += menus.get(i).getTotalprice();
		}
		
		req.setAttribute("menus", menus);
		req.setAttribute("startday",startday);
		req.setAttribute("endday",endday);
		req.setAttribute("total",total);
		
		System.out.println(menus);

		return "check/checksell";
	}	

	///////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping(value = "/checksales.action", method = RequestMethod.GET)
	public String Checksales(HttpSession session, Model model) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		
		
		String todayDate = Util.getTodayDate();
		//List<Balance> balances2 = checkService.getBalancesbyPeriod(todayDate, todayDate);
		List<Balance> balances = checkService.getBalancesbyPeriod2(todayDate, todayDate, employeeSession.getStoreCode());
		
		int sum = 0;
		for(int i=0;i<balances.size();i++){
			sum += balances.get(i).getPlusMinus();
		}
		//balances list를 빠른 for을 돌린다 (Balance를 알게 됨)
		
		//Balance에서 plusMinus값을 추출
		
		//임의의변수 sum에 plusMinus 값을 더해준다 (sum += plusminus)
		
		model.addAttribute("balances", balances);	
		model.addAttribute("startday",todayDate);
		model.addAttribute("endday",todayDate);
		
		//sum을 전송
		model.addAttribute("sum",sum);

		return "check/checksales"; 
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping(value = "salesview.action", method = RequestMethod.GET)
	public String salesView(HttpSession session,
		@RequestParam("balanceno") int balanceno, @ModelAttribute("balance") Balance balance) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
	
		System.out.println("balanceno ="+balanceno);
		
		Balance balance3 = new Balance();
		balance3.setBalanceNo(balanceno);
		balance3.setStoreCode(employeeSession.getStoreCode());
		
		Balance balance2 = checkService.getBalanceByNo2(balance3);		
		
		
		
		if (balance2 != null) {
			balance.setBalanceNo(balance2.getBalanceNo());
			balance.setRegDate(balance2.getRegDate());
			balance.setItemCode(balance2.getItemCode());
			balance.setItemname(balance2.getItemname());
			balance.setPlusMinus(balance2.getPlusMinus());
			balance.setDescription(balance2.getDescription());
			
			
			
			
			return "check/salesview";
		} else {
			return "redirect:/check/checksales.action";
		}
		
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping(value = "salesedit.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String salesEdit(
		@RequestParam("balanceno") int balanceno,		
		@ModelAttribute("balance") Balance balance) {//HttpServletRequest.setAttribute("member", member)
		
		Balance balance2 = checkService.getBalanceByNo(balanceno);
		
		if (balance2 != null) {
			/*balance.setBalanceNo(balance2.getBalanceNo());
			balance.setRegDate(balance2.getRegDate());
			balance.setItemCode(balance2.getItemCode());
			balance.setPlusMinus(balance2.getPlusMinus());
			balance.setDescription(balance2.getDescription());*/
			return "check/salesedit";
		} else {
			return "redirect:/check/checksales.action";
		}
		
	}
///////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//	@RequestMapping(value = "/chooseperiod.action", method = RequestMethod.GET)
//	public String OrderHome(HttpSession session, HttpServletRequest req, Model model) {
//		
//		List<Balance> balances = checkService.getBalances();
//		model.addAttribute("balances", balances);
//		
//		System.out.println(" 기간 선택  ");
//	
//		return "check/chooseperiod"; 
//	}
//	
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////	
//	@RequestMapping(value = "/checksales.action", method = RequestMethod.POST)
//	public String ChecksalesPost(Model model) {
//		System.out.println("/checksales.action POST 들어옴");
//		
//		List<Balance> balances = checkService.getBalances();
//		System.out.println(balances.get(0).getBalanceNo());
//		
//		model.addAttribute("balances", balances);		
//		
//		return "check/checksales"; 
//	}


	
///////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping(value = "viewbyperiod.action", method = RequestMethod.POST)
	public String attendanceSearchlist(HttpSession session, HttpServletRequest req) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");

		String startday = (String)req.getParameter("startday");
		String endday = (String)req.getParameter("endday");
		String typeval = (String)req.getParameter("typeval");
		List<Balance> balances = null;
		if (typeval.equals("all") ){
			balances = checkService.getBalancesbyPeriod2(startday, endday,employeeSession.getStoreCode());
		}else if(typeval.equals("plus") ){
			balances = checkService.getBalancesbyPeriodAndPlus2(startday, endday,employeeSession.getStoreCode());
		}else if(typeval.equals("minus") ){
			balances = checkService.getBalancesbyPeriodAndMinus2(startday, endday,employeeSession.getStoreCode());
		}
		
		System.out.println("attendanceSearchlist : dateStr="+startday+"endStr="+endday);
		
		int sum = 0;
		for(int i=0;i<balances.size();i++){
			sum += balances.get(i).getPlusMinus();
		}
		
		req.setAttribute("sum", sum);
		req.setAttribute("balances", balances);
		req.setAttribute("startday",startday);
		req.setAttribute("endday",endday);
		
		System.out.println(balances);

		//List<Attendance> attendances = attendanceService.getAttendanceByStoreCodeAndMonth(employee.getStoreCode(),yearStr+"-"+monthStr);
//		req.setAttribute("datestr", yearStr+"-"+monthStr);
//		req.setAttribute("attendances", attendances);
	
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return "check/checksales";
	}	
	
	
	
	
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping(value = "viewsellbymember.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String viewsellbymember(HttpSession session, HttpServletRequest req, Model model) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		
		String todayDate = Util.getTodayDate();
		String startday = (String)req.getParameter("startday");
		String endday = (String)req.getParameter("endday");
		
		List<Customer> customers = customerService.getCustomers(employeeSession.getStoreCode());
		model.addAttribute("customers", customers);
		model.addAttribute("startday",todayDate);
		model.addAttribute("endday",todayDate);
		
		
		//	List<Balance> balances = checkService.getBalances();
//			String todayDate = Util.getTodayDate();
//			List<Balance> balances = checkService.getBalancesbyPeriod(todayDate, todayDate);
//			model.addAttribute("balances", balances);	
//			model.addAttribute("startday",todayDate);
//			model.addAttribute("endday",todayDate);
	
		return "check/viewsellbymember"; 
	}
	
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	
	@RequestMapping(value = "viewsellbycustomerdetail.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String viewsellbycustomerdetail(HttpSession session, HttpServletRequest req,
		@RequestParam("customerNo") int customerNo) {
		
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		
		//String startday = (String)req.getParameter("startday");
		//String endday = (String)req.getParameter("endday");
		Customer customer = customerService.getCustomersByCustomerNo(customerNo);
		String startday = checkService.getFirstOrderDate(customerNo);
		String endday = (Util.getTodayDate());
		
		Calendar cal = Calendar.getInstance( );  // 현재 날짜/시간 등의 각종 정보 얻기

		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) ;
		int day = cal.get(Calendar.DAY_OF_MONTH);



		//String startday = String.format("%04d-%02d-%02d",year,month, day );  
		
		

		List<Menu> menus = checkService.getMenuByCustomer(customerNo ,employeeSession.getStoreCode(), startday, endday);
		int sum = 0;
		for(int i=0;i<menus.size();i++){
			sum += menus.get(i).getTotalprice();
		}
		
		
		if (menus != null) {
			req.setAttribute("menus", menus);
			req.setAttribute("startday",startday);
			req.setAttribute("endday",endday);
			req.setAttribute("customer", customer);
			req.setAttribute("sum", sum);
			
			return "check/viewsellbycustomerdetail";
		} else {
			return "redirect:/check/viewsellbymember.action";
		
		}
	}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	@RequestMapping(value = "viewsellbycustomerdetailandperiod.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String viewsellbycustomerdetailandperiod(HttpSession session, HttpServletRequest req, int customerNoVal) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		
		String startday = (String)req.getParameter("startday");
		String endday = (String)req.getParameter("endday");
		Customer customer = customerService.getCustomersByCustomerNo(customerNoVal);
		
		System.out.println("startday : "+ startday+", endday : "+endday);
		
		List<Menu> menus = checkService.getMenuByCustomer(customerNoVal ,employeeSession.getStoreCode(), startday, endday);
		
		int sum = 0;
		for(int i=0;i<menus.size();i++){
			sum += menus.get(i).getTotalprice();
		}
		
			req.setAttribute("menus", menus);
			req.setAttribute("startday",startday);
			req.setAttribute("endday",endday);
			req.setAttribute("customer", customer);
			req.setAttribute("sum", sum);
		
			return "check/viewsellbycustomerdetail";
		} 
	}	
		
