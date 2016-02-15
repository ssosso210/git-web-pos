package com.dobbypos.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.mapper.HqMapper;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Customer2;

@Repository("hqDao")
public class MySqlHqDao implements HqDao {
	

	
//	@Autowired
//	@Qualifier("sqlSessionTemplate")
//	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("hqMapper")
	private HqMapper hqMapper;

	@Override
	public Hq selectHqByHqId(String hqId) {
		
		return hqMapper.selectHqByHqId(hqId);
	}

	@Override
	public List<Store> getStoreList() {
		
		List<Store> stores = hqMapper.selectStoreList();
		
		return stores;
	}

	@Override
	public List<Customer2> getCustomerList() {

		List<Customer2> customers = hqMapper.selectCustomerList();
		
		return customers;
	}

	@Override
	public List<Client> getClientList() {

		List<Client> clients = hqMapper.selectClientList();
		
		return clients;
	}

	@Override
	public int getCurrentMonthRevenue() {
		int revenue = hqMapper.selectCurrentMonthRevenue();
		return revenue;
	}

	@Override
	public int LastMonthRevenue() {
		int lastRevenue = hqMapper.selectLastMonthRevenue();
		return lastRevenue;
	}

	@Override
	public int LastMonth2Revenue() {
		int lastRevenue2 = hqMapper.selectLastMonth2Revenue();
		return lastRevenue2;
	}

	@Override
	public int LastMonth3Revenue() {
		int lastRevenue3 = hqMapper.selectLastMonth3Revenue();
		return lastRevenue3;
	}

	@Override
	public int LastMonth4Revenue() {
		int lastRevenue4 = hqMapper.selectLastMonth4Revenue();
		return lastRevenue4;
	}

	@Override
	public int LastMonth5Revenue() {
		int lastRevenue5 = hqMapper.selectLastMonth5Revenue();
		return lastRevenue5;
	}

	@Override
	public int LastMonth6Revenue() {
		int lastRevenue6 = hqMapper.selectLastMonth6Revenue();
		return lastRevenue6;
	}

	@Override
	public int LastMont7Revenue() {
		int lastRevenue7 = hqMapper.selectLastMonth7Revenue();
		return lastRevenue7;
	}

	@Override
	public int LastMonth8Revenue() {
		int lastRevenue8 = hqMapper.selectLastMonth8Revenue();
		return lastRevenue8;
	}

	@Override
	public int LastMonth9Revenue() {
		int lastRevenue9 = hqMapper.selectLastMonth9Revenue();
		return lastRevenue9;
	}

	@Override
	public int LastMonth10Revenue() {
		int lastRevenue10 = hqMapper.selectLastMonth10Revenue();
		return lastRevenue10;
	}

	@Override
	public int LastMonth11Revenue() {
		int lastRevenue11 = hqMapper.selectLastMonth11Revenue();
		return lastRevenue11;
	}

	@Override
	public int getCurrentMonthPurchases() {
		
		int purchases = hqMapper.selectCurrentMonthPurchases();
		return purchases;
	}

	@Override
	public int getLastMonth1Purchases() {

		int purchases1 = hqMapper.selectLastMonth1Purchases();
		return purchases1;
	}

	@Override
	public int getLastMonth2Purchases() {

		int purchases2 = hqMapper.selectLastMonth2Purchases();
		return purchases2;
	}

	@Override
	public int getLastMonth3Purchases() {
		
		int purchases3 = hqMapper.selectLastMonth3Purchases();
		return purchases3;
	}

	@Override
	public int getLastMonth4Purchases() {

		int purchases4 = hqMapper.selectLastMonth4Purchases();
		return purchases4;
	}

	@Override
	public int getLastMonth5Purchases() {

		int purchases5 = hqMapper.selectLastMonth5Purchases();
		return purchases5;
	}

	@Override
	public int getLastMonth6Purchases() {
		
		int purchases6 = hqMapper.selectLastMonth6Purchases();
		return purchases6;
	}

	@Override
	public int getLastMonth7Purchases() {
		
		int purchases7 = hqMapper.selectLastMonth7Purchases();
		return purchases7;
	}

	@Override
	public int getLastMonth8Purchases() {
		
		int purchases8 = hqMapper.selectLastMonth8Purchases();
		return purchases8;
	}

	@Override
	public int getLastMonth9Purchases() {
		
		int purchases9 = hqMapper.selectLastMonth9Purchases();
		return purchases9;
	}

	@Override
	public int getLastMonth10Purchases() {
		
		int purchases10 = hqMapper.selectLastMonth10Purchases();
		return purchases10;
	}

	@Override
	public int getLastMonth11Purchases() {
		
		int purchases11 = hqMapper.selectLastMonth11Purchases();
		return purchases11;
	}

	@Override
	public int getLastYearRevenues() {
		
		int lastYearRevenus = hqMapper.selectLastYearRevenues();
		return lastYearRevenus;
	}

	@Override
	public int getLastYearPurchases() {
		
		int lastYearPurchases = hqMapper.selectLastYearPurchases();
		return lastYearPurchases;
	}

}
