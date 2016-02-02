package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Store;

public interface StoreService {

	List<String> getStoreNameListById(String storeName); 
	List<String> getStoreCodeListByStoreCode(String storeCode);
	void registerStore(Store store);
	Store getStoreByStoreName(String storeName);
	void editStoreInfo(Store store);
	
}
