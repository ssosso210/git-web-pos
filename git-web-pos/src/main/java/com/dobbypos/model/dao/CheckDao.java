package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Menu;

public interface CheckDao {

	
	
//	Balance selectBalanceByCode(String storeCode);

	List<Balance> getBalances();

	Balance getBalanceByNo(int balanceNo);

	List<Balance> getBalancebyPeriod(String startday, String endday);

	List<Balance> getBalancebyPeriodAndPlus(String startday, String endday);

	List<Balance> getBalancebyPeriodAndMinus(String startday, String endday);

	List<Menu> selectMenuByDaySell(String todayDate, String storeCode);

	List<Menu> selectMenuByPeriodSell(String startday, String endday, String storeCode);

	List<Menu> selectMenuByCustomer(int customerNo, String storeCode, String startday, String endday);

	String selectFirstOrderDate(int customerNo);
	

//	void insert(Member member);
//
//	List<Member> getList();
//
//	Member getMemberById(String id);
//
//	Member getMemberByIdAndPasswd(String id, String passwd);
//
}
