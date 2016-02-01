package com.dobbypos.model.dao;

import java.util.List;

public interface StoreDao {

	List<String> getStoreNameListByid(String storeName);

	List<String> getStoreCodeListByStoreCode(String storeCode);
}
