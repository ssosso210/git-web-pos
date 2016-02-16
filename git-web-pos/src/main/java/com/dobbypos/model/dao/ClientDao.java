package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Client;

public interface ClientDao {
	
	List<String> getClientListByClientName(String clientName, String hqCode);

	List<String> getClientBusinessNumberByBusinessNumber(String businessNumber, String hqCode);

	void insertClient(Client client);

	Client getClientByClientName(String clientName, String hqCode);

	void deleteClientByClientName(String clientName, String hqCode);

	void editClientInfo(Client client);

}
