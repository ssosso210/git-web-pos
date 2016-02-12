package com.dobbypos.model.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.SaleDao;
import com.dobbypos.model.dto.Menu;


@Service("saleService")
public class SaleServiceImpl implements SaleService {

	public void init() {
		System.out.println("init method is called");
	}
	
	public void destroy() {
		System.out.println("destroy method is called");
	}
	

	@Autowired
	@Qualifier("saleDao")
	private SaleDao saleDao;


	@Override
	public List<Menu> getAllMenus() {
		
		return saleDao.getAllList();
	}

	@Override
	public List<Menu> getSelectMenus(String foodName) {
		
		return saleDao.getSelectMenu(foodName);
	}

	@Override
	public void tableInsertMenu(Menu menu) {
		
		saleDao.tableInsertMenu(menu);
		
	}

	
}
