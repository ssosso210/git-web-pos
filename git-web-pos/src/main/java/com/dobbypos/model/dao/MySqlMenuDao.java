package com.dobbypos.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.mapper.MenuMapper;

@Repository("menuDao")
public class MySqlMenuDao implements MenuDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("menuMapper")
	private MenuMapper menuMapper;

	@Override
	public void insertMenu(Menu menu) {
		menuMapper.insertMenu(menu);
	}
	
	@Override
	public void insertMenu2(Menu menu) {
		menuMapper.insertMenu2(menu);
	}

	@Override
	public List<Menu> selectMenuList(String hqCode) {
		
		List<Menu> menus = menuMapper.selectMenuList(hqCode);
		return menus;
	}

	@Override
	public void updateSaleMenuInfo(Menu menu) {

		menuMapper.updateSaleMenuInfo(menu);
		
	}

	@Override
	public void updateSaleMenuInfoWithoutFile(Menu menu) {

		menuMapper.updateSaleMenuInfoWithoutFile(menu);
		
	}

	@Override
	public void deleteSaleMenuByFoodCode(String foodCode) {
		
		menuMapper.deleteSaleMenuByFoodCode(foodCode);
		
	}



}
