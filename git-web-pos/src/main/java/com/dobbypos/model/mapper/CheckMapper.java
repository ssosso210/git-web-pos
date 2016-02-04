package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.Balance;

public interface CheckMapper {
	
	
//	Balance selectBalanceByCode(HashMap<String, String> params);

	List<Balance> getBalances();

	Balance getBalanceByNo(int balanceNo);

	List<Balance> getBalancebyPeriod(HashMap<String, String> params);

}
