package com.dobbypos.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.StoreTable;
import com.dobbypos.model.mapper.MenuMapper;
import com.dobbypos.model.mapper.TableMapper;

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


}
