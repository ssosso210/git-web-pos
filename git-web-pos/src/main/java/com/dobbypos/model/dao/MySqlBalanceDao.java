package com.dobbypos.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.mapper.BalanceMapper;

@Repository("balanceDao")
public class MySqlBalanceDao implements BalanceDao {
	
	@Autowired
	@Qualifier("balanceMapper")
	private BalanceMapper balanceMapper;

	@Override
	public void insertBalanceFromPay(Balance balance) {
		balanceMapper.insertBalanceFromPay(balance);
		
	}
	
	
		
		
}
