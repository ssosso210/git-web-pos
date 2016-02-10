package com.dobbypos.model.dao;

import com.dobbypos.model.dto.Customer;

public interface CustomerDao {
	void insertCustomer(Customer customer);
	int countTotalCustomers();
}
