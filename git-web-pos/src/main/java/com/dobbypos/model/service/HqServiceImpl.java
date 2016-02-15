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
	public List<Store> getAllStore() {
		
		return hqDao.getStoreList();
	}

	@Override
	public List<Customer2> getAllCustomer() {
		
		return hqDao.getCustomerList();
	}

	@Override
	public List<Client> getAllClient() {
		
		return hqDao.getClientList();
	}

	@Override
	public int getCurrentMonthRevenue() {
		
		return hqDao.getCurrentMonthRevenue();
	}

	@Override
	public int getLastMonthRevenue() {
		
		return hqDao.LastMonthRevenue();
	}

	@Override
	public int getLastMonth2Revenue() {
		
		return hqDao.LastMonth2Revenue();
	}

	@Override
	public int getLastMonth3Revenue() {
		
		return hqDao.LastMonth3Revenue();
	}

	@Override
	public int getLastMonth4Revenue() {
		
		return hqDao.LastMonth4Revenue();
	}

	@Override
	public int getLastMonth5Revenue() {
		
		return hqDao.LastMonth5Revenue();
	}

	@Override
	public int getLastMonth6Revenue() {
		
		return hqDao.LastMonth6Revenue();
	}

	@Override
	public int getLastMonth7Revenue() {
		
		return hqDao.LastMont7Revenue();
	}

	@Override
	public int getLastMonth8Revenue() {
		
		return hqDao.LastMonth8Revenue();
	}

	@Override
	public int getLastMonth9Revenue() {
		
		return hqDao.LastMonth9Revenue();
	}

	@Override
	public int getLastMont10hRevenue() {
		
		return hqDao.LastMonth10Revenue();
	}

	@Override
	public int getLastMonth11Revenue() {
		
		return hqDao.LastMonth11Revenue();
	}

	@Override
	public int getCurrentMonthPurchases() {
		
		return hqDao.getCurrentMonthPurchases();
	}

	@Override
	public int getLastMonth1Purchases() {
		
		return hqDao.getLastMonth1Purchases();
	}

	@Override
	public int getLastMonth2Purchases() {
		
		return hqDao.getLastMonth2Purchases();
	}

	@Override
	public int getLastMonth3Purchases() {
		
		return hqDao.getLastMonth3Purchases();
	}

	@Override
	public int getLastMonth4Purchases() {
		
		return hqDao.getLastMonth4Purchases();
	}

	@Override
	public int getLastMonth5Purchases() {
		
		return hqDao.getLastMonth5Purchases();
	}

	@Override
	public int getLastMonth6Purchases() {
		
		return hqDao.getLastMonth6Purchases();
	}

	@Override
	public int getLastMonth7Purchases() {
		
		return hqDao.getLastMonth7Purchases();
	}

	@Override
	public int getLastMonth8Purchases() {
		
		return hqDao.getLastMonth8Purchases();
	}

	@Override
	public int getLastMonth9Purchases() {
		
		return hqDao.getLastMonth9Purchases();
	}

	@Override
	public int getLastMonth10Purchases() {
		
		return hqDao.getLastMonth10Purchases();
	}

	@Override
	public int getLastMonth11Purchases() {
		
		return hqDao.getLastMonth11Purchases();
	}

	@Override
	public int getLastYearRevenues() {
		
		return hqDao.getLastYearRevenues();
	}

	@Override
	public int getLastYearPurchases() {
		
		return hqDao.getLastYearPurchases();
	}
	
}
