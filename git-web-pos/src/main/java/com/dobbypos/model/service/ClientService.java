package com.dobbypos.model.service;

import java.util.List;

public interface ClientService {
	
	List<String> getClientListByClientName(String clientName);

	List<String> getClientBusinessNumberByBusinessNumber(String businessNumber);

}
