package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Customer;

public interface CustomerMapper {
	
	int countTotalCustomers();
    void insertCustomer(Customer customer);
	
    List<Customer> getCustomers(String storeCode);
}
