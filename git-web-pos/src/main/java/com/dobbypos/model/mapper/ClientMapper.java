package com.dobbypos.model.mapper;

import java.util.List;

public interface ClientMapper {
	
	List<String> selectClientListByClientName(String clientName);

}
