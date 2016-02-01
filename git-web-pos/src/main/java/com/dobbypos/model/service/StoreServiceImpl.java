package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.StoreDao;

@Service("storeService")
public class StoreServiceImpl implements StoreService {

	@Autowired
	@Qualifier("storeDao")
	private StoreDao storeDao;
	
	@Override
	public List<String> getStoreNameListById(String storeName) {
				
		return storeDao.getStoreNameListByid(storeName);
	}
	
	

}