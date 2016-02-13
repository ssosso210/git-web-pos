package com.dobbypos.model.dao;

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


}
