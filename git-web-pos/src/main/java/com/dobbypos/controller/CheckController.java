package com.dobbypos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.service.CheckService;

@Controller
@RequestMapping("/check")
public class CheckController {
	
	@Autowired
	@Qualifier("checkService")
	private CheckService checkService;
	
	@RequestMapping(value = "/checkmain.action", method = RequestMethod.GET)
	public String Checkmain() {
		
		return "check/checkmain"; 
	}
	
	@RequestMapping(value = "/checkmoney.action", method = RequestMethod.GET)
	public String Checkmoney() {
		
		return "check/checkmoney"; 
	}
	@RequestMapping(value = "/checksales.action", method = RequestMethod.GET)
	public String Checksales() {
		
		return "check/checksales"; 
	}
	@RequestMapping(value = "/checksell.action", method = RequestMethod.GET)
	public String Checksell() {
		
		return "check/checksell"; 
	}
	
	
	
	
	/*@RequestMapping(value="/tableregister.action", method=RequestMethod.POST)
	public String TableRegister(){
		System.out.println("table register 성공 ");
		return "redirect:/settings/settinghome.action";
	}*/

}