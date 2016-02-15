package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Menu;

public interface MenuService {

	void insertMenu(Menu menu);
	
	void insertMenu2(Menu menu);

	List<Menu> getAllMenus(String hqCode);

	void editSaleMenuInfo(Menu menu);

	void editSaleMenuInfoWithoutFile(Menu menu);

	void deleteSaleMenuByFoodCode(String foodCode);

}