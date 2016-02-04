package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.dobbypos.model.dao.ClientDao;

public class ClientServiceImpl implements ClientService {

	@Autowired
	@Qualifier("clientDao")
	private ClientDao clientDao;
	
	@Override
	public List<String> getClientListByClientName(String clientName) {
		
		List<String> clients = clientDao.getClientListByClientName(clientName);
		
		return clients;
	}

}
