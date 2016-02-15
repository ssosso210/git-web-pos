package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Customer2;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface HqService {

	Hq searchHqByHqId(String hqId);
	
	List<Store> getAllStore();
	
	List<Customer2> getAllCustomer();

	List<Client> getAllClient();

	int getCurrentMonthRevenue();

	int getLastMonthRevenue();

	int getLastMonth2Revenue();

	int getLastMonth3Revenue();

	int getLastMonth4Revenue();

	int getLastMonth5Revenue();

	int getLastMonth6Revenue();

	int getLastMonth7Revenue();

	int getLastMonth8Revenue();

	int getLastMonth9Revenue();

	int getLastMont10hRevenue();

	int getLastMonth11Revenue();

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