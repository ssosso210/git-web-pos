package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.Client;

public interface ClientMapper {
	
	List<String> selectClientListByClientName(HashMap<String, Object> params);

	List<String> selectClientBusinessNumberByBusinessNumber(String businessNumber);

	void insertClient(Client client);

	Client selectClientByClientName(HashMap<String, Object> params);

	void deleteClientByClientName(String clientName);

	void editClientInfo(Client client);

}
