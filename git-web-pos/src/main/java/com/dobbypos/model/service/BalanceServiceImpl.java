package com.dobbypos.model.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.BalanceDao;
import com.dobbypos.model.dto.Balance;


@Service("balanceService")
public class BalanceServiceImpl implements BalanceService {

	@Autowired
	@Qualifier("balanceDao")
	private BalanceDao balanceDao;

	
	@Override
	public void insertBalanceFromPay(Balance balance) {
		balanceDao.insertBalanceFromPay(balance);

		
	}
	
	
}
