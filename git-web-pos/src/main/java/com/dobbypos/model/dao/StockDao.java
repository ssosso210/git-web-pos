package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Stock;
import com.dobbypos.model.dto.StockCode;

public interface StockDao {

	List<Stock> getList();
	List<StockCode> getList2();	
	
}