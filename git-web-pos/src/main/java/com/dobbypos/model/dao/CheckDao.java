package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Balance;

public interface CheckDao {

	
	
//	Balance selectBalanceByCode(String storeCode);

	List<Balance> getBalances();

	Balance getBalanceByNo(int balanceNo);
	

//	void insert(Member member);
//
//	List<Member> getList();
//
//	Member getMemberById(String id);
//
//	Member getMemberByIdAndPasswd(String id, String passwd);
//
}
