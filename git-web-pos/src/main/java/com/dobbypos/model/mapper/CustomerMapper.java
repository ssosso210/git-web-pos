package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Customer;

public interface CustomerMapper {
	
	int countTotalCustomers(String hqCode);
    void insertCustomer(Customer customer);
	
    List<Customer> getCustomers(String storeCode);
	Customer selectCustomersByCustomerNo(int customerNo);
	void updateCustomer(Customer customer);
}
