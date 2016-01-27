package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.HqDao;
import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

@Service("hqService")
public class HqServiceImpl implements HqService {
	
	@Autowired
	@Qualifier("hqDao")
	private HqDao hqDao;
	
	@Override
	public List<Store> getAllStore() {
		
		return hqDao.getStoreList();
	}

	@Override
	public List<Customer> getAllCustomer() {
		
		return hqDao.getCustomerList();
	}

	@Override
	public List<Client> getAllClient() {
		
		return hqDao.getClientList();
	}
	@Override
	public Hq searchHqByHqId(String hqId) {
		

		return hqDao.selectHqByHqId(hqId);
	}

	

}
