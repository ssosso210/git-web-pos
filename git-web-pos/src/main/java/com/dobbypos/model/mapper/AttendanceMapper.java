package com.dobbypos.model.mapper;

import java.util.List;

import com.dobbypos.model.dto.Attendance;

public interface AttendanceMapper {

	List<Attendance> selectAttendanceAllByStoreCode(String storeCode);


}
