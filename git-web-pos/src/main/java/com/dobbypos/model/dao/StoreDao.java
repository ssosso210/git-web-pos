package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Store;

public interface StoreDao {

	List<String> getStoreNameListByid(String storeName);

	List<String> getStoreCodeListByStoreCode(String storeCode);

	void insertStore(Store store);
}
