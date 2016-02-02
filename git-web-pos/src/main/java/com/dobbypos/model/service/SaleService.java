package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Menu;

public interface SaleService {

	List<Menu> getAllMenus();

	List<Menu> getSelectMenus(String foodName);
	

}