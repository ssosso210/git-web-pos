package com.dobbypos.controller;

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
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.service.CheckService;

@Controller
@RequestMapping("/check")
public class CheckController {
	
	@Autowired
	@Qualifier("checkService")
	private CheckService checkService;
	
//	@Resource(name = "checkDao")
//	private CheckDao checkDao;
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////	
	@RequestMapping(value = "/checkmain.action", method = RequestMethod.GET)
	public String Checkmain(HttpSession session,Model model) {
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		
		
		String todayDate = Util.getTodayDate();
		List<Balance> balances = checkService.getBalancesbyPeriod(todayDate, todayDate);
		
		
		//menu 별 메출 오늘 
		List<Menu> menus = checkService.getMenuByDaySell(todayDate, employeeSession.getStoreCode());
		
		for (Menu menu : menus) {
			System.out.println(menu.toString());
		}
		
		model.addAttribute("balances", balances);	
		model.addAttribute("startday",todayDate);
		model.addAttribute("endday",todayDate);
		model.addAttribute("menus",menus);
		
		return "check/checkmain"; 
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////	
	@RequestMapping(value = "/checksales.action", method = RequestMethod.GET)
	public String Checksales(Model model) {
		System.out.println("Controller");
		
//		List<Balance> balances = checkService.getBalances();
		String todayDate = Util.getTodayDate();
		List<Balance> balances = checkService.getBalancesbyPeriod(todayDate, todayDate);
		model.addAttribute("balances", balances);	
		model.addAttribute("startday",todayDate);
		model.addAttribute("endday",todayDate);
			
		
		return "check/checksales"; 
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping(value = "salesview.action", method = RequestMethod.GET)
	public String salesView(
		@RequestParam("balanceno") int balanceno, @ModelAttribute("balance") Balance balance) {
		
		Balance balance2 = checkService.getBalanceByNo(balanceno);		
		if (balance2 != null) {
			/*balance.setBalanceNo(balance2.getBalanceNo());
			balance.setRegDate(balance2.getRegDate());
			balance.setItemCode(balance2.getItemCode());
			balance.setPlusMinus(balance2.getPlusMinus());
			balance.setDescription(balance2.getDescription());*/
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
	
	@RequestMapping(value = "/chooseperiod.action", method = RequestMethod.GET)
	public String OrderHome(HttpSession session, HttpServletRequest req, Model model) {
		
		List<Balance> balances = checkService.getBalances();
		model.addAttribute("balances", balances);
		
		System.out.println(" 기간 선택  ");
	
		return "check/chooseperiod"; 
	}
	
	
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

	@RequestMapping(value = "/checksell.action", method = RequestMethod.GET)
	public String Checksell(Model model) {
		System.out.println("Controller");
		
		String todayDate = Util.getTodayDate();
//		List<SellByMenu> sellbymenus = checkService.getSellByMenuAndPeriod(todayDate, todayDate);
		
		model.addAttribute("startday", todayDate);
		model.addAttribute("endday", todayDate);
		return "check/checksell"; 
	}
	
//	@RequestMapping(value = "/checksales.action", method = RequestMethod.GET)
//	public String Checksales(Model model) {
//		System.out.println("Controller");
//		
////		List<Balance> balances = checkService.getBalances();
//		String todayDate = Util.getTodayDate();
//		List<Balance> balances = checkService.getBalancesbyPeriod(todayDate, todayDate);
//		model.addAttribute("balances", balances);	
//		model.addAttribute("startday",todayDate);
//		model.addAttribute("endday",todayDate);
//			
//		
//		return "check/checksales"; 
//	}
	
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping(value = "viewbyperiod.action", method = RequestMethod.POST)
	public String attendanceSearchlist(HttpSession session, HttpServletRequest req) {

		String startday = (String)req.getParameter("startday");
		String endday = (String)req.getParameter("endday");
		String typeval = (String)req.getParameter("typeval");
		List<Balance> balances = null;
		if (typeval.equals("all") ){
			balances = checkService.getBalancesbyPeriod(startday, endday);
		}else if(typeval.equals("plus") ){
			balances = checkService.getBalancesbyPeriodAndPlus(startday, endday);
		}else if(typeval.equals("minus") ){
			balances = checkService.getBalancesbyPeriodAndMinus(startday, endday);
		}
		
		System.out.println("attendanceSearchlist : dateStr="+startday+"endStr="+endday);
		
		
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
	
	
	/*@RequestMapping(value="/tableregister.action", method=RequestMethod.POST)
	public String TableRegister(){
		System.out.println("table register 성공 ");
		return "redirect:/settings/settinghome.action";
	}*/

}