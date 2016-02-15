package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer2;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface HqMapper {

	List<Customer2> selectCustomerList();

	List<Client> selectClientList();

	int selectCurrentMonthRevenue();

	Hq selectHqByHqId(String hqId);
	
	List<Store> selectStoreList();

	int selectLastMonthRevenue();

	int selectLastMonth2Revenue();

	int selectLastMonth3Revenue();

	int selectLastMonth4Revenue();

	int selectLastMonth5Revenue();

	int selectLastMonth6Revenue();

	int selectLastMonth7Revenue();

	int selectLastMonth8Revenue();

	int selectLastMonth9Revenue();

	int selectLastMonth10Revenue();

	int selectLastMonth11Revenue();

	int selectCurrentMonthPurchases();

	int selectLastMonth1Purchases();

	int selectLastMonth2Purchases();
	
	int selectLastMonth3Purchases();

	int selectLastMonth4Purchases();
	
	int selectLastMonth5Purchases();

	int selectLastMonth6Purchases();

	int selectLastMonth7Purchases();

	int selectLastMonth8Purchases();

	int selectLastMonth9Purchases();

	int selectLastMonth10Purchases();

	int selectLastMonth11Purchases();

	int selectLastYearRevenues();

	int selectLastYearPurchases();
	
}
