package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.HqDao;
import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Customer2;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;


@Service("hqService")
public class HqServiceImpl implements HqService {

	@Autowired
	@Qualifier("hqDao")
	private HqDao hqDao;


	@Override
	public Hq searchHqByHqId(String hqId) {
		

		return hqDao.selectHqByHqId(hqId);
	}

	@Override
	public List<Store> getAllStore(String hqCode) {
		
		return hqDao.getStoreList(hqCode);
	}

	@Override
	public List<Customer2> getAllCustomer(String hqCode) {
		
		return hqDao.getCustomerList(hqCode);
	}

	@Override
	public List<Client> getAllClient(String hqCode) {
		
		return hqDao.getClientList(hqCode);
	}

	@Override
	public int getCurrentMonthRevenue(String hqCode) {
		
		return hqDao.getCurrentMonthRevenue(hqCode);
	}

	@Override
	public int getLastMonthRevenue(String hqCode) {
		
		return hqDao.LastMonthRevenue(hqCode);
	}

	@Override
	public int getLastMonth2Revenue(String hqCode) {
		
		return hqDao.LastMonth2Revenue(hqCode);
	}

	@Override
	public int getLastMonth3Revenue(String hqCode) {
		
		return hqDao.LastMonth3Revenue(hqCode);
	}

	@Override
	public int getLastMonth4Revenue(String hqCode) {
		
		return hqDao.LastMonth4Revenue(hqCode);
	}

	@Override
	public int getLastMonth5Revenue(String hqCode) {
		
		return hqDao.LastMonth5Revenue(hqCode);
	}

	@Override
	public int getLastMonth6Revenue(String hqCode) {
		
		return hqDao.LastMonth6Revenue(hqCode);
	}

	@Override
	public int getLastMonth7Revenue(String hqCode) {
		
		return hqDao.LastMont7Revenue(hqCode);
	}

	@Override
	public int getLastMonth8Revenue(String hqCode) {
		
		return hqDao.LastMonth8Revenue(hqCode);
	}

	@Override
	public int getLastMonth9Revenue(String hqCode) {
		
		return hqDao.LastMonth9Revenue(hqCode);
	}

	@Override
	public int getLastMont10hRevenue(String hqCode) {
		
		return hqDao.LastMonth10Revenue(hqCode);
	}

	@Override
	public int getLastMonth11Revenue(String hqCode) {
		
		return hqDao.LastMonth11Revenue(hqCode);
	}

	@Override
	public int getCurrentMonthPurchases(String hqCode) {
		
		return hqDao.getCurrentMonthPurchases(hqCode);
	}

	@Override
	public int getLastMonth1Purchases(String hqCode) {
		
		return hqDao.getLastMonth1Purchases(hqCode);
	}

	@Override
	public int getLastMonth2Purchases(String hqCode) {
		
		return hqDao.getLastMonth2Purchases(hqCode);
	}

	@Override
	public int getLastMonth3Purchases(String hqCode) {
		
		return hqDao.getLastMonth3Purchases(hqCode);
	}

	@Override
	public int getLastMonth4Purchases(String hqCode) {
		
		return hqDao.getLastMonth4Purchases(hqCode);
	}

	@Override
	public int getLastMonth5Purchases(String hqCode) {
		
		return hqDao.getLastMonth5Purchases(hqCode);
	}

	@Override
	public int getLastMonth6Purchases(String hqCode) {
		
		return hqDao.getLastMonth6Purchases(hqCode);
	}

	@Override
	public int getLastMonth7Purchases(String hqCode) {
		
		return hqDao.getLastMonth7Purchases(hqCode);
	}

	@Override
	public int getLastMonth8Purchases(String hqCode) {
		
		return hqDao.getLastMonth8Purchases(hqCode);
	}

	@Override
	public int getLastMonth9Purchases(String hqCode) {
		
		return hqDao.getLastMonth9Purchases(hqCode);
	}

	@Override
	public int getLastMonth10Purchases(String hqCode) {
		
		return hqDao.getLastMonth10Purchases(hqCode);
	}

	@Override
	public int getLastMonth11Purchases(String hqCode) {
		
		return hqDao.getLastMonth11Purchases(hqCode);
	}

	@Override
	public int getLastYearRevenues(String hqCode) {
		
		return hqDao.getLastYearRevenues(hqCode);
	}

	@Override
	public int getLastYearPurchases(String hqCode) {
		
		return hqDao.getLastYearPurchases(hqCode);
	}
	
}
