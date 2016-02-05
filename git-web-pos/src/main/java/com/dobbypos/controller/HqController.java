
package com.dobbypos.controller;

import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.service.ClientService;
import com.dobbypos.model.service.CustomerService;
import com.dobbypos.model.service.HqService;
import com.dobbypos.model.service.StoreService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@Controller
@RequestMapping("/hq")
public class HqController {
	
	@Autowired
	@Qualifier("hqService")
	private HqService hqService;
	
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService;
	
	@Autowired
	@Qualifier("storeService")
	private StoreService storeService;
	
	@Autowired
	@Qualifier("clientService")
	private ClientService clientService;
	
	@RequestMapping(value = { "/home.action" }, method = RequestMethod.GET)
	public String home(HttpServletRequest req, Model model) {
		String path = req.getRequestURI();
		int totalCustomers = customerService.countTotalCustomers();
		model.addAttribute("totalCustomers", totalCustomers);
		model.addAttribute("path", path);
		return "hq/home";
		//return "hq/salemenumanagement";
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
	
	@RequestMapping(value = "/storeregisterform.action", method = RequestMethod.GET)
	public String storeRegisterForm() {
		
		return "hq/storeregisterform";
	}
	
	@RequestMapping(value = "/storeregister.action", method = RequestMethod.POST)
	public String storeRegister(Store store, HttpServletRequest req) {
		Hq hq = (Hq) req.getSession().getAttribute("hqloginuser");
		System.out.println(hq.getHqCode());
		store.setHqCode(hq.getHqCode());
		storeService.registerStore(store);
		
		return "redirect:/hq/storemanagement.action";
	}
	
	@RequestMapping(value = "/storenamelist.action", method = RequestMethod.GET)
	@ResponseBody
	public String storeNameList(HttpServletResponse resp, @RequestParam("storename") String storeName) {
		
		List<String> stores = storeService.getStoreNameListById(storeName);
		for (int i = 0; i < stores.size(); i++) {
			try {
				stores.set(i, URLEncoder.encode(stores.get(i), "utf-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
//		List<String> storeCodes = storeService.getStoreCodeList(storeCode);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(stores);
		String result = gson.toJson(stores);
//		result = gson.toJson(storeCodes);
		
		
		resp.setContentType("application/json;charset=utf-8");
		
		return result;
	}
	
	@RequestMapping(value = "/clientregisterform.action", method = RequestMethod.GET)
	public String clientRegisterForm() {
		
		return "hq/clientregisterform";
	}
	
	@RequestMapping(value = "/storecodelist.action", method = RequestMethod.GET)
	@ResponseBody
	public String storeCodeList(HttpServletResponse resp, @RequestParam("storecode") String storeCode) {
				
		List<String> storeCodes = storeService.getStoreCodeListByStoreCode(storeCode);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(storeCodes);
		String result = gson.toJson(storeCodes);		
		
		resp.setContentType("application/json;charset=utf-8");
		
		return result;
	}
	
	@RequestMapping(value = "/storeedit.action", method = RequestMethod.POST)
	@ResponseBody
	public String storeEdit(Store store, HttpServletResponse resp) {
		System.out.println(store.getAddress());
		storeService.editStoreInfo(store);		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(store);
		
		try {
			store.setAddress(URLEncoder.encode(store.getAddress(), "utf-8").replace("+", "%20"));
			store.setStoreName(URLEncoder.encode(store.getStoreName(), "utf-8").replace("+", "%20"));
			store.setManagerName(URLEncoder.encode(store.getManagerName(), "utf-8").replace("+", "%20"));
			
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		String result = gson.toJson(store);		
		
		resp.setContentType("application/json;charset=utf-8");
		
		return result;	
		
	}
	
	@RequestMapping(value = "/storeview.action", method = RequestMethod.GET)
	public String storeView(@RequestParam("storename") String storeName, Model model) {
		Store store = storeService.getStoreByStoreName(storeName);
		model.addAttribute(store);
		return "/hq/storeview";
				
	}
	
	@RequestMapping(value = "/storedelete.action", method = RequestMethod.GET)	
	public String storeDelete(@RequestParam("storecode") String storeCode) {
		System.out.println(storeCode);
		storeService.deleteStoreByStoreCode(storeCode);
		
		return "redirect:/hq/storemanagement.action";
	}
	@RequestMapping(value = "/clientnamelist.action", method = RequestMethod.GET)
	@ResponseBody
	public String clientNameList(HttpServletResponse resp, @RequestParam("clientname") String clientName) {
		
		List<String> clients = clientService.getClientListByClientName(clientName);
		for (int i = 0; i < clients.size(); i++) {
			try {
				clients.set(i, URLEncoder.encode(clients.get(i), "utf-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(clients);
		String result = gson.toJson(clients);		
		
		resp.setContentType("application/json;charset=utf-8");
		return result;
	}
	
	@RequestMapping(value = "/clientbusinessnumber.action", method = RequestMethod.GET)
	@ResponseBody
	public String clientBusinessNumber(HttpServletResponse resp, @RequestParam("businessnumber") String businessNumber) {
		
		List<String> businessNumbers = clientService.getClientBusinessNumberByBusinessNumber(businessNumber);
		String result1 = null;
		for (int i = 0; i < businessNumbers.size(); i++) {
			if (businessNumber.equals(businessNumbers.get(i))) {
				result1 = "unable";
			} else {
				result1 = "able";
			}
		}
		System.out.println(businessNumbers);
		System.out.println(result1);
		return result1;
	}
	
	@RequestMapping(value = "clientregister.action", method = RequestMethod.POST)
	public String clientRegister(Client client, HttpServletRequest req) {
		
		Hq hq = (Hq)req.getSession().getAttribute("hqloginuser");
		System.out.println(hq.getHqCode());
		client.setHqCode(hq.getHqCode());
		clientService.registerClient(client);
		
		return "redirect:/hq/clientmanagement.action";
	}
	
	@RequestMapping(value = "clientview.action", method = RequestMethod.GET)
	public String clientView(@RequestParam("clientname") String clientName, Model model) {
		
		Client client = clientService.getClientByClientName(clientName);
		model.addAttribute(client);
		
		return "hq/clientview";
	}
	
	@RequestMapping(value = "/clientdelete.action", method = RequestMethod.GET)	
	public String clientDelete(@RequestParam("clientname") String clientName) {
		System.out.println(clientName);
		clientService.deleteClientByClientName(clientName);
		
		return "redirect:/hq/clientmanagement.action";
	}
	
	@RequestMapping(value = "/clientedit.action", method = RequestMethod.POST)
	@ResponseBody
	public String clientEdit(Client client, HttpServletResponse resp) {
		System.out.println(client);
		clientService.editClientInfo(client);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		try {
			client.setAddress(URLEncoder.encode(client.getAddress(), "utf-8").replace("+", "%20"));
			client.setClientName(URLEncoder.encode(client.getClientName(), "utf-8").replace("+", "%20"));
			
			
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		String result = gson.toJson(client);		
		
		resp.setContentType("application/json;charset=utf-8");
		
		return result;	
	}
	
	@RequestMapping(value ="/salemenumanagement.action", method = RequestMethod.GET)
	public String saleMenuManagement(HttpServletRequest req,  Model model) {
		String path = req.getRequestURI();
		model.addAttribute("path", path);
		return "hq/salemenumanagement";
	}
	
	@RequestMapping(value = "/salemenuregister.action", method = RequestMethod.GET)
	public String saleMenuRegister() {
		
		return "hq/salemenuregister";
	}
}
