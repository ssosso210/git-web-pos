package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Customer;

public interface CustomerService {
	
	int countTotalCustomers();
	   void insertCustomer(Customer customer);
	
	   
   List<Customer> getCustomers(String storeCode);

   Customer getCustomersByCustomerNo(int customerNo);
}
