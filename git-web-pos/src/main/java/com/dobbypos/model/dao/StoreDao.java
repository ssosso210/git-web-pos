package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Store;

public interface StoreDao {

	List<String> getStoreNameListByid(String storeName);

	List<String> getStoreCodeListByStoreCode(String storeCode);

	void insertStore(Store store);

	Store getStoreByStoreName(String storeName);

	void updateStoreInfo(Store store);

	void deleteStoreByStoreCode(String storeCode);

	Store selectStoreByStoreCode(String storeCode);
}
