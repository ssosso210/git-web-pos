package com.dobbypos.model.service;

import com.dobbypos.model.dto.Customer;

public interface CustomerService {
	
	int countTotalCustomers();
	   void insertCustomer(Customer customer);
}
