package com.dobbypos.model.mapper;

<<<<<<< HEAD
import com.dobbypos.model.dto.Hq;

public interface HqMapper {
	

	
	Hq selectHqByCode(String code);
	
=======
import java.util.List;

import com.dobbypos.model.dto.Client;
import com.dobbypos.model.dto.Customer;
import com.dobbypos.model.dto.Hq;
import com.dobbypos.model.dto.Store;

public interface HqMapper {
	
	List<Store> selectStoreList();
	
	List<Customer> selectCustomerList();

	List<Client> selectClientList();
	Hq selectHqByHqId(String hqId);
>>>>>>> branch 'master' of https://github.com/ssosso210/git-web-pos.git

}
