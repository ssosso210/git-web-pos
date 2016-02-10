package com.dobbypos.model.dao;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;

public interface TableDao {

	//void insertTable(int recentableno, String storeCode);
	void insertTable(StoreTable st);
	int selectRecentTableNo(String storeCode);

}