package com.dobbypos.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.mapper.CheckMapper;

@Repository("checkDao")
public class MysqlCheckDao implements CheckDao {
//
//	@Autowired
//	@Qualifier("sqlSession")
//	private SqlSessionTemplate sqlSessionTemplate;

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
	public Balance getBalanceByNo(int balanceNo) {

		Balance balance = checkMapper.getBalanceByNo(balanceNo);
		
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

}
