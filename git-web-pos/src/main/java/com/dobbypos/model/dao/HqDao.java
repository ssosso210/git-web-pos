package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Customer2;

public interface HqDao {

	Hq selectHqByHqId(String hqId);

	List<Store> getStoreList();

	List<Customer2> getCustomerList();
	
	List<Client> getClientList();

	int getCurrentMonthRevenue();

	int LastMonthRevenue();

	int LastMonth2Revenue();

	int LastMonth3Revenue();

	int LastMonth4Revenue();

	int LastMonth5Revenue();

	int LastMonth6Revenue();

	int LastMont7Revenue();

	int LastMonth8Revenue();

	int LastMonth9Revenue();

	int LastMonth10Revenue();

	int LastMonth11Revenue();

	int getCurrentMonthPurchases();

	int getLastMonth1Purchases();

	int getLastMonth2Purchases();

	int getLastMonth3Purchases();

	int getLastMonth4Purchases();

	int getLastMonth5Purchases();

	int getLastMonth6Purchases();

	int getLastMonth7Purchases();

	int getLastMonth8Purchases();

	int getLastMonth9Purchases();

	int getLastMonth10Purchases();

	int getLastMonth11Purchases();

	int getLastYearRevenues();

	int getLastYearPurchases();
	
}