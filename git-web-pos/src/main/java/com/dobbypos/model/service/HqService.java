package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Customer2;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface HqService {

	Hq searchHqByHqId(String hqId);
	
	List<Store> getAllStore(String hqCode);
	
	List<Customer2> getAllCustomer(String hqCode);

	List<Client> getAllClient(String hqCode);

	int getCurrentMonthRevenue(String hqCode);

	int getLastMonthRevenue(String hqCode);

	int getLastMonth2Revenue(String hqCode);

	int getLastMonth3Revenue(String hqCode);

	int getLastMonth4Revenue(String hqCode);

	int getLastMonth5Revenue(String hqCode);

	int getLastMonth6Revenue(String hqCode);

	int getLastMonth7Revenue(String hqCode);

	int getLastMonth8Revenue(String hqCode);

	int getLastMonth9Revenue(String hqCode);

	int getLastMont10hRevenue(String hqCode);

	int getLastMonth11Revenue(String hqCode);

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