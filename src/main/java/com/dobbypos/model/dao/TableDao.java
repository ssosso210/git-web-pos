package com.dobbypos.model.dao;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.StoreTable;

public interface TableDao {

	void insertTable(StoreTable table);

}