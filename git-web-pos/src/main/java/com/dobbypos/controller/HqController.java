package com.dobbypos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/hq")
public class HqController {
	
	@RequestMapping(value = { "/home.action" }, method = RequestMethod.GET)
	public String home() {
				
		return "hq/home";
		
	}
	
}
