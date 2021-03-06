package com.dobbypos.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dobbypos.model.dto.Stock;

public interface StockMapper {

	
	List<Stock> selectStocks() ;

	public void setStockrequire(@Param("stockName") String stockName,@Param("snumber")  int snumber);

	List<Stock> selectRequireStocks();

	List<Stock> selectStocksByStockType(String stockType);

	public void setStockrequire2(@Param("stockName") String stockName,@Param("snumber") int snumber);
	

}
