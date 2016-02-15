package com.dobbypos.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Client;
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

	@Override
	public List<String> getClientBusinessNumberByBusinessNumber(String businessNumber) {
		
		List<String> businessNumbers = clientMapper.selectClientBusinessNumberByBusinessNumber(businessNumber);
		return businessNumbers;
	}

	@Override
	public void insertClient(Client client) {
		
		clientMapper.insertClient(client);
		
	}

	@Override
	public Client getClientByClientName(String clientName) {
		
		Client client = clientMapper.selectClientByClientName(clientName);
		
		return client;
	}

	@Override
	public void deleteClientByClientName(String clientName) {
		
		clientMapper.deleteClientByClientName(clientName);
		
	}

	@Override
	public void editClientInfo(Client client) {
		
		clientMapper.editClientInfo(client);
		
	}

}
