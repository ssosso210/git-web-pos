package com.dobbypos.model.service;

import java.util.HashMap;

import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;

public interface TableService {
	void insertTable(StoreTable st);
	int selectRecentTableNo(String storeCode1);
}