package com.cgn.itmp.basecommon;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.oltu.oauth2.client.request.OAuthClientRequest;
import org.apache.oltu.oauth2.common.exception.OAuthSystemException;
import org.apache.oltu.oauth2.common.message.types.ResponseType;


public class OAuthAuthzServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OAuthClientRequest req;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 获取应用状态码
			String state = OAuthUtil.addState();
			// 地址生成及获取授权码
			System.out.println("OAuthAuthzServlet");
			req = OAuthClientRequest.authorizationLocation(OAuthUtil.login_url).setClientId(OAuthUtil.client_id)
					.setRedirectURI(OAuthUtil.redirect_uri).setResponseType(ResponseType.CODE.toString())
					.setState(state).buildQueryMessage();
			
			
			response.setCharacterEncoding("utf-8");
			
			doGet(request, response);
		} catch (OAuthSystemException e) {
			String jSessionId=request.getSession().getId();
			response.setHeader("Set-Cookie", "JSESSIONID="+jSessionId+"; Secure;HttpOnly;");
			response.sendRedirect(OAuthUtil.failureUrl + "?error=000000&error_description=" +URLEncoder.encode(e.getMessage(),"UTF-8"));
			System.err.println(e.getMessage());
		}

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("登录url：" + req.getLocationUri());
		String jSessionId=request.getSession().getId();
		response.setHeader("Set-Cookie", "JSESSIONID="+jSessionId+"; Secure;HttpOnly;");
		response.sendRedirect(req.getLocationUri());
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
