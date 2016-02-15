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
	public List<String> getStoreNameListById(String storeName, String hqCode) {
				
		return storeDao.getStoreNameListByid(storeName, hqCode);
	}

	@Override
	public List<String> getStoreCodeListByStoreCode(String storeCode, String hqCode) {
		
		return storeDao.getStoreCodeListByStoreCode(storeCode, hqCode);
	}

	@Override
	public void registerStore(Store store) {
		
		storeDao.insertStore(store);
		
	}

	@Override
	public Store getStoreByStoreName(String storeName, String hqCode) {
		
		return storeDao.getStoreByStoreName(storeName, hqCode);
	}

	@Override
	public void editStoreInfo(Store store) {
		
		storeDao.updateStoreInfo(store);
		
	}

	@Override
	public void deleteStoreByStoreCode(String storeCode, String hqCode) {

		storeDao.deleteStoreByStoreCode(storeCode, hqCode);
		
	}

	@Override
	public Store getStoreByStoreCode(String storeCode) {
		return storeDao.selectStoreByStoreCode(storeCode);
	}

	@Override
	public String getStoreNameByStoreCode(String storeCode) {
		return storeDao.selectStoreNameByStoreCode(storeCode);
	}
	
	

}
