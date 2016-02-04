package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.ClientDao;

@Service("clientService")
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
