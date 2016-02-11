
package com.dobbypos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping(value = { "/", "/home.action" }, method = RequestMethod.GET)
	public String home() {		
		
		return "index"; // /WEB-INF/views/ + index + .jsp
		
	}
	
	@RequestMapping(value = {"/main.action" }, method = RequestMethod.GET)
	public String main(Model model, String storeCode1) {
		System.out.println("main.action에 storeCode1 들어옴 : "+ storeCode1);
		model.addAttribute("storeCode1", storeCode1);//main.jsp로 보냄 
		
		//return "index"; // /WEB-INF/views/ + index + .jsp
		return "mainpage/main"; // /WEB-INF/views/ + mainpage/main + .jsp
	}
	
	
}
