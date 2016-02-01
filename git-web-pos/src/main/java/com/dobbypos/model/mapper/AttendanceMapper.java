package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Employee;

public interface AttendanceMapper {

	List<Employee> selectAttendanceAllByStoreCode(String storeCode);


}
