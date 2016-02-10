package com.dobbypos.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.CustomerDao;
import com.dobbypos.model.dto.Customer;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	@Qualifier("customerDao")
	private CustomerDao customerDao;
	
	@Override
	public int countTotalCustomers() {
				
		return customerDao.countTotalCustomers();
	}

	@Override
	public void insertCustomer(Customer customer) {
		customerDao.insertCustomer(customer);
		
	}
	

}
