package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Stock;
import com.dobbypos.model.dto.StockCode;

public interface StockService {

	List<Stock> getAllStocks();

	List<Stock> getStocksByStockCodeNo(int stockCodeNo);

	public void setStockrequire(String stockName, int snumber);

	List<Stock> getAllRequireStocks();

}
