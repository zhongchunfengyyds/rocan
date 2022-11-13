package com.cgn.itmp.basecommon;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.eos.foundation.eoscommon.ConfigurationUtil;
import com.primeton.ext.access.http.HttpUrlHelper;
import com.cgn.components.coframe.auth.XssSqlHttpServletRequestWrapper;





/**
 * 登录过滤器，用于过滤黑盒扫描的各种问题
 *
 * 修改历史：<br>
 * 修改日期：<br>
 * 修改作者：<br>
 * 修改内容：<br>
 */

public final class LoginFilter implements Filter {


	/**
	 * 初始化方法，由容器调用一次
	 */
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	//系统使用到的文件名称字段
    private String [] fileNameArray = {"equipmentdiagramname","equipmentdiagramfileid","thicknessmeasurefileid","thicknessmeasurementpointlayoutname","flowchartname","flowchartfileid","equiaxialgraphname"
    		,"equiaxialgraphfileid","equipmentdrawnumbername","equipmentdrawnumberfileid","fj","fildid","fujian","fileid","enclosure","fodisimgfjname","fodisimgfileid","certificate","zfj","eommfile","eommfileid","sdmfile","sdmfileid","euqipmentgraph","equipmentgraphfileid","equiaxedgraph","equiaxedgraphfileid","eomrfile","eomrfileid"};
	//允许文件类型数组
    private String [] fileTypeArray = {"JPG","GIF","TXT","ZIP","PNG","RAR","7Z","XLSX","XLS","DOC","DOCX","MP4","DWG","MP3","CSV","PPT","PPTX","PDF","BZ","JEPG","BMP","WAV","AVI","WMV","MPEG","RM","RMVB","MOV","jpg","gif","txt","zip","png","rar","7z","xlsx","xls","doc","docx","mp4","dwg","mp3","csv","ppt","pptx","pdf","bz","jepg","bmp","wav","avi","wmv","mpeg","rm","rmvb","mov"};
    /**
	 * 判断request中是否含有注入攻击字符
	 * @param request
	 * @return
	 */
	public String injectInput(ServletRequest request) throws UnsupportedEncodingException {
		Enumeration params  = request.getParameterNames();
		String sql = "";
		//if("/j_acegi_security_check".equals(request.get))
		while(params.hasMoreElements()){
			//得到参数名
			String name = params.nextElement().toString();
			//得到参数对应值
				String [] value = request.getParameterValues(name);
                String valueString = "";
				for(int i=0;i<value.length;i++){
				    if(null != value[i] && value[i].contains("%") && !value[i].contains("'%") && !value[i].contains("%'")&& !value[i].contains(":%")){
                        valueString = URLDecoder.decode(value[i],"UTF-8");
                    }else{
                        valueString = value[i];
                    }
					sql = sql+valueString;
				}
		}
		return sql;
	}
	/**
	 * 校验特殊字符
	 * @param str
	 * @return
	 */
	private boolean sqlValidate(String str){
		str = str.toLowerCase();//转换为小写
		String badStr = "update |create | delete |insert |truncate | char | into | substr | declare | exec | master |drop |execute |\"| cr | lf |<script>|</script>|<iframe|<img|/phf|script|alert|%28|%3c|%uff|eval(|eval%28|<input|%3cinput|%27|";
		String [] badStrs = badStr.split("\\|");
		for(int i=0;i<badStrs.length;i++){
			if(str.indexOf(badStrs[i]) >=0){
				return true;
			}
		}
		return false;
	}
	public static void main(String[] arge){
		
		String badStr = "update |create | delete |insert |truncate | char | into | substr | declare | exec | master |drop |execute |\"| cr | lf |<script>|</script>|<iframe|<img|/phf|script|alert|%28|%3c|%uff|eval(|eval%28|<input|%3cinput|%27|";
		String [] badStrs = badStr.split("\\|");
		if("hhhhupdate ".indexOf(badStrs[0]) >=0){
			
			System.out.println("1112");
		}
	}
	/**
	 * 实现对html中前端的一些字符进行转义，script区域进行删除替换操作
	 * @param value
	 * @return
	 */
   private String cleanXSS(String value) {
//	   value = value.replaceAll("", "");      
//       Pattern scriptPattern = Pattern.compile("<script>(.*?)</script>", Pattern.CASE_INSENSITIVE);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("src[\r\n]*=[\r\n]*\\\'(.*?)\\\'", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("src[\r\n]*=[\r\n]*\\\"(.*?)\\\"", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("</script>", Pattern.CASE_INSENSITIVE);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("<script(.*?)>", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("eval\\((.*?)\\)", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("e­xpression\\((.*?)\\)", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("javascript:", Pattern.CASE_INSENSITIVE);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("vbscript:", Pattern.CASE_INSENSITIVE);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile("onload(.*?)=", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
//       value = scriptPattern.matcher(value).replaceAll("");
//       scriptPattern = Pattern.compile(".*<.*", Pattern.CASE_INSENSITIVE );
//       value = scriptPattern.matcher(value).replaceAll("");
		value = value.replaceAll(";", ";");
		value = value.replaceAll("\\(", "(").replaceAll("\\)", ")");
		value = value.replaceAll("'", "'");
		value = value.replaceAll("`", "`");
		value = value.replaceAll("CR", ""); //换行
		value = value.replaceAll("LF", ""); //回车
		value = value.replaceAll("eval\\((.*)\\)", "");
		value = value.replaceAll("&", "&amp;");
		value = value.replaceAll("“", "&quot;");
		value = value.replaceAll("’", "&apos;");
//		value = value.replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']", "\"\"");
        //value = value.replaceAll("script", "");
		/** filter script tag*/
//		String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>";
//		Pattern p_script =Pattern.compile(regEx_script,Pattern.CASE_INSENSITIVE);
//		Matcher m_script = p_script.matcher(value);   
//		value = m_script.replaceAll("");
		value = value.replaceAll("<", "&lt;").replaceAll(">", "&gt;");
		return value;
	}

	/*
	 * 登录过滤器
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
						 FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		httpRequest.setCharacterEncoding("utf-8");
		String url = httpRequest.getRequestURL().toString();
//		String getParams = httpRequest.getQueryString();

		//黑盒扫描问题--使用 HTTP 动词篡改的认证旁路
		String method = httpRequest.getMethod();
		if(!"GET".equals(method)&&!"POST".equals(method)&&!"HEAD".equals(method)){
			httpResponse.setContentType("text/html;charset=UTF-8");
			httpResponse.setCharacterEncoding("UTF-8");
			httpResponse.setStatus(403);
			httpResponse.getWriter().print("<font size=6 color=red>对不起，您的请求非法，系统拒绝响应!</font>");
			return;
		}
		//sql盲注--若出现特殊字符。直接抛出异常
		String sql = injectInput(httpRequest);
		if(null != sql && sql.contains("&")){
         //   sql = sql.replace("&b&p/&p"," ");
            sql = sql.replace("&b"," ");
            sql = sql.replace("&p"," ");
            sql = sql.replace("&P"," ");
        }
		if(sqlValidate(sql)){
			if(sql.contains("'") || sql.contains("<>") || sql.contains(">=") || sql.contains("<=") || sql.contains("\"")){
				Enumeration params  = request.getParameterNames();
				while(params.hasMoreElements()){
					//得到参数名
					String name = params.nextElement().toString();
					//得到参数对应值
					String val = request.getParameter(name);
					if(val.contains("%") && !val.contains("'%") && !val.contains("%'")&& !val.contains(":%")){
						val = URLDecoder.decode(val,"UTF-8");
						HashMap m = new HashMap(request.getParameterMap());
						m.put(name, new String[]{val});
						XssSqlHttpServletRequestWrapper wrapRequest = new XssSqlHttpServletRequestWrapper((HttpServletRequest)request);
						request = wrapRequest;
						httpRequest = wrapRequest;

					}
					if(val.contains("'") && !name.contains("sql") && !name.contains("tab") && !name.contains("url")){
						HashMap m = new HashMap(request.getParameterMap());
						m.put(name, new String[]{val.replace("'","")});
						XssSqlHttpServletRequestWrapper wrapRequest = new XssSqlHttpServletRequestWrapper((HttpServletRequest)request);
						request = wrapRequest;
						httpRequest = wrapRequest;
					}else if(val.contains("'") && (name.contains("sql") || name.contains("tab") || name.contains("url"))){
						int number = this.appearNumber(val,"'");
						if(number%2 != 0){
							HashMap m = new HashMap(request.getParameterMap());
							m.put(name, new String[]{val+"'"});
							XssSqlHttpServletRequestWrapper wrapRequest = new XssSqlHttpServletRequestWrapper((HttpServletRequest)request);
							request = wrapRequest;
							httpRequest = wrapRequest;
						}

					}
					if(val.contains("\"") && name.contains("where")){
                        int number = this.appearNumber(val,"\"");
                        if(number%2 != 0){
                            httpResponse.setContentType("text/html;charset=UTF-8");
                            httpResponse.setCharacterEncoding("UTF-8");
                            httpResponse.setStatus(403);
                            httpResponse.getWriter().print("<font size=6 color=red>双引号非法注入，系统拒绝响应!</font>");
                            return;
                        }
                    }
					if(val.contains("<>")){
						HashMap m = new HashMap(request.getParameterMap());
						m.put(name, new String[]{val.replace("<>","!=")});
						XssSqlHttpServletRequestWrapper wrapRequest = new XssSqlHttpServletRequestWrapper((HttpServletRequest)request);
						request = wrapRequest;
						httpRequest = wrapRequest;
					}
				}
                sql = sql.replace("'"," ");
                sql = sql.replace("<>"," ");
                sql = sql.replace(">="," ");
                sql = sql.replace("<="," ");
                sql = sql.replace("\""," ");
                sql = sql.replace("*"," ");
                if(sqlValidate(sql)){
                    httpResponse.setContentType("text/html;charset=UTF-8");
                    httpResponse.setCharacterEncoding("UTF-8");
                    httpResponse.setStatus(403);
                    httpResponse.getWriter().print("<font size=6 color=red>多参数非法注入，系统拒绝响应!</font>");
                    return;
                }
			}else{
				httpResponse.setContentType("text/html;charset=UTF-8");
				httpResponse.setCharacterEncoding("UTF-8");
				httpResponse.setStatus(403);
				httpResponse.getWriter().print("<font size=6 color=red>非法注入，系统拒绝响应!</font>");
				return;
			}
	}

	    boolean isOpenXSS = Boolean.valueOf(
	    	      ConfigurationUtil.getUserConfigSingleValue("Access-Http", "XSS-Security", 
	    	      "isOpen")).booleanValue();

	    	    if (isOpenXSS) {
	    	    	 HttpServletRequest req = (HttpServletRequest)request;
	    	    	    HttpServletResponse res = (HttpServletResponse)response;
	    	    	    String servletPath = HttpUrlHelper.getRequestUrl(req, res);
	    	      String port =String.valueOf(req.getServerPort());
	    	      if(StringUtil.isNotEmpty(port) && (port.equals("80") || port.equals("443"))){
	    	    	  port = "";
	    	      }else{
	    	    	  port = ":"+port;
	    	      }
	    	      
	    	      String serverurl = "https://" + req.getServerName() + port + req.getContextPath();
	    	      
//	    	      String serverurl =  "https://" + req.getServerName() + req.getContextPath();
	    	      
	    	   
	    	      String referer = req.getHeader("Referer");
	    	      if ((referer != null) && (!referer.startsWith(serverurl))) {
	    	        String excludeurl = ConfigurationUtil.getUserConfigSingleValue(
	    	          "Access-Http", "XSS-Security", "Exclude");
	    	        String[] exclude = excludeurl.split(",");
	    	        boolean isExcludeUrl = HttpUrlHelper.isIn(servletPath, exclude);
	    	        if (!isExcludeUrl) {
	    	          response.setContentType("text/html;charset=GBK");
	    	          response.setCharacterEncoding("GBK");
	    	          res.setStatus(403);
	    	          res.getWriter().print(
	    	            "<font size=6 color=red>对不起，您的请求非法!</font>");

	    	          return;
	    	        }
	    	      }
	    	    }

	/**
	 **检查http请求头中的referer,是否是合法页面链接过来
	 **/
//	if(null != httpRequest.getHeader("Referer")){
//
////		String referer = httpRequest.getHeader("Referer").toUpperCase(Locale.ENGLISH);
//		String serverurl = httpRequest.getScheme() + "://" + httpRequest.getServerName() +
//				":" + httpRequest.getServerPort() + httpRequest.getContextPath();
//		String referer = httpRequest.getHeader("Referer");
//		if(!referer.startsWith(serverurl)){
//			String errorMsg = "请求来源地址不是来自同一个网站，请联系管理员解决该问题！(" +
//					"Http request from another website,please contact administrator to resolve it!)";
//			httpResponse.setContentType("text/html;charset=UTF-8");
//			httpResponse.setCharacterEncoding("UTF-8");
//			httpResponse.setStatus(403);
//			httpResponse.getWriter().print(errorMsg);
//			return;
//		}
//	}
	
			//非法URL拦截
			if(null != url && !url.contains("scripts") && !url.contains("script_") && (url.contains("script") || url.contains("/phf")
					|| url.contains("alert") || url.contains("<input") || url.contains("%3Cinput")
					|| url.contains("<") || url.contains("%3C") || url.contains("eval(") || url.contains("%27") || url.contains("()"))){
				httpResponse.setContentType("text/html;charset=UTF-8");
				httpResponse.setCharacterEncoding("UTF-8");
				httpResponse.setStatus(403);
				httpResponse.getWriter().print("<font size=6 color=red>对不起，您的请求路径含非法标签，系统拒绝响应!</font>");
				return;
			} 	
			String type = httpRequest.getContentType();
			 if ((type != null) && (type.length() > 0) && (!type.startsWith("multipart/form-data"))) {
				 XssSqlHttpServletRequestWrapper xssRequest = new XssSqlHttpServletRequestWrapper(httpRequest);

			      String getParams = xssRequest.getRequestParams();
			      getParams = cleanXSS(getParams);
			      
			      if(!StringUtil.isEmpty(getParams) && (getParams.indexOf("<script>")>-1
//							|| getParams.indexOf("</script>")>-1 || getParams.indexOf("&lt;/script&gt;")>-1
//							|| getParams.indexOf("&lt;script&gt;")>-1
//							|| getParams.indexOf("SQL")>-1
//							|| (getParams.indexOf("(")>-1 && getParams.indexOf(").")>-1)
//							|| getParams.indexOf("javascript:")>-1
//							|| (getParams.indexOf("<")>-1 && getParams.indexOf(">")>-1)
//							//|| getParams.indexOf("http://")>-1
//							|| getParams.indexOf("<iframe")>-1 || getParams.indexOf("&lt;iframe")>-1
//							|| getParams.indexOf("script")>-1
//							|| getParams.indexOf("confirm")>-1
//							|| getParams.indexOf("window.open")>-1
//							|| getParams.indexOf("<img")>-1 || getParams.indexOf("&lt;img")>-1
//							|| getParams.indexOf("onerror")>-1
//							|| getParams.indexOf("onload")>-1
//							|| getParams.indexOf("alert")>-1
//							|| getParams.indexOf("<input")>-1 || getParams.indexOf("&lt;input")>-1
//							|| getParams.indexOf("eval(")>-1
//                          || getParams.indexOf("()")>-1
//                          || (getParams.indexOf("<")>-1 && getParams.indexOf(">=")<0 && getParams.indexOf("<=")<0)
                          || getParams.indexOf("src=")>-1 || getParams.indexOf("src =")>-1)){
						httpResponse.setContentType("text/html;charset=UTF-8");
						httpResponse.setCharacterEncoding("UTF-8");
						httpResponse.setStatus(403);
						httpResponse.getWriter().print("<font size=6 color=red>数据含有非法字符，系统拒绝响应!</font>");
						return;
					}
			      
				if(null != getParams && !getParams.contains("scripts") && !getParams.contains("script_") && (getParams.contains("script") || getParams.contains("/phf")
						|| getParams.contains("%uFF07") || getParams.contains("alert") || getParams.contains("<input") || getParams.contains("%3Cinput")
						 || getParams.contains("%3C") || getParams.contains("eval(") || getParams.contains("eval%28")  || getParams.contains("%27") || getParams.contains("()"))){
					httpResponse.setContentType("text/html;charset=UTF-8");
					httpResponse.setCharacterEncoding("UTF-8");
					httpResponse.setStatus(403);
					httpResponse.getWriter().print("<font size=6 color=red>对不起，您的请求含非法标签，系统拒绝响应!</font>");
					return;
				}else  if(!StringUtil.isEmpty(getParams) && getParams.contains("{") && getParams.contains("}")){
					JSONObject jsonObject = null;
					try{
						jsonObject = JSONObject.fromObject(getParams);
					}catch(Exception e){
						jsonObject = null;
					}
					if(null != jsonObject){
						Iterator iter = jsonObject.entrySet().iterator();
				        while (iter.hasNext()) {
				            Map.Entry entry = (Map.Entry) iter.next();
				            //System.out.println(entry.getKey().toString());
				            String dataValue = entry.getValue().toString();
				            if(!StringUtil.isEmpty(entry.getKey().toString())){//删除数据时的token校验
				            	if(TokenUtil.TOKEN_STRING_NAME.equals(entry.getKey().toString()) && !TokenUtil.isTokenStringValidOfDel(dataValue, httpRequest.getSession())){
									 httpResponse.setContentType("text/html;charset=UTF-8");
										httpResponse.setCharacterEncoding("UTF-8");
										httpResponse.setStatus(403);
										httpResponse.getWriter().print("<font size=6 color=red>非法越权访问，系统拒绝响应!</font>");
										return;
								 }
				            }
				            if(dataValue.contains("{") && dataValue.contains("}")
				            		&& !dataValue.contains("[") && !dataValue.contains("]")){
				            	JSONObject fieldValue = JSONObject.fromObject(dataValue);
				            	 //验证用户token，防止越权访问
				            	Object tokenObj = fieldValue.get(TokenUtil.TOKEN_STRING_NAME);
				            	if(null != tokenObj){
				            		if(!StringUtil.isEmpty(tokenObj.toString()) && !TokenUtil.isTokenStringValid(tokenObj.toString(), httpRequest.getSession())){
										 httpResponse.setContentType("text/html;charset=UTF-8");
											httpResponse.setCharacterEncoding("UTF-8");
											httpResponse.setStatus(403);
											httpResponse.getWriter().print("<font size=6 color=red>非法越权访问，系统拒绝响应!</font>");
											return;
									 }
				            	}
				            	for(String field : fileNameArray){
				            		Object vObject = fieldValue.get(field);
				            		if(null == vObject){
				            			continue;
				            		}
				            		String value = vObject.toString();
				            		String [] fileInfo = value.split("\\.");
				            		//文件判断--解决渗透测试任意文件下载攻击
				            		if(null != fileInfo && fileInfo.length > 1){
				            			String fileType = fileInfo[1];
				            			Boolean isAllowed = false;
				            			if(Arrays.asList(fileTypeArray).contains(fileType)){
				            				isAllowed = true;
				            			}
				            			if(!isAllowed){
				            				httpResponse.setContentType("text/html;charset=UTF-8");
				        					httpResponse.setCharacterEncoding("UTF-8");
				        					httpResponse.setStatus(403);
				        					httpResponse.getWriter().print("<font size=6 color=red>对不起，文件类型不匹配，系统拒绝响应!</font>");
				            			    return;
				            			}
				            		}
				            		
				            	}
				            }
				        }
					}
				      
				      //JSONArray json = jsonObject.getJSONArray(key);//userStr是json字符串 
				}
				filterChain.doFilter(xssRequest, httpResponse);
			 }else{
				 filterChain.doFilter(httpRequest, httpResponse);
			 }
			
			

		
	}

	
	public void destroy() {

	}

	/**
	 * 获取指定字符串出现的次数
	 *
	 * @param srcText 源字符串
	 * @param findText 要查找的字符串
	 * @return
	 */
	public static int appearNumber(String srcText, String findText) {
		int count = 0;
		Pattern p = Pattern.compile(findText);
		Matcher m = p.matcher(srcText);
		while (m.find()) {
			count++;
		}
		return count;
	}

}
