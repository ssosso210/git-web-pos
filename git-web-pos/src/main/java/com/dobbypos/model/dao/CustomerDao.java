package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Customer;

public interface CustomerDao {
	void insertCustomer(Customer customer);
	int countTotalCustomers();
	
	List<Customer> getCustomers(String storeCode);
}
