package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Orders;

public interface PayMapper {

	Customer getCustomerInfo(int customerno);

	void updateOrders(Orders orders);
	
	
}
