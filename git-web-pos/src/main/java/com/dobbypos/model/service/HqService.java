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

	int getCurrentMonthRevenue(String date2);

}