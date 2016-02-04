package com.dobbypos.model.dao;

import java.util.List;

public interface ClientDao {
	
	List<String> getClientListByClientName(String clientName);

	List<String> getClientBusinessNumberByBusinessNumber(String businessNumber);

}
