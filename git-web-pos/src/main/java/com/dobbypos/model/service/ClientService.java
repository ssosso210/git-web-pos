package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Client;

public interface ClientService {
	
	List<String> getClientListByClientName(String clientName, String hqCode);

	List<String> getClientBusinessNumberByBusinessNumber(String businessNumber);

	void registerClient(Client client);

	Client getClientByClientName(String clientName, String hqCode);

	void deleteClientByClientName(String clientName);

	void editClientInfo(Client client);

}
