package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;

public interface CheckService {

	List<Balance> getBalances();
	
	Balance getBalanceByNo(int balanceNo);

	List<Balance> getBalancesbyPeriod(String startday, String endday);

	List<Balance> getBalancesbyPeriodAndPlus(String startday, String endday);

	List<Balance> getBalancesbyPeriodAndMinus(String startday, String endday);

	List<Menu> getMenuByDaySell(String todayDate, String storeCode);

	List<Menu> getMenuByPeriodSell(String startday, String endday, String storeCode);
}
