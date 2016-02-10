package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Menu;

public interface MenuDao {

	void insertMenu(Menu menu);
	void insertMenu2(Menu menu);
	List<Menu> selectMenuList(String hqCode);

}