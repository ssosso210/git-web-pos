package com.dobbypos.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.mapper.HqMapper;

@Repository("hqDao")
public class TheHqDao implements HqDao {

//	@Autowired
//	@Qualifier("sqlSessionTemplate")
//	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("hqMapper")
	private HqMapper hqMapper;
	
	@Override
	public List<Store> getStoreList() {
		
		//List<Store> stores = sqlSessionTemplate.selectList("com.dobbypos.model.mapper.HqMapper.selectStoreList");
		List<Store> stores = hqMapper.selectStoreList();
		
		return stores;
	}

	@Override
	public List<Customer> getCustomerList() {
		
		List<Customer> customers = hqMapper.selectCustomerList();
		
		return customers;
	}

	@Override
	public List<Client> getClientList() {
		
		List<Client> clients = hqMapper.selectClientList();
		
		return clients;
	}

	@Override
	public Hq selectHqByHqId(String hqId) {
		// TODO Auto-generated method stub
		return null;
	}

}
