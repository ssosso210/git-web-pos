package com.dobbypos.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.mapper.CustomerMapper;

@Repository("customerDao")
public class MysqlCustomerDao implements CustomerDao {

	@Autowired
	@Qualifier("customerMapper")
	private CustomerMapper customerMapper;
	
	@Override
	public int countTotalCustomers(String hqCode) {
		int totalCustomers = customerMapper.countTotalCustomers(hqCode);
		
		return totalCustomers;
	}

	@Override
	public void insertCustomer(Customer customer) {
		customerMapper.insertCustomer(customer);
	}

	@Override
	public List<Customer> getCustomers(String storeCode) {
		
		List<Customer> customers = customerMapper.getCustomers(storeCode);
		
		return customers;
	}

	@Override
	public Customer selectCustomersByCustomerNo(int customerNo) {
		// TODO Auto-generated method stub
		return customerMapper.selectCustomersByCustomerNo(customerNo);
	}

	@Override
	public void updateCustomer(Customer customer) {
		customerMapper.updateCustomer( customer);
		
	}

}
