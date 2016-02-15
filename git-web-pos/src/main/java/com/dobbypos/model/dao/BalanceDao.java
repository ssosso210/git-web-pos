package com.dobbypos.model.dao;

import com.dobbypos.model.dto.Balance;

public interface BalanceDao {

	void insertBalanceFromPay(Balance balance);
	
}