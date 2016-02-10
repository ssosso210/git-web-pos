package com.dobbypos.model.mapper;

import com.dobbypos.model.dto.Customer;

public interface CustomerMapper {
	
	int countTotalCustomers();
    void insertCustomer(Customer customer);
}
