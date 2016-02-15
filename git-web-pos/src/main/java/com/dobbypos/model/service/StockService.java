package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Stock;
import com.dobbypos.model.dto.StockCode;

public interface StockService {

	List<Stock> getAllStocks();



	public void setStockrequire(String stockName, int snumber);
	public List<Stock> getAllRequireStocks() ;

	List<Stock> getStocksByStockType(String stockType);



	public void setStockrequire2(String stockName, int snumber);

}
