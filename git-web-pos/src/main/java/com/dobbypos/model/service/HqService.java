package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Store;

public interface HqService {

	List<Store> getAllStore();
	
	List<Customer> getAllCustomer();

	List<Client> getAllClient();	

}
