
package com.dobbypos.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dobbypos.common.Util;
import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer2;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.service.ClientService;
import com.dobbypos.model.service.CustomerService;
import com.dobbypos.model.service.HqService;
import com.dobbypos.model.service.MenuService;
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
	
	@Autowired
	@Qualifier("menuService")
	private MenuService menuService;
	
	@RequestMapping(value = { "/home.action" }, method = RequestMethod.GET)
	public String home(HttpServletRequest req, Model model) {
		String path = req.getRequestURI();
		Date date = new Date();
		Hq hq = (Hq) req.getSession().getAttribute("hqloginuser");
				
		int revenue = hqService.getCurrentMonthRevenue();
		int lastRevenue1 = hqService.getLastMonthRevenue();
		int lastRevenue2 = hqService.getLastMonth2Revenue();
		int lastRevenue3 = hqService.getLastMonth3Revenue();
		int lastRevenue4 = hqService.getLastMonth4Revenue();
		int lastRevenue5 = hqService.getLastMonth5Revenue();
		int lastRevenue6 = hqService.getLastMonth6Revenue();
		int lastRevenue7 = hqService.getLastMonth7Revenue();
		int lastRevenue8 = hqService.getLastMonth8Revenue();
		int lastRevenue9 = hqService.getLastMonth9Revenue();
		int lastRevenue10 = hqService.getLastMont10hRevenue();
		int lastRevenue11 = hqService.getLastMonth11Revenue();
		
		int currentPurchases = hqService.getCurrentMonthPurchases();
		int lastMonthPurchases1 = hqService.getLastMonth1Purchases();
		int lastMonthPurchases2 = hqService.getLastMonth2Purchases();
		int lastMonthPurchases3 = hqService.getLastMonth3Purchases();
		int lastMonthPurchases4 = hqService.getLastMonth4Purchases();
		int lastMonthPurchases5 = hqService.getLastMonth5Purchases();
		int lastMonthPurchases6 = hqService.getLastMonth6Purchases();
		int lastMonthPurchases7 = hqService.getLastMonth7Purchases();
		int lastMonthPurchases8 = hqService.getLastMonth8Purchases();
		int lastMonthPurchases9 = hqService.getLastMonth9Purchases();
		int lastMonthPurchases10 = hqService.getLastMonth10Purchases();
		int lastMonthPurchases11 = hqService.getLastMonth11Purchases();		
		
		int lastYearRevenues = hqService.getLastYearRevenues();
		int lastYearPurchases = hqService.getLastYearPurchases();
		
		int lastYearProfits = lastYearRevenues - lastYearPurchases;
		
		int totalCustomers = customerService.countTotalCustomers(hq.getHqCode());
		model.addAttribute("totalCustomers", totalCustomers);
		model.addAttribute("path", path);
		model.addAttribute("date", date);
		model.addAttribute("revenue", revenue);
		model.addAttribute("lastRevenue", lastRevenue1);
		model.addAttribute("lastRevenue2", lastRevenue2);
		model.addAttribute("lastRevenue3", lastRevenue3);
		model.addAttribute("lastRevenue4", lastRevenue4);
		model.addAttribute("lastRevenue5", lastRevenue5);
		model.addAttribute("lastRevenue6", lastRevenue6);
		model.addAttribute("lastRevenue7", lastRevenue7);
		model.addAttribute("lastRevenue8", lastRevenue8);
		model.addAttribute("lastRevenue9", lastRevenue9);
		model.addAttribute("lastRevenue10", lastRevenue10);
		model.addAttribute("lastRevenue11", lastRevenue11);
		model.addAttribute("currentPurchases", currentPurchases);
		model.addAttribute("lastMonthPurchases1", lastMonthPurchases1);
		model.addAttribute("lastMonthPurchases2", lastMonthPurchases2);
		model.addAttribute("lastMonthPurchases3", lastMonthPurchases3);
		model.addAttribute("lastMonthPurchases4", lastMonthPurchases4);
		model.addAttribute("lastMonthPurchases5", lastMonthPurchases5);
		model.addAttribute("lastMonthPurchases6", lastMonthPurchases6);
		model.addAttribute("lastMonthPurchases7", lastMonthPurchases7);
		model.addAttribute("lastMonthPurchases8", lastMonthPurchases8);
		model.addAttribute("lastMonthPurchases9", lastMonthPurchases9);
		model.addAttribute("lastMonthPurchases10", lastMonthPurchases10);
		model.addAttribute("lastMonthPurchases11", lastMonthPurchases11);
		model.addAttribute("lastYearProfits", lastYearProfits);
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
		List<Customer2> customers = hqService.getAllCustomer();
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
				
		Hq hq = (Hq)req.getSession().getAttribute("hqloginuser");
		List<Menu> menus = menuService.getAllMenus(hq.getHqCode());
		model.addAttribute("path", path);
		System.out.println(path);
		model.addAttribute("menus", menus);
		return "hq/salemenumanagement";
	}
	
	@RequestMapping(value = "/salemenuregister.action", method = RequestMethod.GET)
	public String saleMenuRegisterForm() {
		
		return "hq/salemenuregisterform";
	}
	
	@RequestMapping(value = "/salemenuregister.action", method = RequestMethod.POST)
	public ModelAndView saleMenuRegister(MultipartHttpServletRequest req, Menu menu, HttpServletRequest request, ModelAndView mav) {
		Hq hq = (Hq) request.getSession().getAttribute("hqloginuser");
		System.out.println(menu.getFoodName());
		menu.setHqCode(hq.getHqCode());
		String path = req.getSession().getServletContext().getRealPath("/WEB-INF/uploadfiles");
		String path1 = req.getSession().getServletContext().getRealPath("/resources/uploadfiles");
		System.out.println(path);
		Iterator<String> iterator = req.getFileNames();
		while(iterator.hasNext()) {
			String fileName = iterator.next();
			MultipartFile file = req.getFile(fileName);
			
			if (file != null && file.getSize() > 0) {
				String savedName = Util.getUniqueFileName(path1, file.getOriginalFilename());
				//menu.setFoodName(menu.getFoodName());
				menu.setSavedFileName(savedName);
				menu.setUserFileName(file.getOriginalFilename());
					
				try {
				//Disk에 파일 저장
				FileOutputStream ostream = new FileOutputStream(path1 + "/" + savedName);
				InputStream istream = file.getInputStream();
				byte[] buffer = new byte[512];
				while (true) {
					int count = istream.read(buffer, 0, buffer.length);
					if (count == -1) break;
					ostream.write(buffer, 0, count);
				}
				istream.close();
				ostream.close();	
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
		System.out.println(menu.getFoodName());
		System.out.println(menu.getUserFileName());
		menuService.insertMenu2(menu);
		mav.addObject("path", path );
		mav.setViewName("redirect:/hq/salemenumanagement.action");
		return mav;
	}
	
	@RequestMapping(value = "/salemenuedit.action", method = RequestMethod.POST)
	@ResponseBody
	public String saleMenuEdit(Menu menu, HttpServletResponse resp, MultipartHttpServletRequest req) {
		Hq hq = (Hq)req.getSession().getAttribute("hqloginuser");
		menu.setHqCode(hq.getHqCode());
		System.out.println(menu);
		String path = req.getSession().getServletContext().getRealPath("/resources/uploadfiles");
		System.out.println(path);
		Iterator<String> iterator = req.getFileNames();
		while(iterator.hasNext()) {
			String fileName = iterator.next();
			System.out.println(fileName);
			MultipartFile file = req.getFile(fileName);
			if (file != null && file.getSize() > 0) {
				String savedName = Util.getUniqueFileName(path, file.getOriginalFilename());
				menu.setSavedFileName(savedName);
				menu.setUserFileName(file.getOriginalFilename());
				menuService.editSaleMenuInfo(menu);
				System.out.println(menu);
				try {
					FileOutputStream ostream = new FileOutputStream(path + "/" + savedName);
					InputStream istream = file.getInputStream();
					byte[] buffer = new byte[512];
					while(true) {
						int count = istream.read(buffer, 0, buffer.length);
						if (count == -1) break;
						ostream.write(buffer, 0, count);						
					}
					istream.close();
					ostream.close();	
				} catch (Exception ex){
					ex.printStackTrace();
				}
			
			
			} else {
				System.out.println(menu);
				menuService.editSaleMenuInfoWithoutFile(menu);
			}
		}
		
		
		//System.out.println(menu);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(menu);
		if (menu.getSavedFileName() != null) {
			
		
		try {
			menu.setFoodName(URLEncoder.encode(menu.getFoodName(), "utf-8").replace("+", "%20"));
			menu.setMenuGroups(URLEncoder.encode(menu.getMenuGroups(), "utf-8").replace("+", "%20"));
			menu.setSavedFileName(URLEncoder.encode(menu.getSavedFileName(), "utf-8").replace("+", "%20"));
			menu.setUserFileName(URLEncoder.encode(menu.getUserFileName(), "utf-8").replace("+", "%20"));
						
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		} else {
		
			try {
				menu.setFoodName(URLEncoder.encode(menu.getFoodName(), "utf-8").replace("+", "%20"));
				menu.setMenuGroups(URLEncoder.encode(menu.getMenuGroups(), "utf-8").replace("+", "%20"));				
							
			} catch (UnsupportedEncodingException e) {
				
				e.printStackTrace();
			}
			
		}
		
		String result = gson.toJson(menu);		
		resp.setContentType("application/json;charset=utf-8");
		
		return result;
	}
	
	@RequestMapping(value = "/salemenudelete.acton", method = RequestMethod.GET)	
	public String saleMenuDelete(@RequestParam("foodcode") String foodCode) {
		System.out.println(foodCode);
		menuService.deleteSaleMenuByFoodCode(foodCode);
		
		return "redirect:/hq/salemenumanagement.action";
	}
}
