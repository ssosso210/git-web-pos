package com.dobbypos.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.mapper.HqMapper;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Customer2;

@Repository("hqDao")
public class MySqlHqDao implements HqDao {
	

	
//	@Autowired
//	@Qualifier("sqlSessionTemplate")
//	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("hqMapper")
	private HqMapper hqMapper;

	@Override
	public Hq selectHqByHqId(String hqId) {
		
		return hqMapper.selectHqByHqId(hqId);
	}

	@Override
	public List<Store> getStoreList() {
		
		List<Store> stores = hqMapper.selectStoreList();
		
		return stores;
	}

	@Override
	public List<Customer2> getCustomerList() {

		List<Customer2> customers = hqMapper.selectCustomerList();
		
		return customers;
	}

	@Override
	public List<Client> getClientList() {

		List<Client> clients = hqMapper.selectClientList();
		
		return clients;
	}

	
	

}











