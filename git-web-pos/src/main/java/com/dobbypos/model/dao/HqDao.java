package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.Customer;

public interface HqDao {

	Hq selectHqByHqId(String hqId);

	List<Store> getStoreList();

	List<Customer> getCustomerList();
	
	List<Client> getClientList();
	


}