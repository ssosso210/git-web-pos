package com.dobbypos.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.mapper.CustomerMapper;

@Repository("customerDao")
public class MysqlCustomerDao implements CustomerDao {

	@Autowired
	@Qualifier("customerMapper")
	private CustomerMapper customerMapper;
	
	@Override
	public int countTotalCustomers() {
		int totalCustomers = customerMapper.countTotalCustomers();
		
		return totalCustomers;
	}

}
