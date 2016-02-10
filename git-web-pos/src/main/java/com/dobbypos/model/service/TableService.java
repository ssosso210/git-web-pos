package com.dobbypos.model.service;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;

public interface TableService {
	void insertTable(StoreTable st);
	int selectRecentTableNo(String storeCode1);
	void setIsDeleted(StoreTable st);
	List<StoreTable> selectCurrentTables(String storeCode1);
}