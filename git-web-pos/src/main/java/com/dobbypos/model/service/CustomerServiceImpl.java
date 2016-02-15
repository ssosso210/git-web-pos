package com.dobbypos.model.service;

import java.util.List;

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

	@Override
	public List<Customer> getCustomers(String storeCode) {
		
		return customerDao.getCustomers(storeCode);
	}

	@Override
	public Customer getCustomersByCustomerNo(int customerNo) {
		// TODO Auto-generated method stub
		return customerDao.selectCustomersByCustomerNo(customerNo);
	}

	@Override
	public void updateCustomer(Customer customer) {
		customerDao.updateCustomer( customer);
		
	}
	

}
