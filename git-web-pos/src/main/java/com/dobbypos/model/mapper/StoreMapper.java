package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface StoreMapper {
	
	List<String> selectStoreNameListById(String storeName);
	
	List<String> selectStoreCodeListByStoreCode(String storeCode);

	void insertStore(Store store);

	Store selectStoreByStoreName(String storeName);

	void updateStoreInfo(Store store);

	void deleteStoreByStoreCode(String storeCode);

	Store selectStoreByStoreCode(String storeCode);

	String selectStoreNameByStoreCode(String storeCode);

	Hq selectHqByStoreCode(String storeCode);

}
