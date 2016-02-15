package com.dobbypos.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.OrderDetail;
import com.dobbypos.model.dto.Orders;
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


	@Override
	public List<StoreTable> selectCurrentTables(String storeCode1) {
		List<StoreTable> st=tableMapper.selectCurrentTables(storeCode1);
		return st;
	}


	@Override
	public List<Orders> orderStatus(int totalTableNo) {
		List<Orders> orderStatus = tableMapper.orderStatus(totalTableNo);
		return orderStatus;
	}


	@Override
	public List<OrderDetail> selectOrdering(int orderNo) {
		List<OrderDetail> selectOrderding = tableMapper.selectOrdering(orderNo);
		return selectOrderding;
	}

}
