package com.cgn.itmp.basecommon;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.apache.oltu.oauth2.client.request.OAuthClientRequest;

import com.cgn.components.util.CGNConfigurationUtil;



public class OAuthUtil {
	public static final String client_id;
	public static final String redirect_uri;
	public static final String failureUrl = "error.jsp";
	public static final String login_url;
	public static final String loginout_url;
	public static final String oauth_url;
	public static final String resource_url;
	public static final String client_secret;
	public static final String http_method;
	public static final String appKey;
	public static final String appSecret;
	public static final String version;
	public static final String oauthLogin;
	public static final String accessToken;
	public static final String oauthResource;
	public static final String appId;
	public static final String appCode;
	public static final String appIdParam;
	
	
	/**
	 * oauth2.0状态码保存
	 */
	private static String state;
	/**
	 * 静态代码快加载配置文件
	 */
	static {
		client_id = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "clientId");
		redirect_uri = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "redirectUri");
		login_url = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "loginUrl");
		loginout_url = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "loginOutUrl");
		oauth_url = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "oauthUrl");
		resource_url = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "resourceUrl");
		client_secret = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "clientSecret");
		http_method = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "httpMethod");
		appKey = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "appKey");
		appSecret = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "appSecret");
		version = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "version");
		oauthLogin = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "oauthLogin");
		accessToken = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "accessToken");
		oauthResource = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "oauthResource");
		appId = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "appId");
		appCode = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "appCode");
		appIdParam = CGNConfigurationUtil.getUserConfigSingleValue("4A", "oauth", "appIdParam");
	}

	/**
	 * 产生应用状态码（暂时以随机数模拟）
	 * @return 状态码
	 */
	public static String addState() {
		String num = "1234567890abcdefghijklmnopqrstopqrstuvwxyz";
		int size = 6;
		char[] charArray = num.toCharArray();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < size; ++i) {
			sb.append(charArray[((int) (java.lang.Math.random() * 10000.0D) % charArray.length)]);
		}
		return state = sb.toString();//保存state
	}
	/**
	 * 状态保存和校验
	 */
	public static boolean validateState(String gwstate){
		return state!=null&&state.equals(gwstate);
	}
	public static void main(String[] agrs){
		Date date=new Date();

		//日期格式化显示，首先定义格式
		SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//2019-01-11 12:00:00

		//将格式应用于日期
		String s1 = sdf1.format(date);
		
		System.out.println(s1);
		
		System.out.println(getRequestId());
	}
	
	public static void setHeader(OAuthClientRequest req,String method){
		// 增加头信息
		req.setHeader("appKey", OAuthUtil.appKey);
		req.setHeader("appSecret", OAuthUtil.appSecret);
		req.setHeader("appId", OAuthUtil.appId);
		req.setHeader("appCode", OAuthUtil.appCode);
		req.setHeader("version", OAuthUtil.version);
		req.setHeader("requestId", getRequestId());
		req.setHeader("appMethod", method);
		req.setHeader("format", "json");
		req.setHeader("tenantId", "1");
		req.setHeader("Content-Type", "application/json");
		req.setHeader("appIdParam", OAuthUtil.appIdParam);
		
//		Date date=new Date();
//		SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//2019-01-11 12:00:00
//		String timestamp = sdf1.format(date);
		req.setHeader("timestamp", "1");
		
		StringBuffer sbuffer = new StringBuffer();
		sbuffer.append(OAuthUtil.version).append(OAuthUtil.appKey).append(method).
			append("1").append("json").append(OAuthUtil.appSecret);
		String md5Str = Md5Util.getMd5FromStr(sbuffer.toString());
		req.setHeader("signInfo", md5Str);
				
		
	}
	
	public static String getRequestId() {
		return UUID.randomUUID().toString().replace("-", "");
	}
}
