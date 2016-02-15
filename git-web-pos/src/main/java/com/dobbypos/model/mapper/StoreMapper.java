package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.Store;

public interface StoreMapper {
	
	List<String> selectStoreNameListById(HashMap<String, Object> params);
	
	List<String> selectStoreCodeListByStoreCode(HashMap<String, Object> params);

	void insertStore(Store store);

	Store selectStoreByStoreName(HashMap<String, Object> params);

	void updateStoreInfo(Store store);

	void deleteStoreByStoreCode(HashMap<String, Object> params);

	Store selectStoreByStoreCode(String storeCode);

	String selectStoreNameByStoreCode(String storeCode);

}
