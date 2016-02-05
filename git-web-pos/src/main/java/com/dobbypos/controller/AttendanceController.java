package com.dobbypos.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dobbypos.common.Util;
import com.dobbypos.model.dto.Attendance;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.service.AttendanceService;
import com.dobbypos.model.service.EmployeeService;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {
	
	@Autowired
	@Qualifier("attendanceService")
	private AttendanceService attendanceService;
	
	@Autowired
	@Qualifier("employeeService")
	private EmployeeService employeeService;
	
	private String urlstr = "attendance/";
	

	/**
	 * 출석을 위해서 헤딩 store의 직원리스트를 불러옴
	 * @return
	 */
	@RequestMapping(value = "main.action", method = RequestMethod.GET)
	public String attendancemain(HttpSession session, HttpServletRequest req) {
		Employee employee = (Employee)session.getAttribute("loginuser");
		
		List<Employee> employees = attendanceService.getEmployeesByStoreCodeAndUser(employee.getStoreCode());
		
		for (Employee employee2 : employees) {
			System.out.println(employee2.toString());
			if (employee2.getAttendanceone() != null) {
				System.out.println(employee2.getAttendanceone().toString());
				
			}
		}
		req.setAttribute("employees", employees);
		req.setAttribute("returnMsg", "");
		req.setAttribute("todayStr", Util.getTodayDate());
	
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return urlstr+"main";
		
		
		
		
		
	}	
	
	
	/**
	 * 출석, 조퇴, 퇴근 실행 
	 * @return
	 */
	/*
	@RequestMapping(value = "attendcheck.action", method = RequestMethod.POST)
	@ResponseBody
	public String attendancecheck(HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		String employeeNo = req.getParameter("employeeNo");
		int employeeNum = Integer.parseInt(employeeNo);
		String attendType = req.getParameter("attendType");
		String attenNo = req.getParameter("attendanceNo");
		int attendanceNo = Integer.parseInt(attenNo);
		String passwd = req.getParameter("passwd");
		
		System.out.println("attendcheck.action ------ employeeNo="+employeeNo+ ", attendType="+attendType+", attendanceNo="+attendanceNo +", passwd="+passwd);
		
		int returnValue = 0;
		String returnMsg = "";
		String buttonMsg = "";
		Attendance attendance = null;
		
		//비밀번호 check
		passwd = Util.getHashedString(passwd, "SHA-1");
		Employee employee = employeeService.searchEmployeeByNo(employeeNum);
		
		if((employee == null) || !(employee.getPasswd().equals(passwd)) ){
			// employee 값이 없거나, 비밀번호가 일치하지 않을 때 
			returnMsg = "비밀번호가 일치하지 않습니다.";
			
		}else{ // 비밀번호 인증
			//출근 일 경우 값을 insert
			if(attendType.equals("towork")){ // 출근 
				returnValue = attendanceService.setAttendToWork(employeeNum); 
				if(returnValue == 0){
					returnMsg = "출근하였습니다. ";
				}else{
					//현재 퇴근한 날짜를 db에서 가져오기 
					attendance =  attendanceService.selectAttendancByEmployeeNoDate(employeeNum, Util.getTodayDate());
					buttonMsg = "출근 : " +Util.getTimestampFormat(attendance.getStartWork());
				}
			}else if(attendType.equals("offwork")){ // 퇴근
				if(attendanceNo < 1){
					returnMsg = "먼저 출근을 하세요. ";
				}else{
					returnValue = attendanceService.setAttendOffWork(attendanceNo, employeeNum);
					if(returnValue < 1){
						returnMsg = "퇴근을 하거나 출근하지 않았습니다.";
					}else{
						//현재 퇴근한 날짜를 db에서 가져오기 
						attendance =  attendanceService.selectAttendancByEmployeeNoDate(employeeNum, Util.getTodayDate());
						buttonMsg = "퇴근 : "+Util.getTimestampFormat(attendance.getEndWork());
					}

					
				}
			}
			
		}
		
		
		
	
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
//		Gson gson = new Gson();
		HashMap<String, String> map = new HashMap<>();


		map.put("attendType", attendType);
		map.put("buttonMsg", buttonMsg);
		map.put("employeeNo", employeeNo);
		map.put("returnMsg", returnMsg);
		map.put("returnValue", returnValue+ "");
		
		System.out.println("attendType="+ attendType+ ", buttonMsg="+ buttonMsg+", employeeNo="+ employeeNo+", returnMsg="+ returnMsg+", returnValue="+ returnValue);
		
		
		String result = gson.toJson(map);
		
		res.setContentType("application/json;charset=utf-8");
		return result;

	}	*/
	
	/**
	 * 출석, 조퇴, 퇴근 실행 
	 * @return
	 */
	@RequestMapping(value = "attendcheck.action", method = RequestMethod.POST)
	public String attendancecheck(HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		String employeeNo = req.getParameter("employeeNo");
		int employeeNum = Integer.parseInt(employeeNo);
		String attendType = req.getParameter("attendType");
		String attenNo = req.getParameter("attendanceNo");
		int attendanceNo = Integer.parseInt(attenNo);
		String passwd = req.getParameter("model_input_passwd");
		
		
		int returnValue = 0;
		String returnMsg = "";
		Attendance attendance = null;
		String successMsg= "";
		
		//비밀번호 check
		passwd = Util.getHashedString(passwd, "SHA-1");
		Employee employee = employeeService.searchEmployeeByNo(employeeNum);
		
		if((employee == null) || !(employee.getPasswd().equals(passwd)) ){
			// employee 값이 없거나, 비밀번호가 일치하지 않을 때 
			returnMsg = "비밀번호가 일치하지 않습니다.";
			
		}else{ // 비밀번호 인증
			//출근 일 경우 값을 insert
			if(attendType.equals("towork")){ // 출근 
				returnValue = attendanceService.setAttendToWork(employeeNum); 
				if(returnValue == 0){
					returnMsg = " 출근하였습니다. ";
				}else{
					//현재 퇴근한 날짜를 db에서 가져오기 
					attendance =  attendanceService.selectAttendancByEmployeeNoDate(employeeNum, Util.getTodayDate());
					successMsg = Util.getTimestampFormat(attendance.getStartWork())+ "에 "+employee.getEmployeeName()+"씨가 출근하였습니다.";
				}
			}else if(attendType.equals("offwork")){ // 퇴근
				if(attendanceNo < 1){
					returnMsg = "먼저 출근을 하세요. ";
				}else{
					returnValue = attendanceService.setAttendOffWork(attendanceNo, employeeNum);
					if(returnValue < 1){
						returnMsg = "퇴근을 하거나 출근하지 않았습니다.";
					}else{
						//현재 퇴근한 날짜를 db에서 가져오기 
						attendance =  attendanceService.selectAttendancByEmployeeNoDate(employeeNum, Util.getTodayDate());
						successMsg = Util.getTimestampFormat(attendance.getEndWork())+ "에 "+employee.getEmployeeName()+"씨가 퇴근하였습니다.";
					}

					
				}
			}
			
		}
		
		Employee employeeSession = (Employee)session.getAttribute("loginuser");
		
		List<Employee> employees = attendanceService.getEmployeesByStoreCodeAndUser(employeeSession.getStoreCode());
		
		for (Employee employee2 : employees) {
			System.out.println(employee2.toString());
			if (employee2.getAttendanceone() != null) {
				System.out.println(employee2.getAttendanceone().toString());
			}
		}
		req.setAttribute("employees", employees);
	
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		
		req.setAttribute("returnMsg", returnMsg);
		req.setAttribute("successMsg", successMsg);
		req.setAttribute("todayStr", Util.getTodayDate());
		
		
		
		
		return urlstr+"main";

	}	
	
	
	
	
	/**
	 * 출석을 위해서 헤딩 store의 직원리스트를 불러옴
	 * @return
	 */
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String attendancelist(HttpSession session, HttpServletRequest req) {
		Employee employee = (Employee)session.getAttribute("loginuser");
		
		String todayStr = Util.getTodayDate();
		List<Attendance> attendances = attendanceService.getAttendanceAllByStoreCodeAndDate(employee.getStoreCode(),todayStr,todayStr);
	
		for (Attendance attendance : attendances) {
			attendance.setWorkTime(Util.getDiffTimestamp(attendance.getStartWork(), attendance.getEndWork()));
		}
		
		req.setAttribute("startdatestr", todayStr);
		req.setAttribute("enddatestr", todayStr);
		req.setAttribute("attendances", attendances);
	
		return urlstr+"list";
	}	
	
	
	@RequestMapping(value = "searchlist.action", method = RequestMethod.POST)
	public String attendanceSearchlist(HttpSession session, HttpServletRequest req) {
		Employee employee = (Employee)session.getAttribute("loginuser");
		
		
		
		String startDateStr = (String)req.getParameter("datepicker-start");
		String endDateStr = (String)req.getParameter("datepicker-end");
	
		
		List<Attendance> attendances = attendanceService.getAttendanceAllByStoreCodeAndDate(employee.getStoreCode(),startDateStr,endDateStr); 
		for (Attendance attendance : attendances) {
			attendance.setWorkTime(Util.getDiffTimestamp(attendance.getStartWork(), attendance.getEndWork()));
		}
		
		req.setAttribute("startdatestr", startDateStr);
		req.setAttribute("enddatestr", endDateStr);
		req.setAttribute("attendances", attendances);
	
		//return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
		return urlstr+"list";
	}	
	
	
	
	
	/**
	 * 출석을 위해서 헤딩 store의 해당 직원리스트를 불러옴
	 * @return
	 */
	@RequestMapping(value = "employeelist.action", method = RequestMethod.GET)
	public String attendanceEmployeelist(HttpSession session, HttpServletRequest req) {
		Employee employee = (Employee)session.getAttribute("loginuser");
		
		String todaymonth = Util.getTodayMonth();
		
		//해당 직원들의 목록을 가져옴
		List<Employee> employees = attendanceService.getEmployeesByStoreCodeAndUser(employee.getStoreCode());
		
		List<Attendance> attendances = attendanceService.getAttendanceByEmployeeAndMonth(employee.getEmployeeNo(),todaymonth);
		
		
		
	
		for (Attendance attendance : attendances) {
			attendance.setWorkTime(Util.getDiffTimestamp(attendance.getStartWork(), attendance.getEndWork()));
		}
		
		
		req.setAttribute("attendances", attendances);
		req.setAttribute("selectEmployee", employee);
		req.setAttribute("dateMonth", todaymonth);
		req.setAttribute("employees", employees);
		
		
		
	
		return urlstr+"employeelist";
	}	
	
	
	

}