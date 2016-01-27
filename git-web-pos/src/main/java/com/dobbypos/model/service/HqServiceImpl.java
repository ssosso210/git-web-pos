package com.dobbypos.model.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.HqDao;
import com.dobbypos.model.dto.Hq;


@Service("hqService")
public class HqServiceImpl implements HqService {

	public void init() {
		System.out.println("init method is called");
	}
	
	public void destroy() {
		System.out.println("destroy method is called");
	}
	

	@Autowired
	@Qualifier("hqDao")
	private HqDao hqDao;


	@Override
	public Hq searchHqByHqId(String hqId) {
		

		return hqDao.selectHqByHqId(hqId);
	}

	

	
	
	
}
