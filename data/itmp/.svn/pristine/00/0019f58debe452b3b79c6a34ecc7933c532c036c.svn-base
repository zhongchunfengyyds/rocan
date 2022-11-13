package com.cgn.itmp.basecommon;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eos.data.datacontext.UserObject;

public class OauthFilter implements Filter {
	
	private String excludedPages;
	private String[] excludedPageArray;

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		System.out.println("OauthFilter start");
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		httpRequest.setCharacterEncoding("utf-8");
		String url = httpRequest.getRequestURL().toString();
		String uri = httpRequest.getRequestURI().toString();
		
		System.out.println("url=" + url + ",uri=" + uri + ",login_url=" + OAuthUtil.login_url);
		
		
		HttpSession session = httpRequest.getSession();
		String sessionCode = (String) session.getAttribute("code");
		UserObject userObject = (UserObject)session.getAttribute("userObject");
		if (userObject == null) {
			System.out.println("userObject==null");
		}
		else {
			System.out.println("userObject!=null userId=" + userObject.getUserId());
		}
		System.out.println("sessionCode:" + sessionCode + ",id=" + session.getId());
		
		
		
		boolean isExcludedPage = false;
		for (String page : excludedPageArray) {//判断是否在过滤url之外
			if(((HttpServletRequest) request).getServletPath().equals(page)) {
				isExcludedPage = true;
				break;
			}
		}
		
		if (isExcludedPage) {//在过滤url之外
			chain.doFilter(request, response);
		} else {
			if (sessionCode == null) {
				if (url.equals(OAuthUtil.redirect_uri)) {
	//				String code = httpRequest.getParameter("code");
	//				System.out.println("OAuthUtil.redirect_uri code=" + code);
	//				if (code != null && !code.isEmpty()) {
	//					session.setAttribute("code", code);
	//				}
					System.out.println("OAuthUtil.redirect_uri");
				}
				else if (url.equals(OAuthUtil.oauth_url)) {
					
				}
				else if (url.equals(OAuthUtil.resource_url)) {
					
				}
				else {
					httpRequest.getRequestDispatcher("/oauthLogin").forward(httpRequest, httpResponse);
					return;
				}
			}
			else {
//				httpRequest.getRequestDispatcher("/coframe/auth/login/redirect.jsp").forward(httpRequest, httpResponse);
//				return;
			}
			
			chain.doFilter(httpRequest, httpResponse);
		}
		
	}

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO 自动生成的方法存根
		excludedPages = fConfig.getInitParameter("excludedPages");
		if (!excludedPages.isEmpty()) {
			excludedPageArray = excludedPages.split(",");
		}
		return;
		
	}

}
