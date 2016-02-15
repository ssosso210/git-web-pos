package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Store;

public interface StoreDao {

	List<String> getStoreNameListByid(String storeName, String hqCode);

	List<String> getStoreCodeListByStoreCode(String storeCode, String hqCode);

	void insertStore(Store store);

	Store getStoreByStoreName(String storeName, String hqCode);

	void updateStoreInfo(Store store);

	void deleteStoreByStoreCode(String storeCode, String hqCode);

	Store selectStoreByStoreCode(String storeCode);

	String selectStoreNameByStoreCode(String storeCode);
}
