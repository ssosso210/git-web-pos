package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Customer2;

public interface HqDao {

	Hq selectHqByHqId(String hqId);

	List<Store> getStoreList(String hqCode);

	List<Customer2> getCustomerList(String hqCode);
	
	List<Client> getClientList(String hqCode);

	int getCurrentMonthRevenue(String hqCode);

	int LastMonthRevenue(String hqCode);

	int LastMonth2Revenue(String hqCode);

	int LastMonth3Revenue(String hqCode);

	int LastMonth4Revenue(String hqCode);

	int LastMonth5Revenue(String hqCode);

	int LastMonth6Revenue(String hqCode);

	int LastMont7Revenue(String hqCode);

	int LastMonth8Revenue(String hqCode);

	int LastMonth9Revenue(String hqCode);

	int LastMonth10Revenue(String hqCode);

	int LastMonth11Revenue(String hqCode);

	int getCurrentMonthPurchases(String hqCode);

	int getLastMonth1Purchases(String hqCode);

	int getLastMonth2Purchases(String hqCode);

	int getLastMonth3Purchases(String hqCode);

	int getLastMonth4Purchases(String hqCode);

	int getLastMonth5Purchases(String hqCode);

	int getLastMonth6Purchases(String hqCode);

	int getLastMonth7Purchases(String hqCode);

	int getLastMonth8Purchases(String hqCode);

	int getLastMonth9Purchases(String hqCode);

	int getLastMonth10Purchases(String hqCode);

	int getLastMonth11Purchases(String hqCode);

	int getLastYearRevenues(String hqCode);

	int getLastYearPurchases(String hqCode);
	
}