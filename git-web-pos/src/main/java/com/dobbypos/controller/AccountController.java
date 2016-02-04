package com.dobbypos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dobbypos.common.Util;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.service.EmployeeService;
import com.dobbypos.model.service.HqService;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired
	@Qualifier("employeeService")
	private EmployeeService employeeService;
	
	@Autowired
	@Qualifier("hqService")
	private HqService hqService;
	
	
	

	@RequestMapping(value = "login.action", method = RequestMethod.GET)
	public String loginForm() {
		
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return "index";
	}	
	
	@RequestMapping(value = "login.action", method = RequestMethod.POST)
	public String login(
		HttpSession session, HttpServletRequest req,
		String hqCode,String storeCode, String employeeId, String passwd, @RequestParam("returnurl") String returnUrl, 
		@RequestParam("storeCode1")String storeCode1,  Model model) {


	//	model.addAttribute("storeCode1", storeCode1);//main.jsp로 보냄 
	//	System.out.println("index.jsp 에서 storecode1받음:"+storeCode1);
		
		

		boolean resultValue= false;
		
		passwd = Util.getHashedString(passwd, "SHA-1");
		
		
		//요청 데이터 (아이디, 열쇠글)으로 데이터베이스에서 조회

		Employee employee = employeeService.searchEmployeeByLogin(hqCode,storeCode, employeeId, passwd);

		//조회 결과에 따라 이동 처리
		if (employee != null) {
			if(employee.getPasswd().equals(passwd)){
				resultValue = true;
			}
		}
	
		//조회 결과에 따라 이동 처리
		if (resultValue) {
			System.out.println(employee.toString());
			session.setAttribute("loginuser", employee);//로그인 처리
			if (returnUrl != null && returnUrl.length() > 0) {
				//spring mvc에서 redirect 경로는 application이름을 포함할 수 없습니다.
				return "redirect:" + returnUrl.replace("/dobbywebpos", "");
			} else {
				return "redirect:/main.action?storeCode1="+storeCode1;
			}
		} else {
			
			//request객체에 데이터 저장
			req.setAttribute("loginid", employeeId);
			return "index";
		}
		
	}	
	
	
	@RequestMapping(value = "logout.action", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "redirect:/account/login.action";
	}
	

	@RequestMapping(value = "hqlogin.action", method = RequestMethod.GET)
	public String hqLoginForm() {
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return "account/hqloginform";
	
	}
	
	@RequestMapping(value = "hqlogin.action", method = RequestMethod.POST)
	public String hqLogin(
		HttpSession session, HttpServletRequest req,
		 String hqId, String hqpasswd, @RequestParam("returnurl") String returnUrl) {
		
		
		boolean resultValue= false;
		
		hqpasswd = Util.getHashedString(hqpasswd, "SHA-1");
		
		
		//요청 데이터 (아이디, 열쇠글)으로 데이터베이스에서 조회
		Hq hq = hqService.searchHqByHqId(hqId);

		//조회 결과에 따라 이동 처리
		if (hq != null) {
			if(hq.getHqPasswd().equals(hqpasswd)){
				resultValue = true;
			}
		}
		
		//조회 결과에 따라 이동 처리
		if (resultValue) {
			System.out.println(hq.toString());
			session.setAttribute("hqloginuser", hq);//로그인 처리
			if (returnUrl != null && returnUrl.length() > 0) {
				//spring mvc에서 redirect 경로는 application이름을 포함할 수 없습니다.
				return "redirect:" + returnUrl.replace("/dobbywebpos", "");
			} else {
				return "redirect:/hq/home.action";
			}
		} else {
			
			//request객체에 데이터 저장
			req.setAttribute("hqloginid", hq);
			return "account/hqloginform";
		}
		
	}	
	@RequestMapping(value = "hqlogout.action", method = RequestMethod.GET)
	public String hqlogout(HttpSession session) {
		
		session.removeAttribute("hqloginuser");
		
		return "redirect:/account/hqlogin.action";
	}
	
}





