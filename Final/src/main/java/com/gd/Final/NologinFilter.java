package com.gd.Final;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter("/public/*") // 로그인 x
public class NologinFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("로그인 x");
		// 요청 전
		HttpServletRequest rr =  ((HttpServletRequest)request);
		HttpServletResponse ss = ((HttpServletResponse)response);
		HttpSession session = rr.getSession(false);
		
		
		if(session != null) {// session이 null이 아닌 경우에 로그인 여부 체크
		if(session.getAttribute("loginUser") != null) { // 사용자 세션이 null이 아니면 메인 페이지로 리다이렉트
			ss.sendRedirect(rr.getContextPath()+"/user/main");
			return;
		}else if(session.getAttribute("loginAdmin") != null) { // 관리자 세션이 null이 아니면 메인 페이지로 리다이렉트
			ss.sendRedirect(rr.getContextPath()+"/admin/main");
			return;
		}
	
	}
		chain.doFilter(request, response);
	}
	
}
