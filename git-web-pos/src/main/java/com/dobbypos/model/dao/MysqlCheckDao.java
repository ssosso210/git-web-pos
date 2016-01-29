package com.dobbypos.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.mapper.CheckMapper;

@Repository("checkDao")
public class MysqlCheckDao implements CheckDao {

	
	
	@Autowired
	@Qualifier("checkMapper")
	private CheckMapper checkMapper;
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////

	@Override
	public Balance selectBalanceByCode(String storeCode) {
		HashMap<String, String> params = new HashMap<>();
		params.put("storeCode", storeCode);
		
		Balance balance = checkMapper.selectBalanceByCode(params);
		
		return balance;
	}


///////////////////////////////////////////////////////////////////////////////////////////////////////	
	@Override
	public List<Balance> getBalances() {
		
		List<Balance> balances = checkMapper.getBalances();    ////////여기가 이상함!!!
		System.out.println("DaoImpl");	
		
		return balances;
	}

}

