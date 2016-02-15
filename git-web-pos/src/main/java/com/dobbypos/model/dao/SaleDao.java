package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.OrderDetail;
import com.dobbypos.model.dto.Orders;

public interface SaleDao {


	List<Menu> getAllList();
	List<Menu> getSelectMenu(String foodName);
	void tableInsertMenu(Menu menu);
	
	void insertOrder(Orders order);
	
	void insertOrderDetail(OrderDetail orderDetail);
}