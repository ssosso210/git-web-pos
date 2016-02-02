package com.dobbypos.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.mapper.HqMapper;
import com.dobbypos.model.mapper.SaleMapper;

@Repository("saleDao")
public class MySqlSaleDao implements SaleDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("saleMapper")
	private SaleMapper saleMapper;
	
	@Override
	public List<Menu> getAllList() {

		List<Menu> menus = saleMapper.allMenus();

		return menus;
	}

	@Override
	public List<Menu> getSelectMenu(String foodName) {

		List<Menu> menus = saleMapper.selectMenus(foodName);
		
		return menus;
	}



}











