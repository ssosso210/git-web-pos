package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface HqDao {
	
	List<Store> getStoreList();

	List<Customer> getCustomerList();
	
	List<Client> getClientList();
	Hq selectHqByHqId(String hqId);
}
