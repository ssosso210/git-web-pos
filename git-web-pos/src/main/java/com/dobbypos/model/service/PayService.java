package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Orders;

public interface PayService {

	Customer getCustomerInfo(int customerNo);

	void updateOrders(Orders orders);
	
	
}
