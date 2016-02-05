package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Client;

public interface ClientMapper {
	
	List<String> selectClientListByClientName(String clientName);

	List<String> selectClientBusinessNumberByBusinessNumber(String businessNumber);

	void insertClient(Client client);

	Client selectClientByClientName(String clientName);

}
