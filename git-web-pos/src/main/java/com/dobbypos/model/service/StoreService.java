package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface StoreService {

	List<String> getStoreNameListById(String storeName, String hqCode); 
	List<String> getStoreCodeListByStoreCode(String storeCode, String hqCode);
	void registerStore(Store store);
	Store getStoreByStoreName(String storeName, String hqCode);
	void editStoreInfo(Store store);
	void deleteStoreByStoreCode(String storeCode, String hqCode);
	Store getStoreByStoreCode(String storeCode);
	String getStoreNameByStoreCode(String storeCode);
	Hq getHqByStoreCode(String storeCode);
		
}
