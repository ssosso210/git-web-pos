package com.dobbypos.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.mapper.StoreMapper;

@Repository("storeDao")
public class MySqlStoreDao implements StoreDao {

	@Autowired
	@Qualifier("storeMapper")
	private StoreMapper storeMapper;
	
	@Override
	public List<String> getStoreNameListByid(String storeName) {
		List<String> stores = storeMapper.selectStoreNameListById(storeName);
		return stores;
	}

}
