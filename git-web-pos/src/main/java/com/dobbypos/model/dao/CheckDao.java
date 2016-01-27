package com.dobbypos.model.dao;

import com.dobbypos.model.dto.Balance;

public interface CheckDao {

	Balance selectBalanceByCode(String storeCode);
}
