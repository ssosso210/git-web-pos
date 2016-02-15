package com.dobbypos.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dao.TableDao;
import com.dobbypos.model.dto.OrderDetail;
import com.dobbypos.model.dto.Orders;
import com.dobbypos.model.dto.Store;
import com.dobbypos.model.dto.StoreTable;

@Repository("tableService")
public class TableServiceImpl implements TableService {

	@Autowired
	@Qualifier("tableDao")
	private TableDao tableDao;
	
	@Override
	public void insertTable(StoreTable st) {
		tableDao.insertTable(st);

	}

	@Override
	public int selectRecentTableNo(String storeCode) {
		int recentableno=tableDao.selectRecentTableNo(storeCode);
		//tableDao.insertTable(Map<recentableno+1, storeCode>);
		//tableDao.insertTable(recentableno+1, storeCode);
		return recentableno;
	}

	@Override
	public void setIsDeleted(StoreTable st) {
		tableDao.setIsDeleted(st);
		
	}

	@Override
	public List<StoreTable> selectCurrentTables(String storeCode1) {
		List<StoreTable>st=tableDao.selectCurrentTables(storeCode1);
		// 반복문 totaltableno로 order 조회 
		for(int i = 0; i<st.size(); i++){
			StoreTable table = st.get(i);			
			List<Orders> orders = tableDao.orderStatus(
					Integer.parseInt(table.getTotalTableNo()));
			if (orders.size() > 0) {
				table.setOrders(orders);			
				List<OrderDetail> orderDetails = 
						tableDao.selectOrdering(orders.get(0).getOrderNo());
				
				orders.get(0).setOrderDetails(orderDetails);
			}
		}
		// 조회된 order로 orderdetail을 조회 
		return st;
	}


}



