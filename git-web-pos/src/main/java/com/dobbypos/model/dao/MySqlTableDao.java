package com.dobbypos.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;
import com.dobbypos.model.mapper.TableMapper;

@Repository("tableDao")
public class MySqlTableDao implements TableDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	@Qualifier("tableMapper")
	private TableMapper tableMapper;

	
	Integer recentableno;

	@Override
	public int selectRecentTableNo(String storeCode) {
		recentableno = tableMapper.selectRecentTableNo(storeCode);
		if (recentableno == null) {
			//insertTable(1, storeCode);
			return 0;
		} else {
		//	insertTable(recentableno, storeCode);
			return recentableno;
		}
	}
	
	
	@Override
	public void insertTable(StoreTable st) {
		tableMapper.insertTable(st);
		
	}


	@Override
	public void setIsDeleted(StoreTable st) {
		tableMapper.setIsDeleted(st);
		
	}

}
