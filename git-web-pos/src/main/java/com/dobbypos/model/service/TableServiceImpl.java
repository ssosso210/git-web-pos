package com.dobbypos.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dao.TableDao;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;

@Repository("tableService")
public class TableServiceImpl implements TableService {

	@Autowired
	@Qualifier("tableDao")
	private TableDao tableDao;
	
	@Override
	public void insertTable(StoreTable st) {
		tableDao.insertTable(st);

	}

	@Override
	public int selectRecentTableNo(String storeCode) {
		int recentableno=tableDao.selectRecentTableNo(storeCode);
		//tableDao.insertTable(Map<recentableno+1, storeCode>);
		//tableDao.insertTable(recentableno+1, storeCode);
		return recentableno;
	}

	@Override
	public void setIsDeleted(StoreTable st) {
		tableDao.setIsDeleted(st);
		
	}

	@Override
	public List<StoreTable> selectCurrentTables(String storeCode1) {
		List<StoreTable>st=tableDao.selectCurrentTables(storeCode1);
		return st;
	}
}
