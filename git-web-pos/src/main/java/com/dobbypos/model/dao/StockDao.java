package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Stock;

public interface StockDao {

	List<Stock> getList();
	
	public void setStockrequire(String stockName, int snumber);

}	