package com.project.aloneBab.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.project.aloneBab.member.model.vo.Member;

public class LoginCheckInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(loginUser == null) {
			
			String msg = "로그인 후 이용해주시기 바랍니다.";
			
			session.setAttribute("msg", msg);
			response.sendRedirect("loginView.user");
			return false;
		}
		
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}

}
