package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dao.MenuDao;
import com.dobbypos.model.dto.Menu;

@Repository("menuService")
public class MenuServiceImpl implements MenuService {

	@Autowired
	@Qualifier("menuDao")
	private MenuDao menuDao;

	@Override
	public void insertMenu(Menu menu) {
		menuDao.insertMenu(menu);
		
	}
	
	@Override
	public void insertMenu2(Menu menu) {
		menuDao.insertMenu2(menu);
		
	}

	@Override
	public List<Menu> getAllMenus(String hqCode) {
		
		return menuDao.selectMenuList(hqCode);
	}

	@Override
	public void editSaleMenuInfo(Menu menu) {

		menuDao.updateSaleMenuInfo(menu);
		
	}

	@Override
	public void editSaleMenuInfoWithoutFile(Menu menu) {

		menuDao.updateSaleMenuInfoWithoutFile(menu);
		
	}

	@Override
	public void deleteSaleMenuByFoodCode(String foodCode) {
		
		menuDao.deleteSaleMenuByFoodCode(foodCode);
		
	}


	
	

}
