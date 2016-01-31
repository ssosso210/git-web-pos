package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Stock;
import com.dobbypos.model.dto.StockCode;

public interface StockMapper {

	
	List<Stock> selectStocks() ;

	List<StockCode> selectStockCodes();	

}
