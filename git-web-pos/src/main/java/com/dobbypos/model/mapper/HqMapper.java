package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer2;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface HqMapper {

	List<Customer2> selectCustomerList();

	List<Client> selectClientList();

	int selectCurrentMonthRevenue(String date2);

	Hq selectHqByHqId(String hqId);
	
	List<Store> selectStoreList();
	
}
