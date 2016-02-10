package com.dobbypos.model.service;

import java.util.List;

import com.dobbypos.model.dto.Client;

public interface ClientService {
	
	List<String> getClientListByClientName(String clientName);

	List<String> getClientBusinessNumberByBusinessNumber(String businessNumber);

	void registerClient(Client client);

	Client getClientByClientName(String clientName);

}
