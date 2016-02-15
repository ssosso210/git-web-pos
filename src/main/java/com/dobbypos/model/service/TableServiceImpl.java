package com.dobbypos.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dao.TableDao;
import com.dobbypos.model.dto.StoreTable;

@Repository("tableService")
public class TableServiceImpl implements TableService {

	@Autowired
	@Qualifier("tableDao")
	private TableDao tableDao;
	
	@Override
	public void insertTable(StoreTable table) {
		tableDao.insertTable(table);
		
	}

}
