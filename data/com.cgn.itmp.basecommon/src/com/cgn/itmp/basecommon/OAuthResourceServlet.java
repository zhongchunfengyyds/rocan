package com.cgn.itmp.basecommon;


import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.oltu.oauth2.client.OAuthClient;
import org.apache.oltu.oauth2.client.URLConnectionClient;
import org.apache.oltu.oauth2.client.request.OAuthBearerClientRequest;
import org.apache.oltu.oauth2.client.request.OAuthClientRequest;
import org.apache.oltu.oauth2.client.response.OAuthResourceResponse;
import org.apache.oltu.oauth2.common.OAuth;
import org.apache.oltu.oauth2.common.utils.JSONUtils;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.eos.data.datacontext.UserObject;

public class OAuthResourceServlet extends HttpServlet {

	private static final long serialVersionUID = 5149031999425402008L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 请求中传递传递正确的token才可以正常访问资源
		System.out.println("OAuthResourceServlet");
		String sesssionToken = (String) req.getSession().getAttribute(
				"sesssionToken");
		String code = req.getParameter(OAuth.OAUTH_CODE);
		String display = (String) req.getAttribute("display");
		if (sesssionToken == null || code == null) {
			throw new ServletException("请认证后进行登录！");
		}

		OAuthClient oAuthClient = new OAuthClient(new URLConnectionClient());
		String HTTPMETHOD = OAuthUtil.http_method;

		// 获取资源
		OAuthClientRequest userInfoRequest = null;
		OAuthResourceResponse resourceResponse = null;
		try {
			if (HTTPMETHOD.equalsIgnoreCase(OAuth.HttpMethod.GET)) {
				// 获取资源GET方式
				userInfoRequest = new OAuthBearerClientRequest(
						OAuthUtil.resource_url).setAccessToken(sesssionToken)
						.buildQueryMessage();
				userInfoRequest.setLocationUri(userInfoRequest.getLocationUri()
						+ "&client_id=" + URLEncoder.encode(OAuthUtil.client_id,"utf-8"));
				System.out.println("获取资源url："
						+ userInfoRequest.getLocationUri());
			} else if (HTTPMETHOD.equalsIgnoreCase(OAuth.HttpMethod.POST)) {
				userInfoRequest = new OAuthBearerClientRequest(
						OAuthUtil.resource_url).setAccessToken(sesssionToken)
						.buildBodyMessage();
				userInfoRequest.setBody(userInfoRequest.getBody()
						+ "&client_id=" + OAuthUtil.client_id);
				System.out.println("获取资源body：" + userInfoRequest.getBody());
			}
			// 设置头信息
			if(userInfoRequest != null){
				OAuthUtil.setHeader(userInfoRequest,OAuthUtil.oauthResource);
				Map<String, String> headerMap = userInfoRequest.getHeaders();
				for(Map.Entry<String, String> entry : headerMap.entrySet()){
				    String mapKey = entry.getKey();
				    String mapValue = entry.getValue();
				    System.out.println("header:" + mapKey +":"+mapValue);
				}
			}
			
			resourceResponse = oAuthClient.resource(userInfoRequest,
					HTTPMETHOD, OAuthResourceResponse.class);

			resp.setContentType("text/xml;charset=utf-8");
			String message = resourceResponse.getBody();
			System.out.println("返回资源：" + message);
			// 返回错误信息处理
			if (message.matches("\\{\"error\":\".*\",\"error_description\":\".*\"\\}")) {
				Map<String, Object> errormsg = JSONUtils.parseJSON(message);
				req.setAttribute("error", String.valueOf(errormsg.get("error")));
				req.setAttribute("error_description", errormsg.get("error_description"));
				req.getRequestDispatcher(OAuthUtil.failureUrl).forward(req, resp);
				System.err.println(errormsg.get("error_description"));
				return;
			}

			// 如果是手机端 返回对应的信息
			if ("mobile".equals(display)) {
				writeResponse(resp, message);
			} else {
				Map<String, String> other = new HashMap<String, String>();
				other.put("id", "" + req.getSession().getAttribute("client_id"));
				other.put("state", "" + req.getSession().getAttribute("state"));
				other.put("code", "" + req.getSession().getAttribute("code"));
				other.put("token", sesssionToken);
				other.put("expires",
						"" + req.getSession().getAttribute("expiresIn"));

				if (isJson(message))
				{
					String  msg = "<attributes>";
					JSONObject jsonObject = JSON.parseObject(message);
					System.out.println("not mobile3");
					for (String key : jsonObject.keySet()) 
					{
						String value = jsonObject.getString(key);
						String attr = "<attr name=\"";
						attr = attr + key +"\"" + " namespace=\"http://www.jit.com.cn/cinas/ias/ns/saml/saml11/X.509\">";
						attr = attr + value + "</attr>";
						msg = msg + attr;
					}
					msg = msg + "</attributes>";
					
					UserObject userObject = new UserObject();
					userObject.setSessionId(req.getSession().getId());
					userObject.setUserName(jsonObject.getString("username"));
					userObject.setUserOrgName(jsonObject.getString("orgname"));
					userObject.setUserOrgId(jsonObject.getString("userorg"));
					userObject.setUserId(jsonObject.getString("usercode"));
					userObject.setUniqueId(req.getSession().getId());
					userObject.setUserRealName(jsonObject.getString("username"));
					
					req.getSession().setAttribute("userObject", userObject);
					showResource(other, msg, req, resp);
				}
				else
				{
					showResource(other, message, req, resp);
				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 将String文件写入response
	 */
	protected void writeResponse(HttpServletResponse response, String content)
			throws ServletException, IOException {
		OutputStream out = response.getOutputStream();
		byte[] tempContent = content.getBytes("utf-8");
		out.write(tempContent);
		response.setHeader("content-length", String.valueOf(tempContent.length));
		out.flush();
		out.close();
	}

	public static boolean isJson(String content) {
        try {
            JSON.parseObject(content);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

	private static void showResource(Map<String, String> other, String message,
		 HttpServletRequest req, HttpServletResponse resp) throws Exception {
		try {
			// 处理特殊字符(网关3.0.34.8已经处理，此处注释掉)
		//	message = message.replaceAll("&", "&amp;");
			DocumentBuilderFactory factory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document dc = builder.parse(new BufferedInputStream(
					new ByteArrayInputStream(message.getBytes("UTF-8"))));
			NodeList nodes = dc.getElementsByTagName("attr");
			req.setAttribute("attrs", nodes);
			req.setAttribute("other", other);
			
			String jSessionId = req.getSession().getId();
			resp.setHeader("Set-Cookie", "JSESSIONID="+jSessionId+"; Secure;HttpOnly;");
			req.getRequestDispatcher("/coframe/auth/login/redirect.jsp").forward(req, resp);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}
}
