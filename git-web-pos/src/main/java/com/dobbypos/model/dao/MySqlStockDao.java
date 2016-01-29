package com.dobbypos.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Stock;
import com.dobbypos.model.dto.StockCode;
import com.dobbypos.model.mapper.StockMapper;

@Repository("stockDao")
public class MySqlStockDao implements StockDao {
	

	
	@Autowired
	@Qualifier("stockMapper")
	private StockMapper stockMapper;

	@Override
	public List<Stock> getList() {
		List<Stock> stocks = stockMapper.selectStocks();		
		return stocks;
		
	}

	@Override
	public List<StockCode> getList2() {
		List<StockCode> stockcodes = stockMapper.selectStockCodes();
		return stockcodes;
	}

	
		
}
