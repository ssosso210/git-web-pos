package com.dobbypos.model.dao;

import java.util.HashMap;
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
	public List<String> getStoreNameListByid(String storeName, String hqCode) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("storeName", storeName);
		params.put("hqCode", hqCode);
		List<String> stores = storeMapper.selectStoreNameListById(params);
		return stores;
	}

	@Override
	public List<String> getStoreCodeListByStoreCode(String storeCode, String hqCode) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("storeCode", storeCode);
		params.put("hqCode", hqCode);
		List<String> storeCodes = storeMapper.selectStoreCodeListByStoreCode(params);
		return storeCodes;
	}

	@Override
	public void insertStore(Store store) {
		storeMapper.insertStore(store);
		
	}

	@Override
	public Store getStoreByStoreName(String storeName, String hqCode) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("storeName", storeName);
		params.put("hqCode", hqCode);
		Store store = storeMapper.selectStoreByStoreName(params);
		return store;
	}

	@Override
	public void updateStoreInfo(Store store) {
		storeMapper.updateStoreInfo(store);
		
	}

	@Override
	public void deleteStoreByStoreCode(String storeCode, String hqCode) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("storeCode", storeCode);
		params.put("hqCode", hqCode);
		storeMapper.deleteStoreByStoreCode(params);
		
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

	@Override
	public int countTotalStores(String hqCode) {
		int totalStores = storeMapper.countTotalStores(hqCode);
		
		return totalStores;
	}

}
