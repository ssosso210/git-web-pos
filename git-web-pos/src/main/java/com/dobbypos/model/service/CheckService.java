package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Employee;

public interface CheckService {

	List<Balance> getBalances();
}
