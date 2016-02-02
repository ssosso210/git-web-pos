package com.dobbypos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.common.Util;
import com.dobbypos.model.dao.AttendanceDao;
import com.dobbypos.model.dao.EmployeeDao;
import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.Employee;

@Service("attendanceService")
public class AttendanceServiceImpl implements AttendanceService {

	public void init() {
		System.out.println("init method is called");
	}

	public void destroy() {
		System.out.println("destroy method is called");
	}

	@Autowired
	@Qualifier("attendanceDao")
	private AttendanceDao attendanceDao;
	
	@Autowired
	@Qualifier("employeeDao")
	private EmployeeDao employeeDao;
	


	@Override
	public List<Employee> getEmployeesByStoreCodeAndUser(String storeCode) {

		return employeeDao.selectEmployeesByStoreCodeAndUser(storeCode);
	}

	@Override
	public List<Attendance> getAttendanceAllByStoreCode(String storeCode) {

		return attendanceDao.selectAttendanceAllByStoreCode(storeCode);
	}

	@Override
	public int setAttendToWork(int employeeNum) {
		
		int returnNum = 0;
		//오늘 출근한지 알아보기 가장 최신 날짜의 값을 불러옴 
		Attendance attendance = attendanceDao.selectAttendancByEmployeeNoDate(employeeNum, Util.getTodayDate());
		if((attendance == null) || (attendance.getAttendanceNo() < 1)){
			// data가 없으면 insert 
			returnNum = attendanceDao.insertAttendanceByEmployeeNo(employeeNum);
		}else{
			System.out.println("setAttendToWork --> " + attendance.toString());
		}
		
		
		return returnNum;
	}

	@Override
	public int setAttendOffWork(int attendanceNo, int employeeNum) {
		
		int returnNum = 0;
		//퇴근한 여부를 알아보기 
		Attendance attendance = attendanceDao.selectAttendancByEmployeeNoDate(employeeNum, Util.getTodayDate());
		if(attendance ==  null){  // 출근하지 않았으면
			System.out.println("출근하지 않았음 ");
			return returnNum;
		}else if(!attendance.getStartWork().equals(attendance.getEndWork()) ){ // 퇴근했으면 
			System.out.println("퇴근했음");
			return returnNum;
		}
		
		
		return attendanceDao.updateAttendanceEndWorkByAttendanceNo(attendanceNo);
	}

	@Override
	public Attendance selectAttendancByEmployeeNoDate(int employeeNum, String todayDate) {
		// TODO Auto-generated method stub
		return attendanceDao.selectAttendancByEmployeeNoDate(employeeNum, todayDate);
	}


	

}
