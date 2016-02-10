package com.dobbypos.model.dao;

import java.util.List;

import com.dobbypos.model.dto.Client;

public interface ClientDao {
	
	List<String> getClientListByClientName(String clientName);

	List<String> getClientBusinessNumberByBusinessNumber(String businessNumber);

	void insertClient(Client client);

	Client getClientByClientName(String clientName);

}
