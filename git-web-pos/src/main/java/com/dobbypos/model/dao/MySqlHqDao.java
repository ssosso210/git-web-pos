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
	public List<Store> getStoreList(String hqCode) {
		
		List<Store> stores = hqMapper.selectStoreList(hqCode);
		
		return stores;
	}

	@Override
	public List<Customer2> getCustomerList(String hqCode) {

		List<Customer2> customers = hqMapper.selectCustomerList(hqCode);
		
		return customers;
	}

	@Override
	public List<Client> getClientList(String hqCode) {

		List<Client> clients = hqMapper.selectClientList(hqCode);
		
		return clients;
	}

	@Override
	public int getCurrentMonthRevenue(String hqCode) {
		int revenue = hqMapper.selectCurrentMonthRevenue(hqCode);
		return revenue;
	}

	@Override
	public int LastMonthRevenue(String hqCode) {
		int lastRevenue = hqMapper.selectLastMonthRevenue(hqCode);
		return lastRevenue;
	}

	@Override
	public int LastMonth2Revenue(String hqCode) {
		int lastRevenue2 = hqMapper.selectLastMonth2Revenue(hqCode);
		return lastRevenue2;
	}

	@Override
	public int LastMonth3Revenue(String hqCode) {
		int lastRevenue3 = hqMapper.selectLastMonth3Revenue(hqCode);
		return lastRevenue3;
	}

	@Override
	public int LastMonth4Revenue(String hqCode) {
		int lastRevenue4 = hqMapper.selectLastMonth4Revenue(hqCode);
		return lastRevenue4;
	}

	@Override
	public int LastMonth5Revenue(String hqCode) {
		int lastRevenue5 = hqMapper.selectLastMonth5Revenue(hqCode);
		return lastRevenue5;
	}

	@Override
	public int LastMonth6Revenue(String hqCode) {
		int lastRevenue6 = hqMapper.selectLastMonth6Revenue(hqCode);
		return lastRevenue6;
	}

	@Override
	public int LastMont7Revenue(String hqCode) {
		int lastRevenue7 = hqMapper.selectLastMonth7Revenue(hqCode);
		return lastRevenue7;
	}

	@Override
	public int LastMonth8Revenue(String hqCode) {
		int lastRevenue8 = hqMapper.selectLastMonth8Revenue(hqCode);
		return lastRevenue8;
	}

	@Override
	public int LastMonth9Revenue(String hqCode) {
		int lastRevenue9 = hqMapper.selectLastMonth9Revenue(hqCode);
		return lastRevenue9;
	}

	@Override
	public int LastMonth10Revenue(String hqCode) {
		int lastRevenue10 = hqMapper.selectLastMonth10Revenue(hqCode);
		return lastRevenue10;
	}

	@Override
	public int LastMonth11Revenue(String hqCode) {
		int lastRevenue11 = hqMapper.selectLastMonth11Revenue(hqCode);
		return lastRevenue11;
	}

	@Override
	public int getCurrentMonthPurchases(String hqCode) {
		
		int purchases = hqMapper.selectCurrentMonthPurchases(hqCode);
		return purchases;
	}

	@Override
	public int getLastMonth1Purchases(String hqCode) {

		int purchases1 = hqMapper.selectLastMonth1Purchases(hqCode);
		return purchases1;
	}

	@Override
	public int getLastMonth2Purchases(String hqCode) {

		int purchases2 = hqMapper.selectLastMonth2Purchases(hqCode);
		return purchases2;
	}

	@Override
	public int getLastMonth3Purchases(String hqCode) {
		
		int purchases3 = hqMapper.selectLastMonth3Purchases(hqCode);
		return purchases3;
	}

	@Override
	public int getLastMonth4Purchases(String hqCode) {

		int purchases4 = hqMapper.selectLastMonth4Purchases(hqCode);
		return purchases4;
	}

	@Override
	public int getLastMonth5Purchases(String hqCode) {

		int purchases5 = hqMapper.selectLastMonth5Purchases(hqCode);
		return purchases5;
	}

	@Override
	public int getLastMonth6Purchases(String hqCode) {
		
		int purchases6 = hqMapper.selectLastMonth6Purchases(hqCode);
		return purchases6;
	}

	@Override
	public int getLastMonth7Purchases(String hqCode) {
		
		int purchases7 = hqMapper.selectLastMonth7Purchases(hqCode);
		return purchases7;
	}

	@Override
	public int getLastMonth8Purchases(String hqCode) {
		
		int purchases8 = hqMapper.selectLastMonth8Purchases(hqCode);
		return purchases8;
	}

	@Override
	public int getLastMonth9Purchases(String hqCode) {
		
		int purchases9 = hqMapper.selectLastMonth9Purchases(hqCode);
		return purchases9;
	}

	@Override
	public int getLastMonth10Purchases(String hqCode) {
		
		int purchases10 = hqMapper.selectLastMonth10Purchases(hqCode);
		return purchases10;
	}

	@Override
	public int getLastMonth11Purchases(String hqCode) {
		
		int purchases11 = hqMapper.selectLastMonth11Purchases(hqCode);
		return purchases11;
	}

	@Override
	public int getLastYearRevenues(String hqCode) {
		
		int lastYearRevenus = hqMapper.selectLastYearRevenues(hqCode);
		return lastYearRevenus;
	}

	@Override
	public int getLastYearPurchases(String hqCode) {
		
		int lastYearPurchases = hqMapper.selectLastYearPurchases(hqCode);
		return lastYearPurchases;
	}

}
