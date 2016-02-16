package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Customer;

public interface CustomerDao {
	void insertCustomer(Customer customer);
	int countTotalCustomers(String hqCode);
	
	List<Customer> getCustomers(String storeCode);
	Customer selectCustomersByCustomerNo(int customerNo);
	void updateCustomer(Customer customer);
}
