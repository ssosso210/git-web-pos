package com.dobbypos.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.dobbypos.common.Util;


//Controller를 호출하기 전 또는 후에 처리될 코드를 구현하는 클래스 
public class AutherInterceptor extends HandlerInterceptorAdapter {

	/*@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		HttpSession session = req.getSession();
		Member member = (Member)session.getAttribute("loginuser");
		String uri = req.getRequestURI();//요청 경로 반환
		String queryString = req.getQueryString();
		if(queryString != null && queryString.length() > 0) {
			queryString = Util.makeQueryString(queryString, null, null, null);
		}
		if (queryString == null) {
			queryString = "";
		}
		boolean redirect = false;		
		if (uri.contains("member")) {// 요청 경로에 member가 포함된 경우
			//System.out.println(member.getUserType());
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
		}else if (uri.contains("upload") ) {
			if (member == null) {
				redirect = true;
				queryString = Util.makeQueryString(queryString, null, null, null);
			}
		}
		if (redirect) {			
			resp.sendRedirect(
				"/dobbywebpos/account/login.action?returnurl=" + uri + queryString);
			return false;//컨트롤러 호출 중단
		} else {
			return true;//정상 진행
		}
		
		
	}*/

}
