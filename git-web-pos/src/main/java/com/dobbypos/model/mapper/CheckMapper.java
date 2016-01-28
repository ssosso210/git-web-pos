package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.Balance;

public interface CheckMapper {
	
	List<Balance> balances();
	
	Balance selectBalanceByCode(HashMap<String, String> params);

}
