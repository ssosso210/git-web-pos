package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.ClientDao;
import com.dobbypos.model.dto.Client;

@Service("clientService")
public class ClientServiceImpl implements ClientService {

	@Autowired
	@Qualifier("clientDao")
	private ClientDao clientDao;
	
	@Override
	public List<String> getClientListByClientName(String clientName) {
		
		return clientDao.getClientListByClientName(clientName);
		
		
	}

	@Override
	public List<String> getClientBusinessNumberByBusinessNumber(String businessNumber) {
		
		return clientDao.getClientBusinessNumberByBusinessNumber(businessNumber);
	}

	@Override
	public void registerClient(Client client) {
		
		clientDao.insertClient(client);
		
	}

	@Override
	public Client getClientByClientName(String clientName) {
		
		return clientDao.getClientByClientName(clientName);
	}

}
