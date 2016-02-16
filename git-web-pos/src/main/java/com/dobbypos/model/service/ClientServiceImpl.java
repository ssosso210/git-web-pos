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
	public List<String> getClientListByClientName(String clientName, String hqCode) {
		
		return clientDao.getClientListByClientName(clientName, hqCode);
		
		
	}

	@Override
	public List<String> getClientBusinessNumberByBusinessNumber(String businessNumber, String hqCode) {
		
		return clientDao.getClientBusinessNumberByBusinessNumber(businessNumber, hqCode);
	}

	@Override
	public void registerClient(Client client) {
		
		clientDao.insertClient(client);
		
	}

	@Override
	public Client getClientByClientName(String clientName, String hqCode) {
		
		return clientDao.getClientByClientName(clientName, hqCode);
	}

	@Override
	public void deleteClientByClientName(String clientName, String hqCode) {
		
		clientDao.deleteClientByClientName(clientName, hqCode);
		
	}

	@Override
	public void editClientInfo(Client client) {
		
		clientDao.editClientInfo(client);
		
	}

}
