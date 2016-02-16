package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Orders;

public interface CheckService {

	List<Balance> getBalances();
	
	Balance getBalanceByNo(int balanceNo);

	List<Balance> getBalancesbyPeriod(String startday, String endday);

	List<Menu> getMenuByDaySell(String todayDate, String storeCode);

	List<Menu> getMenuByPeriodSell(String startday, String endday, String storeCode);

	List<Menu> getMenuByCustomer(int customerNo, String storeCode, String startday, String endday);

	String getFirstOrderDate(int customerNo);

	List<Balance> getBalancesbyPeriod2(String startday, String endday, String storeCode);
	
	List<Balance> getBalancesbyPeriodAndPlus(String startday, String endday);
	List<Balance> getBalancesbyPeriodAndPlus2(String startday, String endday, String storeCode);
	
	List<Balance> getBalancesbyPeriodAndMinus(String startday, String endday);
	List<Balance> getBalancesbyPeriodAndMinus2(String startday, String endday, String storeCode);

	Balance getBalanceByNo2(Balance balance3);

	List<Orders> getOrdersByPayType(String startday, String endday, String storeCode);
}
