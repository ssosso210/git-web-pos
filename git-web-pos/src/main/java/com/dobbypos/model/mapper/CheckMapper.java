package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.AttendanceSearch;
import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Menu;

public interface CheckMapper {
	
	
//	Balance selectBalanceByCode(HashMap<String, String> params);

	List<Balance> getBalances();

	Balance getBalanceByNo(int balanceNo);

	List<Balance> getBalancebyPeriod(HashMap<String, String> params);

	List<Balance> getBalancebyPeriodAndPlus(HashMap<String, String> params);

	List<Balance> getBalancebyPeriodAndMinus(HashMap<String, String> params);

	List<Menu> selectMenuByDaySell(HashMap<String, String> params);
	
	List<Menu> selectMenuByPeriodSell(HashMap<String, String> params);


	List<Menu> selectMenuByCustomer(AttendanceSearch searchParam);

	String getFirstOrderDate(int customerNo);

	List<Balance> getBalancebyPeriod2(HashMap<String, String> params);

	List<Balance> getBalancebyPeriodAndPlus2(HashMap<String, String> params);

	List<Balance> getBalancebyPeriodAndMinus2(HashMap<String, String> params);

	Balance getBalanceByNo2(Balance balance3);

	

}
