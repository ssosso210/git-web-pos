package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dobbypos.model.dto.StoreTable;

public interface TableMapper {
	

	Integer selectRecentTableNo(String storeCode);
	
	//void insertTable(Integer recentableno, String storeCode);
	void insertTable(StoreTable st);

	void setIsDeleted(StoreTable st);

	List<StoreTable> selectCurrentTables(String storeCode1);
}
