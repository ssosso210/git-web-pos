package com.dobbypos.model.dao;

import java.util.HashMap;
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
	public List<String> getClientListByClientName(String clientName, String hqCode) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("clientName", clientName);
		params.put("hqCode", hqCode);
		List<String> clients = clientMapper.selectClientListByClientName(params);
		
		return clients;
	}

	@Override
	public List<String> getClientBusinessNumberByBusinessNumber(String businessNumber, String hqCode) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("businessNumber", businessNumber);
		params.put("hqCode", hqCode);
		List<String> businessNumbers = clientMapper.selectClientBusinessNumberByBusinessNumber(params);
		return businessNumbers;
	}

	@Override
	public void insertClient(Client client) {
		
		clientMapper.insertClient(client);
		
	}

	@Override
	public Client getClientByClientName(String clientName, String hqCode) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("clientName", clientName);
		params.put("hqCode", hqCode);
		Client client = clientMapper.selectClientByClientName(params);
		
		return client;
	}

	@Override
	public void deleteClientByClientName(String clientName, String hqCode) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("clientName", clientName);
		params.put("hqCode", hqCode);
		clientMapper.deleteClientByClientName(params);
		
	}

	@Override
	public void editClientInfo(Client client) {
		
		clientMapper.editClientInfo(client);
		
	}

}
