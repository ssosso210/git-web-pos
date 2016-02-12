package com.dobbypos.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.mapper.CheckMapper;
import com.dobbypos.model.mapper.PayMapper;

@Repository("payDao")
public class MysqlPayDao implements PayDao {

	@Autowired
	@Qualifier("payMapper")
	private PayMapper payMapper;	

	

	@Override
	public Customer getCustomerInfo(int customerno) {
		Customer customers=payMapper.getCustomerInfo(customerno);
		return customers;
	}

}
