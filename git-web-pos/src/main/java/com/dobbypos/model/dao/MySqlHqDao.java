package com.dobbypos.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.mapper.HqMapper;

@Repository("hqDao")
public class MySqlHqDao implements HqDao {
	

	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("hqMapper")
	private HqMapper hqMapper;

	

	public Hq getHqByCode(String code) {
		

		Hq hq = hqMapper.selectHqByCode(code);
			
		return hq;
	}

	

}











