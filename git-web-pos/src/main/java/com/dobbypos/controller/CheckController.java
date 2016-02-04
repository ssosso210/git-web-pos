package com.dobbypos.controller;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;
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
import com.dobbypos.model.dao.CheckDao;
import com.dobbypos.model.dto.Attendance;
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
	public String Checkmain() {
		
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
	public String Checksell() {
		
		return "check/checksell"; 
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping(value = "viewbyperiod.action", method = RequestMethod.POST)
	public String attendanceSearchlist(HttpSession session, HttpServletRequest req) {

		String startday = (String)req.getParameter("startday");
		String endday = (String)req.getParameter("endday");
		System.out.println("attendanceSearchlist : dateStr="+startday+"endStr="+endday);
		
		List<Balance> balances = checkService.getBalancesbyPeriod(startday, endday);
		req.setAttribute("balances", balances);
		
		System.out.println(balances);

		//		List<Attendance> attendances = attendanceService.getAttendanceByStoreCodeAndMonth(employee.getStoreCode(),yearStr+"-"+monthStr);
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