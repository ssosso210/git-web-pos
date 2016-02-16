package com.dobbypos.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dobbypos.model.dto.Client;

public interface ClientMapper {
	
	List<String> selectClientListByClientName(HashMap<String, Object> params);

	List<String> selectClientBusinessNumberByBusinessNumber(HashMap<String, Object> params);

	void insertClient(Client client);

	Client selectClientByClientName(HashMap<String, Object> params);

	void deleteClientByClientName(HashMap<String, Object> params);

	void editClientInfo(Client client);

}
