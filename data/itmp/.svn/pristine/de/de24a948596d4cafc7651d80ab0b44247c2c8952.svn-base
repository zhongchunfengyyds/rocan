package com.cgn.itmp.basecommon;

import java.io.IOException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.oltu.oauth2.client.OAuthClient;
import org.apache.oltu.oauth2.client.URLConnectionClient;
import org.apache.oltu.oauth2.client.request.OAuthClientRequest;
import org.apache.oltu.oauth2.client.response.OAuthAccessTokenResponse;
import org.apache.oltu.oauth2.client.response.OAuthJSONAccessTokenResponse;
import org.apache.oltu.oauth2.common.OAuth;
import org.apache.oltu.oauth2.common.exception.OAuthProblemException;
import org.apache.oltu.oauth2.common.message.types.GrantType;

public class OAuthAccessTokenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String code = "";
		String HTTPMETHOD = OAuthUtil.http_method;
		String errorLoc = "";
		Long expiresIn = 0l;
		try {
			// 验证state
			String state = req.getParameter("state");
			String display = req.getParameter("display");
			System.out.println("手机端：" + display);
			if (!"mobile".equals(display)) {
				if (!OAuthUtil.validateState(state)) {
					throw new Exception("状态码不符，非法授权流程");
				}
			}

			// 获取令牌
			code = req.getParameter(OAuth.OAUTH_CODE);
			System.out.println("状态：" + state);
			System.out.println("授权码:" + code);

			// 判断下session中是否存在认证码，如果相同跳过认证流程
			HttpSession session = req.getSession();
			String sessionCode = (String) session.getAttribute("code");
			System.out.println("sessionCode:" + sessionCode);
			if (!code.equals(sessionCode)) {
				OAuthClient oAuthClient = new OAuthClient(
						new URLConnectionClient());
				OAuthClientRequest accessTokenRequest = null;
				String accessToken = null;
				try {
					if (HTTPMETHOD.equalsIgnoreCase(OAuth.HttpMethod.GET)) {
						// 获取令牌GET方式
						accessTokenRequest = OAuthClientRequest
								.tokenLocation(OAuthUtil.oauth_url)
								.setGrantType(GrantType.AUTHORIZATION_CODE)
								.setClientId(OAuthUtil.client_id)
								.setClientSecret(OAuthUtil.client_secret)
								.setCode(code)
								.setRedirectURI(OAuthUtil.redirect_uri)
								.buildQueryMessage();

						System.out.println("获取令牌url："
								+ accessTokenRequest.getLocationUri());
					} else if (HTTPMETHOD
							.equalsIgnoreCase(OAuth.HttpMethod.POST)) {
						// 获取令牌POST方式
						accessTokenRequest = OAuthClientRequest
								.tokenLocation(OAuthUtil.oauth_url)
								.setGrantType(GrantType.AUTHORIZATION_CODE)
								.setClientId(OAuthUtil.client_id)
								.setClientSecret(OAuthUtil.client_secret)
								.setCode(code)
								.setRedirectURI(OAuthUtil.redirect_uri)
								.buildBodyMessage();
						System.out.println("获取令牌body："
								+ accessTokenRequest.getBody());
					}
					// 忽略对主机名校验，证书差别
					javax.net.ssl.HttpsURLConnection
							.setDefaultHostnameVerifier(new javax.net.ssl.HostnameVerifier() {
								public boolean verify(String hostname,
										SSLSession sslsession) {
									return true;
								}
							});
					trustAllHttpsCertificates();
					OAuthAccessTokenResponse oAuthResponse = null;
					// 设置头信息
					if(accessTokenRequest != null){
						OAuthUtil.setHeader(accessTokenRequest,OAuthUtil.accessToken);
					}
					try {
						System.setProperty("https.protocols", "");
						oAuthResponse = oAuthClient.accessToken(
								accessTokenRequest, HTTPMETHOD,
								OAuthJSONAccessTokenResponse.class);
					} catch (Exception e) {
						//通讯协议不匹配情况处理，jdk1.6和1.7抛出的错误(其他未测试)
						if ("javax.net.ssl.SSLHandshakeException: Remote host closed connection during handshake"
								.equals(e.getMessage())
								|| "javax.net.ssl.SSLException: Received fatal alert: protocol_version"
										.equals(e.getMessage())) {
							float weight = Float.parseFloat(getJavaVersion());
							if (weight <= 1.6f) {
								System.err.println("当前运行的服务器版本过低，需要升级jdk到1.7版本以上支持TLSv1.2");
								throw e;
							}
							System.out.println("use TLSv1.2");
							// 设置此参数解决当前jdk版本不支持TLSv1.2,jdk1.8 不用增加此参数
							System.setProperty("https.protocols", "TLSv1.2");
							oAuthResponse = oAuthClient.accessToken(
									accessTokenRequest, HTTPMETHOD,
									OAuthJSONAccessTokenResponse.class);

						} else {
							throw e;
						}
					}
					accessToken = oAuthResponse.getAccessToken();
					expiresIn = oAuthResponse.getExpiresIn();
					System.out.println("令牌有效期：" + expiresIn);
					System.out.println("令牌：" + accessToken);
				} catch (Exception e) {
					errorLoc = "获取令牌";
					throw e;
				}
				session.setAttribute("client_id", OAuthUtil.client_id);
				session.setAttribute("code", code);
				session.setAttribute("state", state);
				session.setAttribute("sesssionToken", accessToken);
				session.setAttribute("expiresIn", expiresIn);
			}
			req.setAttribute("display", display);
			req.getRequestDispatcher("/oauthResource").forward(req, resp);
		} catch (OAuthProblemException e) {
			req.setAttribute("error", e.getError());
			req.setAttribute("error_description", e.getDescription());
			req.getRequestDispatcher(OAuthUtil.failureUrl).forward(req, resp);
			System.err.println(e.getDescription());
		} catch (Exception e) {
			req.setAttribute("error", "DemoError(应用异常)");
			if (e.getMessage().contains("java.net.ConnectException")) {
				req.setAttribute("error_description", errorLoc + "失败，请确认应用到"
						+ errorLoc + "地址的网关之间网络是否通常");
			} else {
				req.setAttribute("error_description", errorLoc + "失败");
			}
			req.getRequestDispatcher(OAuthUtil.failureUrl).forward(req, resp);
			System.err.println(errorLoc + "失败:" + e.getMessage());
		}
	}
	
	/**
	 * 获取当前运行jdk版本返回前两位
	 * @return
	 */
	private String getJavaVersion(){
		String javaVersion = System.getProperty("java.version");
		String[] array = javaVersion.split("\\.");
		String newVersion = "";
		for (int i = 0; i < 2; i++) {
			newVersion += array[i];
			if(i == 0){
				newVersion += ".";
			}
		}
		return newVersion;
	}

	// 重写ssl对网关站点证书进行证书校验,
	// demo默认为不校验
	private static void trustAllHttpsCertificates() throws Exception {
		TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {

			public X509Certificate[] getAcceptedIssuers() {
				return new X509Certificate[] {};
			}

			public void checkClientTrusted(X509Certificate[] certs,
					String authType) throws CertificateException {
			}

			public void checkServerTrusted(X509Certificate[] certs,
					String authType) throws CertificateException {
			}
		}};
		SSLContext sc = SSLContext.getInstance("SSL");
		sc.init(null, trustAllCerts, new SecureRandom());
		HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
	}

}
