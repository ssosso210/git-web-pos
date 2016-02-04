package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Menu;

public interface SaleDao {


	List<Menu> getAllList();
	List<Menu> getSelectMenu(String foodName);

}