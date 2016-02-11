package com.dobbypos.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.service.PayService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/pay")
public class PayController {
	
	@Autowired
	@Qualifier("payService")
	private PayService payService;
	
	
	@RequestMapping(value="/payform.action", method=RequestMethod.GET)
	public String PointForm(){
		return "sale/pay";
	}
	
	@RequestMapping(value="/pay.action", method=RequestMethod.GET)
	@ResponseBody
	public String Point(HttpServletResponse resp,@RequestParam("writtenno")int CustomerNo){
		Customer customer1=payService.getCustomerInfo(CustomerNo);
		try {
			customer1.setC_name((URLEncoder.encode(customer1.getC_name(), "utf-8").replace("+", "%20")));
			   
	      } catch (UnsupportedEncodingException e) {
	         
	         e.printStackTrace();
	      }

		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();//PrettyPrining()		
		String customer= gson.toJson(customer1);				
		resp.setContentType("application/json;charset=utf-8");	
		return customer;
	
	}
}
