package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Balance;

public interface CheckService {

	List<Balance> getBalances();
}
