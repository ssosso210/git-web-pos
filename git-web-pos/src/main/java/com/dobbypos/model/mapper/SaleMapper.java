package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Menu;

public interface SaleMapper {
	
	List<Menu> allMenus();
	
	List<Menu> selectMenus(String foodName);

}
