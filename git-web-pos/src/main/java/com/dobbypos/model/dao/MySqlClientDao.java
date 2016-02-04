package com.dobbypos.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.mapper.ClientMapper;


@Repository("clientDao")
public class MySqlClientDao implements ClientDao {

	@Autowired
	@Qualifier("clientMapper")
	private ClientMapper clientMapper;
	
	@Override
	public List<String> getClientListByClientName(String clientName) {
		
		List<String> clients = clientMapper.selectClientListByClientName(clientName);
		
		return clients;
	}

}
