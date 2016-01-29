package com.dobbypos.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.dobbypos.common.Util;
import com.dobbypos.model.dto.Employee;
import com.dobbypos.model.dto.Hq;


//Controller를 호출하기 전 또는 후에 처리될 코드를 구현하는 클래스 
public class AutherInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(
		HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		HttpSession session = req.getSession();

		
		String uri = req.getRequestURI();//요청 경로 반환
		String queryString = req.getQueryString();
		if(queryString != null && queryString.length() > 0) {
			queryString = Util.makeQueryString(queryString, null, null, null);
		}
		if (queryString == null) {
			queryString = "";
		}
		System.out.println("AutherInterceptor uri="+uri+", queryString="+queryString);
		
		
		boolean redirect = false;	
		String returnlogin = "login.action";
		if(!uri.equals("/dobbywebpos/") && !uri.contains("login") && !uri.contains("logout")){
			if(uri.contains("/hq/")){ // 요청 경로에 /hq/가 포함된 경우 
				//본사 페이지 
				
				Hq hq = (Hq)session.getAttribute("hqloginuser");
				if(hq == null ){
					returnlogin = "hq" + returnlogin;
					redirect = true;
				}
				
			}else{
				Employee employee = (Employee)session.getAttribute("loginuser");
				
				if(employee == null ){
					redirect = true;
				}
				
			}
		}
		/*if (uri.contains("member")) {// 요청 경로에 member가 포함된 경우
			if (member == null || !member.getUserType().equals("admin")) {
				redirect = true;				
			}			
		} else if (uri.contains("mail")) {//요청 경로에 mail이 포함된 경우
			if (member == null) {
				redirect = true;
				queryString = Util.makeQueryString(queryString, null, null, null);
			}
		} else if (uri.contains("board") && !uri.contains("list.action")) {
			if (member == null) {
				redirect = true;
				queryString = Util.makeQueryString(queryString, null, null, null);
			}
		} else if (uri.contains("upload")) {
			if (member == null) {
				redirect = true;
				queryString = Util.makeQueryString(queryString, null, null, null);
			}
		}*/
		
		if (redirect) {			
			resp.sendRedirect(
				"/dobbypos/"+returnlogin+"?returnurl=" + uri + queryString);
			return false;//컨트롤러 호출 중단
		} else {
			return true;//정상 진행
		}
		
	}



}
