package com.dobbypos.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;
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

	@Override
	public List<String> getStoreCodeListByStoreCode(String storeCode) {
		List<String> storeCodes = storeMapper.selectStoreCodeListByStoreCode(storeCode);
		return storeCodes;
	}

	@Override
	public void insertStore(Store store) {
		storeMapper.insertStore(store);
		
	}

	@Override
	public Store getStoreByStoreName(String storeName) {
		Store store = storeMapper.selectStoreByStoreName(storeName);
		return store;
	}

	@Override
	public void updateStoreInfo(Store store) {
		storeMapper.updateStoreInfo(store);
		
	}

	@Override
	public void deleteStoreByStoreCode(String storeCode) {
		storeMapper.deleteStoreByStoreCode(storeCode);
		
	}

	@Override
	public Store selectStoreByStoreCode(String storeCode) {
		// TODO Auto-generated method stub
		return storeMapper.selectStoreByStoreCode(storeCode);
	}

	@Override
	public String selectStoreNameByStoreCode(String storeCode) {
		// TODO Auto-generated method stub
		return storeMapper.selectStoreNameByStoreCode(storeCode);
	}

	@Override
	public Hq selectHqByStoreCode(String storeCode) {
		// TODO Auto-generated method stub
		return storeMapper.selectHqByStoreCode(storeCode);
	}

}
