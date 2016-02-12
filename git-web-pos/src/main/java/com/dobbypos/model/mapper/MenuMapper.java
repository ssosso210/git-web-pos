package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Menu;

public interface MenuMapper {
	void insertMenu(Menu menu);
	void insertMenu2(Menu menu);
	List<Menu> selectMenuList(String hqCode);
	void updateSaleMenuInfo(Menu menu);
	void updateSaleMenuInfoWithoutFile(Menu menu);
	void deleteSaleMenuByFoodCode(String foodCode);

}
