package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Orders;

public interface PayDao {

	Customer getCustomerInfo(int customerno);

	void updateOrders(Orders orders);
	
}