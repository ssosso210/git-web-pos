package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer2;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface HqMapper {

	List<Customer2> selectCustomerList(String hqCode);

	List<Client> selectClientList(String hqCode);

	int selectCurrentMonthRevenue(String hqCode);

	Hq selectHqByHqId(String hqId);
	
	List<Store> selectStoreList(String hqCode);

	int selectLastMonthRevenue(String hqCode);

	int selectLastMonth2Revenue(String hqCode);

	int selectLastMonth3Revenue(String hqCode);

	int selectLastMonth4Revenue(String hqCode);

	int selectLastMonth5Revenue(String hqCode);

	int selectLastMonth6Revenue(String hqCode);

	int selectLastMonth7Revenue(String hqCode);

	int selectLastMonth8Revenue(String hqCode);

	int selectLastMonth9Revenue(String hqCode);

	int selectLastMonth10Revenue(String hqCode);

	int selectLastMonth11Revenue(String hqCode);

	int selectCurrentMonthPurchases(String hqCode);

	int selectLastMonth1Purchases(String hqCode);

	int selectLastMonth2Purchases(String hqCode);
	
	int selectLastMonth3Purchases(String hqCode);

	int selectLastMonth4Purchases(String hqCode);
	
	int selectLastMonth5Purchases(String hqCode);

	int selectLastMonth6Purchases(String hqCode);

	int selectLastMonth7Purchases(String hqCode);

	int selectLastMonth8Purchases(String hqCode);

	int selectLastMonth9Purchases(String hqCode);

	int selectLastMonth10Purchases(String hqCode);

	int selectLastMonth11Purchases(String hqCode);

	int selectLastYearRevenues(String hqCode);

	int selectLastYearPurchases(String hqCode);
	
}
