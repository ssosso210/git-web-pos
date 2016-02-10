package com.dobbypos.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;
import com.dobbypos.model.service.EmployeeService;
import com.dobbypos.model.service.MenuService;
import com.dobbypos.model.service.TableService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/settings")
public class SettingsController {
	

	@Autowired
	@Qualifier("employeeService")
	private EmployeeService employeeService;
	
	@Autowired
	@Qualifier("menuService")
	private MenuService menuService;
	
	@Autowired
	@Qualifier("tableService")
	private TableService tableService;
	
	@RequestMapping(value = "/settinghome.action", method = RequestMethod.GET)
	public String SettingMenu(Model model, String storeCode1) {
		model.addAttribute("storeCode1", storeCode1);
		return "settings/settinghome"; 
	}
	
	
	@RequestMapping(value = "/employeeregisterform.action", method = RequestMethod.GET)
	public String EmployeeRegisterForm() {
		return "settings/employeeregisterform"; 
	}	
	
	@RequestMapping(value = "/employeeregister.action", method = RequestMethod.POST)
	public String EmployeeRegister(Employee employee) {
	//	employee.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-1"));
		//System.out.println(employee.toString());
		employeeService.insertEmployee(employee);
		System.out.println("employee register 성공  ");
		return "redirect:/settings/settinghome.action";
	}
	
	//바꾼거~
	@RequestMapping(value="/tableregisterform.action", method=RequestMethod.GET)
	public String TableRegisterForm(HttpServletResponse response,Model model, String storeCode1) throws IOException{
		model.addAttribute("storeCode1", storeCode1);
		
		Integer recentableNo=tableService.selectRecentTableNo(storeCode1);
		model.addAttribute("recentableNo", recentableNo);
		
		//ajax꺼 
	/*	Gson gson=new Gson();
		String result=gson.toJson(recentableNo);
		response.setContentType("text/plain;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print(result);// send result to the server
		*/
		return "settings/tableregisterform";
	}
	
	@RequestMapping(value="/tableadd.action", method=RequestMethod.GET)
	@ResponseBody
	public String TableAdd(HttpServletResponse resp, @RequestParam("rt")int recentableNo,  @RequestParam("sc") String storeCode1){
		System.out.println("sc"+storeCode1);
		
		StoreTable st=new StoreTable();
		st.setStoreCode(storeCode1);
		st.setTableNo(recentableNo+1);
		tableService.insertTable(st);
		System.out.println("tableadd호출 ~");
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();//PrettyPrining()
		
		String result = gson.toJson(recentableNo+1);		
		
		resp.setContentType("application/json;charset=utf-8");
	
		return result;
		
	}
	
	
	
	@RequestMapping(value="/tableregister.action", method=RequestMethod.POST)
	public String TableRegister(StoreTable table){
		tableService.insertTable(table);
		System.out.println("table register 성공 ");
		return "redirect:/settings/settinghome.action";
	}
	
	@RequestMapping(value="/menuregisterform.action", method=RequestMethod.GET)
	public String MenuRegisterForm(){
		return "settings/menuregisterform";
	}
	@RequestMapping(value="/menuregister.action", method=RequestMethod.POST)
	public String MenuRegister(Menu menu){
		menuService.insertMenu(menu);
		System.out.println();
		return "redirect:/settings/settinghome.action";
	}
	
}