package com.dobbypos.model.mapper;

import java.util.List;

public interface StoreMapper {
	
	List<String> selectStoreNameListById(String storeName);
	
	List<String> selectStoreCodeListByStoreCode(String storeCode);

}
