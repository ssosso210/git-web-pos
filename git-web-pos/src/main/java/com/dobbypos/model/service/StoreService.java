package com.dobbypos.model.service;

import java.util.List;

public interface StoreService {

	List<String> getStoreNameListById(String storeName); 
	List<String> getStoreCodeListByStoreCode(String storeCode);
	
}
