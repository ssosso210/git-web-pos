package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.StoreDao;
import com.dobbypos.model.dto.Store;

@Service("storeService")
public class StoreServiceImpl implements StoreService {

	@Autowired
	@Qualifier("storeDao")
	private StoreDao storeDao;
	
	@Override
	public List<String> getStoreNameListById(String storeName) {
				
		return storeDao.getStoreNameListByid(storeName);
	}

	@Override
	public List<String> getStoreCodeListByStoreCode(String storeCode) {
		
		return storeDao.getStoreCodeListByStoreCode(storeCode);
	}

	@Override
	public void registerStore(Store store) {
		
		storeDao.insertStore(store);
		
	}

	@Override
	public Store getStoreByStoreName(String storeName) {
		
		return storeDao.getStoreByStoreName(storeName);
	}

	@Override
	public void editStoreInfo(Store store) {
		
		storeDao.updateStoreInfo(store);
		
	}
	
	

}
