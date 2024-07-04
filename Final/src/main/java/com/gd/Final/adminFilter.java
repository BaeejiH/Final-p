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

@WebFilter("/admin/*")
public class adminFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Admin 필터");
		
		// 요청 전
		HttpServletRequest rr = ((HttpServletRequest) request);
		HttpServletResponse qq = ((HttpServletResponse) response);
		HttpSession session = rr.getSession();
		if(session.getAttribute("loginAdmin") == null) {
			qq.sendRedirect(rr.getContextPath()+"/public/login");
			return;
		}
		
		chain.doFilter(request, response);
		//요청 후
	}
}
