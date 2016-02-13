package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dao.PayDao;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Employee;

@Service("payService")
public class PayServiceImpl implements PayService {

	

	@Autowired
	@Qualifier("payDao")
	private PayDao payDao;

	@Override
	public Customer getCustomerInfo(int customerno) {
		
		return payDao.getCustomerInfo(customerno);
	}

	
	

}
