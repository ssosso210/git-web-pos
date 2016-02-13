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
	


}