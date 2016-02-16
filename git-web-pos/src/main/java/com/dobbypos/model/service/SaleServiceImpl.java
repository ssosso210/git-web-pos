package com.dobbypos.model.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.SaleDao;
import com.dobbypos.model.dao.TableDao;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.OrderDetail;
import com.dobbypos.model.dto.Orders;
import com.dobbypos.model.dto.StoreTable;


@Service("saleService")
public class SaleServiceImpl implements SaleService {

	public void init() {
		System.out.println("init method is called");
	}
	
	public void destroy() {
		System.out.println("destroy method is called");
	}
	

	@Autowired
	@Qualifier("saleDao")
	private SaleDao saleDao;
	
	@Autowired
	@Qualifier("tableDao")
	private TableDao tableDao;


	@Override
	public List<Menu> getAllMenus() {
		
		return saleDao.getAllList();
	}

	@Override
	public List<Menu> getSelectMenus(String foodName) {
		
		return saleDao.getSelectMenu(foodName);
	}

	@Override
	public void tableInsertMenu(Menu menu) {
		
		saleDao.tableInsertMenu(menu);
		
	}
	
	@Override
	public List<Orders> getOnProcessingOrderByTotalTableNo(int totalTableNo) {
	
		List<Orders> orders = tableDao.orderStatus(totalTableNo);
				
		if (orders.size() > 0) {		
			List<OrderDetail> orderDetails = 
					tableDao.selectOrdering(orders.get(0).getOrderNo());
			
			orders.get(0).setOrderDetails(orderDetails);
		}
		
		return orders;
		
		
	}

	@Override
	public void createOrder(Orders order) {
		
		saleDao.insertOrder(order);
		for(OrderDetail od : order.getOrderDetails()) {
			od.setOrderNo(order.getOrderNo());
			saleDao.insertOrderDetail(od);
		}
	}
	
	
	@Override
	public void updateOrder(Orders order) {
		
	}

	
}

