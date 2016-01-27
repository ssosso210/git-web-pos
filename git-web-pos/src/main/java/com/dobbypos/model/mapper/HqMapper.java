package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Store;

public interface HqMapper {
	
	List<Store> selectStoreList();
	
	List<Customer> selectCustomerList();

	List<Client> selectClientList();

}
