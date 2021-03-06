package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.StockCodeDao;
import com.dobbypos.model.dao.StockDao;
import com.dobbypos.model.dto.Stock;

@Service("stockService")
public class StockServiceImpl implements StockService {

	@Autowired
	@Qualifier("stockDao")
	private StockDao stockDao;
	
	@Override
	public List<Stock> getAllStocks() {
		return stockDao.getList();
	}
	

	@Override
	public void setStockrequire(String stockName, int snumber) {
		stockDao.setStockrequire(stockName, snumber);
		
	}

	@Override
	public List<Stock> getAllRequireStocks() {		
		return stockDao.getList();
	}


	


	@Override
	public List<Stock> getStocksByStockType(String stockType) {
		// TODO Auto-generated method stub
		return stockDao.selectStocksByStockType(stockType);
	}


	@Override
	public void setStockrequire2(String stockName, int snumber) {
		stockDao.setStockrequire2(stockName, snumber);
		
	}




	
}