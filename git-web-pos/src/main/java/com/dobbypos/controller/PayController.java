package com.dobbypos.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Orders;
import com.dobbypos.model.service.CustomerService;
import com.dobbypos.model.service.PayService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/pay")
public class PayController {
   
   @Autowired
   @Qualifier("payService")
   private PayService payService;
   
   @Autowired
   @Qualifier("customerService")
   private CustomerService customerService;
   
   
   @RequestMapping(value="/payform.action", method=RequestMethod.GET)
   public String PayForm(Model model, @RequestParam("totaltableno")int totaltableno){
      model.addAttribute("totaltableno", totaltableno);
      return "sale/pay";
   }
   
   @RequestMapping(value="/pay.action", method=RequestMethod.GET)
   @ResponseBody
   public String Pay(HttpServletResponse resp,@RequestParam("writtenno")int CustomerNo){
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
   
   @RequestMapping(value="/finalpay.action", method=RequestMethod.GET)
   public String FinalPay(HttpSession session,HttpServletResponse resp,
         @RequestParam("CustomerNo")int customerno,
         @RequestParam("dscrate")int dscrate,
         @RequestParam("paycard")String paycard,
         @RequestParam("totaltableno") int totaltableno,
         @RequestParam("pointleft")int pointleft){
   
      System.out.println("customerno"+customerno);
      
      //1.orders 테이블에 정보 넣음 
      Employee employee = (Employee)session.getAttribute("loginuser");
        String storeCode = employee.getStoreCode();
      
      System.out.println("totaltableno 들어옴"+totaltableno);
      System.out.println("storeCode 들어옴"+storeCode);
      
      Orders orders= new Orders();
      orders.setStoreCode(storeCode);
      orders.setCustomerNo(customerno);
      orders.setDiscountRate(dscrate);
      orders.setPayType(paycard);
      orders.setTotalTableNo(totaltableno);
      orders.setOrderStatus("complete");
      payService.updateOrders(orders);
      System.out.println("orders테이블 update");
      
   //2.회원 포인트, 등급 조정
      String c_level;
      if(pointleft<1000){
         c_level="basic";
      }else if(pointleft>1000&&pointleft<2000){
         c_level="vip";
      }else {
         c_level="vvip";
      }
      
      Customer customer=new Customer();
      customer.setC_point(pointleft);
      customer.setC_level(c_level);
      //customerService.updateCustomer(customer);
      
      
   //3.최종결제금액 balance 테이블에 넣음 
      
      
      
      
      return "redirect:/sale/salehome_test.action?storeCode1="+storeCode;
   }
   


}
