package com.dobbypos.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpServletRequest req = request;
		HttpServletResponse resp = response;
		HttpSession session = req.getSession();
		
		
		return super.preHandle(request, response, handler);
	}
	
	

}
