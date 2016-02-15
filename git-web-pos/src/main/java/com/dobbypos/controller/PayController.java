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

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Orders;
import com.dobbypos.model.service.BalanceService;
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
   
   @Autowired
   @Qualifier("balanceService")
   private BalanceService balanceService;
   
   
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
         @RequestParam("pointleft")int pointleft,
         @RequestParam("actualpay")int actualpay ){
   
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
      orders.setOrderStatus("completion");
      payService.updateOrders(orders);
      
   //2.회원 포인트, 등급 조정
      int resultpoint=(int)(pointleft+actualpay*(0.05));
      //포인트쓰고 남은거+실제 결제금액의 5% 또 적립
      
      String c_level=null;
      
      if(resultpoint<1000){
         c_level="basic";
      }else if(1000<=resultpoint&& resultpoint<2000){
         c_level="vip";
      }else if(2000<=resultpoint){
         c_level="vvip";
      }
      
      Customer customer=new Customer();
      customer.setC_point(resultpoint);
      customer.setC_level(c_level);
      customer.setCustomerNo(customerno);
      customerService.updateCustomer(customer);
      System.out.println("updateCustomer  done");
      
   //3.최종결제금액 balance 테이블에 넣음 - 나중에 음식 이름, 몇인분인지도 넣어야함 
  
      String itemcode=null;
      
      if(paycard.equals("credit")){
    	  itemcode="s001";
      }else if (paycard.equals("cash")){
    	  itemcode="s002";
      }
      
      System.out.println("itemcode:  "+itemcode);
      
      Balance balance =new Balance();
      balance.setPlusMinus(actualpay);
      balance.setStoreCode(storeCode);
      balance.setItemCode(itemcode);
      balanceService.insertBalanceFromPay(balance);
      
      
      
      return "redirect:/sale/salehome_test.action?storeCode1="+storeCode;
   }
   


}
