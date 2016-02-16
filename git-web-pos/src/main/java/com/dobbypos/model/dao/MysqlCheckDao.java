package com.dobbypos.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.AttendanceSearch;
import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Orders;
import com.dobbypos.model.mapper.CheckMapper;

@Repository("checkDao")
public class MysqlCheckDao implements CheckDao {

	@Autowired
	@Qualifier("checkMapper")
	private CheckMapper checkMapper;	

	/////////////////////////////////////////////////////////////////////////////////////////////////////////

	// @Override
	// public Balance selectBalanceByCode(String storeCode) {
	// HashMap<String, String> params = new HashMap<>();
	// params.put("storeCode", storeCode);
	//
	// Balance balance = checkMapper.selectBalanceByCode(params);
	//
	// return balance;
	// }

	///////////////////////////////////////////////////////////////////////////////////////////////////////
	@Override
	public List<Balance> getBalances() {

		List<Balance> balances = checkMapper.getBalances(); //////// 여기가 이상함!!!
		System.out.println("DaoImpl");

		return balances;
	}

	
///////////////////////////////////////////////////////////////////////////////////////////////////////
	@Override
	public Balance getBalanceByNo2(Balance balance3) {

		Balance balance = checkMapper.getBalanceByNo2(balance3);
		
		return balance;
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@Override
	public List<Balance> getBalancebyPeriod(String startday, String endday) {
		HashMap<String, String> params = new HashMap<>();
		params.put("startdaystr", startday);
		params.put("enddaystr", endday);
		
		List<Balance> balances = checkMapper.getBalancebyPeriod(params);
		
		return balances;
	}


		@Override
	public List<Menu> selectMenuByDaySell(String todayDate, String storeCode) {
		HashMap<String, String> params = new HashMap<>();
		params.put("todayDate", todayDate);
		params.put("storeCode", storeCode);
		return checkMapper.selectMenuByDaySell(params);
	}


	@Override
	public List<Menu> selectMenuByPeriodSell(String startday, String endday, String storeCode) {
		HashMap<String, String> params = new HashMap<>();
		params.put("startday", startday);
		params.put("endday", endday);
		params.put("storeCode", storeCode);
		
		return checkMapper.selectMenuByPeriodSell(params);
	}




	@Override
	public List<Menu> selectMenuByCustomer(int customerNo, String storeCode, String startday, String endday) {
		

		AttendanceSearch searchParam = new AttendanceSearch();
		searchParam.setCustomerNo(customerNo);
		searchParam.setStoreCode(storeCode);
		searchParam.setStartDay(startday);
		searchParam.setEndDay(endday);

		List<Menu> menus = checkMapper.selectMenuByCustomer(searchParam); 
		
		
		return menus;
	}


	@Override
	public String selectFirstOrderDate(int customerNo) {
		
		String firstOrderDate = checkMapper.getFirstOrderDate(customerNo);
		
		return firstOrderDate;
	}


	@Override
	public List<Balance> getBalancebyPeriod2(String startday, String endday, String storeCode) {
		
		HashMap<String, String> params = new HashMap<>();
		params.put("startdaystr", startday);
		params.put("enddaystr", endday);
		params.put("storeCode", storeCode);
		
		List<Balance> balances = checkMapper.getBalancebyPeriod2(params);
		
		return balances;
		
		
	}
	
	@Override
	public List<Balance> getBalancebyPeriodAndPlus(String startday, String endday) {
		HashMap<String, String> params = new HashMap<>();
		params.put("startdaystr", startday);
		params.put("enddaystr", endday);
		
		
		List<Balance> balances = checkMapper.getBalancebyPeriodAndPlus(params);
		
		return balances;
	}


	@Override
	public List<Balance> getBalancebyPeriodAndMinus(String startday, String endday) {
		HashMap<String, String> params = new HashMap<>();
		params.put("startdaystr", startday);
		params.put("enddaystr", endday);
		
		List<Balance> balances = checkMapper.getBalancebyPeriodAndMinus(params);
		
		return balances;
	}


	@Override
	public List<Balance> getBalancebyPeriodAndPlus2(String startday, String endday, String storeCode) {
		HashMap<String, String> params = new HashMap<>();
		params.put("startdaystr", startday);
		params.put("enddaystr", endday);
		params.put("storeCode", storeCode);
		
		List<Balance> balances = checkMapper.getBalancebyPeriodAndPlus2(params);
		
		return balances;
	}


	@Override
	public List<Balance> getBalancebyPeriodAndMinus2(String startday, String endday, String storeCode) {
		HashMap<String, String> params = new HashMap<>();
		params.put("startdaystr", startday);
		params.put("enddaystr", endday);
		params.put("storeCode", storeCode);
		
		List<Balance> balances = checkMapper.getBalancebyPeriodAndMinus2(params);
		
		return balances;
	}


	@Override
	public Balance getBalanceByNo(int balanceNo) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Orders> selectOrdersByPayType(String startday, String endday, String storeCode) {
		HashMap<String, String> params = new HashMap<>();
		params.put("startday", startday);
		params.put("endday", endday);
		params.put("storeCode", storeCode);
		return checkMapper.selectOrdersByPayType(params);
	}

}
