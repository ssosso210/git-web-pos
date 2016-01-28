package com.dobbypos.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

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

	@Override
	public void insertTable(StoreTable table) {
		tableMapper.insertTable(table);
	}		
}
