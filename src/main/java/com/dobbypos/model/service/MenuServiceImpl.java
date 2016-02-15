package com.dobbypos.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dao.MenuDao;
import com.dobbypos.model.dao.TableDao;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.StoreTable;

@Repository("menuService")
public class MenuServiceImpl implements MenuService {

	@Autowired
	@Qualifier("menuDao")
	private MenuDao menuDao;

	@Override
	public void insertMenu(Menu menu) {
		menuDao.insertMenu(menu);
		
	}
	
	

}
