package com.dobbypos.model.mapper;

import java.util.HashMap;

import com.dobbypos.model.dto.Balance;

public interface CheckMapper {
	
	Balance selectBalanceByCode(HashMap<String, String> params);

}
