
package com.dobbypos.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.service.HqService;


@Controller
@RequestMapping("/hq")
public class HqController {
	
	@Autowired
	@Qualifier("hqService")
	private HqService hqService;
	
	@RequestMapping(value = { "/home.action" }, method = RequestMethod.GET)
	public String home(HttpServletRequest req, Model model) {
		String path = req.getRequestURI();
		model.addAttribute("path", path);
		return "hq/home";
	}
	
	@RequestMapping(value = "/storemanagement.action", method = RequestMethod.GET)
	public String storeManagementHome(HttpServletRequest req, Model model) {
		String path = req.getRequestURI();		
		List<Store> stores = hqService.getAllStore();
		model.addAttribute("stores", stores);
		model.addAttribute("path", path);
		return "hq/storemanagement";
	}
	
	@RequestMapping(value = "/customermanagement.action", method = RequestMethod.GET)
	public String customerManagementHome(HttpServletRequest req, Model model) {
		String path = req.getRequestURI();		
		List<Customer> customers = hqService.getAllCustomer();
		model.addAttribute("customers", customers);
		model.addAttribute("path", path);
		return "hq/customermanagement";
	}
	
	@RequestMapping(value = "/clientmanagement.action", method = RequestMethod.GET)
	public String clientManagementHome(HttpServletRequest req, Model model) { 
		String path = req.getRequestURI();		
		List<Client> clients = hqService.getAllClient();		
		model.addAttribute("clients", clients);
		model.addAttribute("path", path);
		return "hq/clientmanagement";		
	}
	
	
}
