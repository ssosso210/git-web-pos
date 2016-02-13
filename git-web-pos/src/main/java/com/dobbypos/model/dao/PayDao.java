package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Menu;

public interface PayDao {

	Customer getCustomerInfo(int customerno);
	
}