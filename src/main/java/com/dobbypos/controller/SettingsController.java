package com.dobbypos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

<<<<<<< HEAD
import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.service.EmployeeService;

@Controller
@RequestMapping("/settings")
public class SettingsController {
	

	@Autowired
	@Qualifier("employeeService")
	private EmployeeService employeeService;
	
	@RequestMapping(value = "/settinghome.action", method = RequestMethod.GET)
	public String SettingMenu() {
		
		return "settings/settinghome"; 
	}
	
	
	@RequestMapping(value = "/employeeregisterform.action", method = RequestMethod.GET)
	public String EmployeeRegisterForm() {
		return "settings/employeeregisterform"; 
	}	
	
	@RequestMapping(value = "/employeeregister.action", method = RequestMethod.POST)
	public String EmployeeRegister(Employee employee) {
	//	employee.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-1"));
		System.out.println(employee.toString());
		employeeService.insertEmployee(employee);
		System.out.println("employee register 성공  ");
		return "redirect:/settings/settinghome.action";
	}
	
	@RequestMapping(value="/tableregisterform.action", method=RequestMethod.GET)
	public String TableRegisterForm(){
		return "settings/tableregisterform";
	}
	@RequestMapping(value="/tableregister.action", method=RequestMethod.POST)
	public String TableRegister(){
		System.out.println("table register 성공 ");
		return "redirect:/settings/settinghome.action";
	}
	
	
	
	/*//employeer 등록 취소시
	@RequestMapping(value = "/list.action", method = RequestMethod.GET)
	public String EmployeeList() {
		return "settings/employeelist"; 
	}*/
	
	
	
}





=======
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.StoreTable;
import com.dobbypos.model.service.EmployeeService;
import com.dobbypos.model.service.MenuService;
import com.dobbypos.model.service.TableService;

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
	public String SettingMenu() {
		
		return "settings/settinghome"; 
	}
	
	
	@RequestMapping(value = "/employeeregisterform.action", method = RequestMethod.GET)
	public String EmployeeRegisterForm() {
		return "settings/employeeregisterform"; 
	}	
	
	@RequestMapping(value = "/employeeregister.action", method = RequestMethod.POST)
	public String EmployeeRegister(Employee employee) {
	//	employee.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-1"));
		System.out.println(employee.toString());
		employeeService.insertEmployee(employee);
		System.out.println("employee register 성공  ");
		return "redirect:/settings/settinghome.action";
	}
	
	@RequestMapping(value="/tableregisterform.action", method=RequestMethod.GET)
	public String TableRegisterForm(){
		return "settings/tableregisterform";
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
>>>>>>> branch 'master' of https://github.com/ssosso210/git-web-pos.git
