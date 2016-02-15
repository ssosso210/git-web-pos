package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Orders;

public interface SaleService {

	List<Menu> getAllMenus();

	List<Menu> getSelectMenus(String foodName);
	
	void tableInsertMenu(Menu menu);

	List<Orders> getOnProcessingOrderByTotalTableNo(int totalTableNo);
	
	void createOrUpdateOrder(Orders order);
	
	

}