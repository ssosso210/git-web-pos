package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.OrderDetail;
import com.dobbypos.model.dto.Orders;

public interface SaleMapper {
	
	List<Menu> allMenus();
	
	List<Menu> selectMenus(String foodName);

	void tableInsertMenu(Menu menu);
	
	void insertOrder(Orders order);
	
	void insertOrderDetail(OrderDetail orderDetail);
	

}
