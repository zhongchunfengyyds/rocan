package com.cgn.itmp.basecommon;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.PatternSyntaxException;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;




/**
 * 针对ServletRequest提供的Util类
 * <p>
 * 创建日期：2012-07-01<br>
 * 修改历史：<br>
 * 修改日期：<br>
 * 修改作者：<br>
 * 修改内容：<br>
 *
 * @author wuxiang
 * @version 1.0
 */
public class RequestUtils {

	/**
	 * 凡是无法确定具体内容有什么的，使用以下全匹配
	 */
	public static final String STRING_ALL_MATCH = "(\\s|\\S)*";

	/**
	 * 字符串校验正则表达式：ID主键使用
	 */
	public static final String STRING_REGEX_PK_ID = "^[a-zA-Z0-9]{32}$";

//	public static final String STRING_REGEX_PK_ID_NUM = "^[0-9]{32}$";
	public static final String STRING_REGEX_PK_ID_NUM = "^([0-9]|,)*$";

	/**
	 * 字符串校验正则表达式：字母和数字（不限长度）
	 */
	public static final String STRING_REGEX_ID = "^[a-zA-Z0-9_]*$";

	/**
	 * 字符串校验正则表达式：字母和数字中文 （不限长度）
	 */
	public static final String STRING_REGEX_UNICODE_ID = "^[a-zA-Z0-9\u4E00-\u9FA5_]*$";
	/**
	 * 字符串校验正则表达式：字母和数字中文 包含+-.(),，（）（不限长度）
	 */
	public static final String STRING_REGEX_UNICODE = "^[a-zA-Z0-9\\u4E00-\\u9FA5_\\+\\-\\.\\(\\),\\，\\（\\）]*$";

	/**
	 * 地区类型A+,A,B,C,D专用
	 */
	public static final String STRING_REGEX_AREA_CODE = "^[A-D]{1}\\+?$";

	/**
	 * 字符串校验正则表达式：编码使用
	 */
	public static final String STRING_REGEX_CODE = "^[_a-zA-Z][a-zA-Z0-9_-]*$";

	/**
	 * 字符串校验正则表达式：FUNCCODE使用
	 */
	public static final String STRING_REGEX_FUNCCODE = "^[a-zA-Z_/][a-zA-Z0-9_/]*$";

	/**
	 * 字符串校验正则表达式：URL
	 */
	public static final String STRING_REGEX_URL = "^(((https|http)://)(([a-zA-Z0-9\\._-]+\\.[a-zA-Z]{2,6})|([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))(:[0-9]{1,4})*)?(/[a-zA-Z0-9\\&%_\\./-~-]*)?$";

	/**
	 * 字符串校验正则表达式：单位编码集合校验
	 */
	public static final String STRING_REGEX_ORGS = "^(\\d{8,})(\\,\\d{8,})*$";
	/**
	 * YYYY-MM-DD类型日期格式校验
	 */
	public static final String STRING_REGEX_WHOLEDATE = "^20[0-9]{2}-(0[1-9]{1}|1[0-2]{1}|Q[1-4]{1}|FY|H[1-2]{1})-([0-2]{1}[0-9]{1}|3[0-1]{1})$";
	/**
	 * 日期校验
	 */
	public static final String STRING_REGEX_DATE = "^20[0-9]{2}-(0[1-9]{1}|1[0-2]{1}|Q[1-4]{1}|FY|H[1-2]{1})$";
	/**
	 * 年份校验
	 */
	public static final String STRING_REGEX_YEAR = "^20[0-9]{2}$";
	/**
	 * Excel 文件路径校验
	 */
	public static final String STRING_FILEPATH="^([0-9A-Za-z]|[u4e00-\u9fa5]|/)*([A-Za-z0-9]|[\u4e00-\u9fa5]|-|\\(|\\)|.| )+.xls$";
	/**
	 * Excel 文件名称校验
	 */
	public static final String STRING_EXCEL_FILE="^([A-Za-z0-9]|[\u4e00-\u9fa5]|-|\\(|\\)| )+.xls$";
	/**
	 * 文件路径校验(物理路径)
	 */
	public static final String STRING_PATH="([0-9A-Za-z]|[\u4e00-\u9fa5]|/|:|_|/|.)*";
	/**
	 * 协议头校验(\r\n校验)
	 */
	public static final String STRING_HEADER="^([000A]|[000D]|[\\S])+$";
	/**
	 * zip 文件名校验
	 */
	public static final String STRING_ZIPPATH="^([A-Za-z0-9]|[\u4e00-\u9fa5]|_| )+.zip$";

	/**
	 * 只允许输入中文
	 */
	public static final String STRING_ONLYCHINESE = "[\\u4e00-\\u9fa5]";

	/**
	 * 验证是否合法路径（验证是否包含..，防止Path Manipulation问题）
	 * @param path 文件路径
	 * @return 是否合法
	 */
	public static boolean isSecurePath(String path){
		String[] blackListChars = {".."};
		return (StringUtils.indexOfAny(path,blackListChars)<0);
	}

	/**
	 * 验证是否合法文件名
	 * @param fileName
	 * @return
	 */
	public static String getFilename(String fileName){
		if(!RequestUtils.isSecurePath(fileName)  || !fileName.matches(RequestUtils.STRING_PATH)){
			return "false";
		}
		try {
			return validFilePath(fileName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "false";
		}
	}

	/**
	 * "ISO-8859-1","UTF-8"编码转换验证
	 * @param request
	 * @param name
	 * @return
	 */
	public static String getCodeParameter(ServletRequest request,String name){
		String value=request.getParameter(name);
		try {
			value=new String(value.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (StringUtil.isEmpty(value) || !value.matches(RequestUtils.STRING_REGEX_UNICODE_ID) || !RequestUtils.isSecurePath(value)) {
			return "";
		}
		return value;
	}

	private static Set<String> SPECIALCHAR = new HashSet<String>();
	static {
		SPECIALCHAR.add(",");
		SPECIALCHAR.add("<");
		SPECIALCHAR.add(">");
		SPECIALCHAR.add("\"");
		SPECIALCHAR.add("'");
		// SPECIALCHAR.add("&");
	}

	/**
	 * 获取request中的所有参数，并过滤SQL特殊字符
	 *
	 * @param request
	 * @param name
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map getMapParameter(ServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		Enumeration params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String name = (String) params.nextElement();
			String[] values = request.getParameterValues(name);
			for (int i = 0; i < values.length; i++) {
				values[i] = escapeStringParameter(values[i], true);
			}

			map.put(name, values);
		}
		return map;
	}

	/**
	 * 获取一个Integer类型的参数，如果没有返回空，如果参数并非数字抛出异常
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @return Integer的参数或者为null
	 */
	public static Integer getIntParameter(ServletRequest request, String name) {
		String value = request.getParameter(name);
		if (StringUtil.isEmpty(value)) {
			return null;
		}
		if (StringUtil.isInteger(value)) {
			return Integer.parseInt(value);
		} else {
			throw new RuntimeException("参数" + name + "不是整型数字(Int)!");
		}
	}

	/**
	 * 获取一个int数组类型的参数，如果找不到就返回空数组
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 */
	public static Integer[] getIntParameters(ServletRequest request, String name) {
		String[] values = request.getParameterValues(name);
		if (values == null || values.length == 0) {
			return null;
		}

		Integer[] returnVals = new Integer[values.length];
		for (int i = 0; i < values.length; i++) {
			if (StringUtil.isEmpty(values[i])) {
				returnVals[i] = null;
			}
			if (StringUtil.isInteger(values[i])) {
				returnVals[i] = Integer.parseInt(values[i]);
			} else {
				throw new RuntimeException("参数" + name + "含有非整型数字(Int)的内容!");
			}
		}
		return returnVals;
	}

	/**
	 * 获取一个Long类型的参数，如果不存在则返回null，如果不是数字则抛出异常
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @return
	 */
	public static Long getLongParameter(ServletRequest request, String name) {
		String value = request.getParameter(name);
		if (StringUtil.isEmpty(value)) {
			return null;
		}
		if (StringUtil.isLong(value)) {
			return Long.parseLong(value);
		} else {
			throw new RuntimeException("参数" + name + "不是长整型数字(Long)!");
		}
	}

	/**
	 * 返回一个long数组的参数，如果找不到或者不是数字则返回空数组，不会抛出异常
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 */
	public static Long[] getLongParameters(HttpServletRequest request,
			String name) {
		String[] values = request.getParameterValues(name);
		if (values == null || values.length == 0) {
			return null;
		}

		Long[] returnVals = new Long[values.length];
		for (int i = 0; i < values.length; i++) {
			if (StringUtil.isEmpty(values[i])) {
				returnVals[i] = null;
			}
			if (StringUtil.isLong(values[i])) {
				returnVals[i] = Long.parseLong(values[i]);
			} else {
				throw new RuntimeException("参数" + name + "含有非长整型数字(Long)的内容!");
			}
		}
		return returnVals;
	}

	/**
	 * 获取一个Double类型的参数，如果找不到则返回null，如果不是数值则抛出异常
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 */
	public static Double getDoubleParameter(ServletRequest request, String name) {
		String value = request.getParameter(name);
		if (StringUtil.isEmpty(value)) {
			return null;
		}
		if (StringUtil.isNumber(value)) {
			return Double.parseDouble(value);
		} else {
			throw new RuntimeException("参数" + name + "不是数字(Double)!");
		}
	}

	/**
	 * 获取一个double数组的参数，如果找不到或者不是数值则返回空数组
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 */
	public static Double[] getDoubleParameters(ServletRequest request,
			String name) {
		String[] values = request.getParameterValues(name);
		if (values == null || values.length == 0) {
			return null;
		}

		Double[] returnVals = new Double[values.length];
		for (int i = 0; i < values.length; i++) {
			if (StringUtil.isEmpty(values[i])) {
				returnVals[i] = null;
			}
			if (StringUtil.isNumber(values[i])) {
				returnVals[i] = Double.parseDouble(values[i]);
			} else {
				throw new RuntimeException("参数" + name + "含有非数字(Double)的内容!");
			}
		}
		return returnVals;
	}
	/**
	 * 获取一个String的参数，一般用于不做校验直接返回
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @param flag
	 * 			  为true的时候直接返回，为false的时候走正常路线
	 */
	public static String getStringParameter(HttpServletRequest request,
			String name,boolean flag) {
		String value = request.getParameter(name);
		if(flag){
			return value;
		}else{
			return getStringParameter(request,name);
		}
	}

	/**
	 * 获取一个String的参数，如果找不到则返回null
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 */
	public static String getStringParameter(HttpServletRequest request,
			String name) {
		String value = request.getParameter(name);
		if (StringUtil.isJsonObject(value)) {
			return JSONObject.fromObject(value).toString();
		}
		else if(StringUtil.isJsonArray(value)) {
			return JSONArray.fromObject(value).toString();
		}

		return getStringParameter(request, name, null, -1);
	}

	/**
	 * 获取一个String的参数，如果找不到则返回null
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @param regex
	 *            正则表达式
	 */
	public static String getStringParameter(HttpServletRequest request,
			String name, String regex) {
		return getStringParameter(request, name, regex, -1);
	}

	/**
	 * 获取一个String的参数，如果找不到则返回null
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @param length
	 * 			     字符串长度
	 */
	public static String getStringParameter(HttpServletRequest request,
			String name, int length) {
		return getStringParameter(request, name, null, length);
	}

	/**
	 * 获取一个String的参数，如果找不到则返回null
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @param regex
	 *            正则表达式
	 * @param length
	 * 			     字符串长度
	 */
	@SuppressWarnings("unchecked")
	public static String getStringParameter(HttpServletRequest request,
			String name, String regex, int length) {
		String value = request.getParameter(name);
		if (StringUtil.isEmpty(value) || !value.matches(RequestUtils.STRING_HEADER) || !RequestUtils.isSecurePath(value)) {
			return "";
		}
		boolean hasName = false;
		Enumeration params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String pName = (String) params.nextElement();
			if (pName.equals(name)) {
				hasName = true;
				break;
			}
		}
		String url = request.getRequestURI();
		if (!hasName) {
			if (url.endsWith(".do")) {
				return null;
			}
			else {
				return "";
			}
		}
		if (StringUtil.isEmpty(value)) {
			return "";
		}
		try {
			if (regex != null && !value.matches(regex)) {
				if (url.endsWith(".do")) {
					//throw new DaoException("传入参数(" + name + ")不合法!");
				} else {
					return "";
				}
			}
		} catch (PatternSyntaxException e) {
			throw new RuntimeException("错误的正则表达式(" + regex + ")!");
		}

		if (length > 0 && value.length() > length) {
			if (url.endsWith(".do")) {
			//	throw new DaoException("传入参数(" + name + ")长度超长(≤" + length+ ")!");
			} else {
				return "";
			}
		}

		return escapeStringParameter(value, true);
	}

	/**
	 * 获取一个String数组的参数，如果不存在则返回空数组
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 */
	public static String[] getStringParameters(HttpServletRequest request,
			String name) {
		return getStringParameters(request, name, null, -1);
	}

	/**
	 * 获取一个String数组的参数，如果不存在则返回空数组
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @param regex
	 *            正则表达式
	 */
	public static String[] getStringParameters(HttpServletRequest request,
			String name, String regex) {
		return getStringParameters(request, name, regex, -1);
	}

	/**
	 * 获取一个String数组的参数，如果不存在则返回空数组
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @param regex
	 *            正则表达式
	 */
	public static String[] getStringParameters(HttpServletRequest request,
			String name, int length) {
		return getStringParameters(request, name, null, length);
	}

	/**
	 * 获取一个String数组的参数，如果不存在则返回空数组
	 *
	 * @param request
	 *            当前的HTTP request对象
	 * @param name
	 *            参数名称
	 * @param regex
	 *            正则表达式
	 * @param length
	 * 			     字符串长度
	 */
	public static String[] getStringParameters(HttpServletRequest request,
			String name, String regex, int length) {
		String[] values = request.getParameterValues(name);
		if (values == null || values.length == 0) {
			return null;
		}
		String url = request.getRequestURI();
		for (int i = 0; i < values.length; i++) {
			if (values[i] != null) {
				try {
					if (regex != null && !values[i].matches(regex)) {
						if (url.endsWith(".do")) {
						//	throw new DaoException("传入参数(" + name + ")不合法!");
						} else {
							values[i] = "";
							continue;
						}
					}
				} catch (PatternSyntaxException e) {
					throw new RuntimeException("错误的正则表达式!");
				}

				if (length > 0 && values[i].length() > length) {
					if (url.endsWith(".do")) {
					//	throw new DaoException("传入参数(" + name + ")长度超长(≤" + length+ ")!");
					} else {
						values[i] = "";
						continue;
					}
				}

				values[i] = escapeStringParameter(values[i], true);
			}
		}

		return values;
	}

	/**
	 * 拼装请求的完整URL
	 *
	 * @param url
	 * @param parameterNames
	 * @param parameterValues
	 * @return
	 * @throws IllegalArgumentException
	 */
	public static String getRequestURL(String url, String[] parameterNames,
			String[] parameterValues) throws IllegalArgumentException {
		if (url == null)
			return url;
		StringBuffer targetUrl = new StringBuffer(url);
		String anchor = null;
		int hash = url.indexOf('#');
		if (hash >= 0) {
			anchor = url.substring(hash + 1);
			targetUrl.setLength(hash);
		}
		boolean question = false;
		if (targetUrl.toString().indexOf('?') >= 0)
			question = true;
		if (parameterNames != null && parameterValues != null) {
			int length = parameterNames.length;
			for (int index = 0; index < length; index++) {
				if (!question) {
					targetUrl.append('?');
					question = true;
				} else
					targetUrl.append('&');
				targetUrl.append(parameterNames[index]);
				targetUrl.append('=');
				targetUrl.append(parameterValues[index]);
			}
		}
		if (anchor != null)
			targetUrl.append('#').append(anchor);
		return targetUrl.toString();
	}

	/**
	 * 拼装请求的完整的URL
	 *
	 * @param request
	 * @return
	 * @throws IllegalArgumentException
	 */
	@SuppressWarnings("unchecked")
	public static String getRequestURL(HttpServletRequest request)
			throws IllegalArgumentException {
		String requestUrl = request.getRequestURL().toString();
		String queryString = request.getQueryString();
		StringBuffer targetUrl = new StringBuffer();
		targetUrl.append(requestUrl);
		if (queryString != null && queryString.trim().length() > 0)
			targetUrl.append("?").append(queryString);
		if ("POST".equalsIgnoreCase(request.getMethod())) {
			String temp = targetUrl.toString();
			String anchor = null;
			int hash = temp.indexOf('#');
			if (hash >= 0) {
				anchor = temp.substring(hash + 1);
				targetUrl.setLength(hash);
				temp = targetUrl.toString();
			}
			boolean question = temp.indexOf('?') >= 0;
			Enumeration params = request.getParameterNames();
			while (params.hasMoreElements()) {
				String name = (String) params.nextElement();
				String[] values = RequestUtils.getStringParameters(request,
						name);
				if (values == null) {
					if (!question) {
						targetUrl.append('?');
						question = true;
					} else
						targetUrl.append("&");
					targetUrl.append(name).append("=");
				} else {
					for (int i = 0; i < values.length; i++) {
						if (!question) {
							targetUrl.append('?');
							question = true;
						} else
							targetUrl.append("&");
						targetUrl.append(name).append("=").append(values[i]);
					}
				}
			}
			if (anchor != null)
				targetUrl.append('#').append(anchor);
		}
		return targetUrl.toString();
	}

	public static String escapeStringParameter(String value, boolean isChinese) {
		if (isChinese) {// 是中文
			StringBuffer temp = new StringBuffer();
			for (int i = 0; i < value.length(); i++) {
				if (SPECIALCHAR.contains(String.valueOf(value.charAt(i)))) {
					String tempChar = String.valueOf(value.charAt(i));
					tempChar = StringEscapeUtils.escapeHtml(tempChar);
					tempChar = StringEscapeUtils.escapeJavaScript(tempChar);
					tempChar = StringEscapeUtils.escapeSql(tempChar);
					temp.append(tempChar);
				} else {
					temp.append(value.charAt(i));
				}
			}
			value = temp.toString();
		} else {// 不是中文
			value = StringEscapeUtils.escapeHtml(value);
			value = StringEscapeUtils.escapeJavaScript(value);
			value = StringEscapeUtils.escapeSql(value);
		}
		return value;
	}

	@SuppressWarnings("unchecked")
	public static String getJsonParameter(HttpServletRequest request,
			String name) {
		String value = request.getParameter(name);

		boolean hasName = false;
		Enumeration params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String pName = (String) params.nextElement();
			if (pName.equals(name)) {
				hasName = true;
				break;
			}
		}
		if (!hasName) {
			return null;
		}
		try {
			return JSONObject.fromObject(value).toString();
		} catch (Exception e) {
			try {
				return JSONArray.fromObject(value).toString();
			} catch (Exception e2) {
				throw new RuntimeException("传入参数(" + name + ")不是有效的JSON格式字符串!");
			}
		}
	}

	public static String validFilePath(String filepath) throws Exception {

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("a", "a");
		map.put("b", "b");
		map.put("c", "c");
		map.put("d", "d");
		map.put("e", "e");
		map.put("f", "f");
		map.put("g", "g");
		map.put("h", "h");
		map.put("i", "i");
		map.put("j", "j");
		map.put("k", "k");
		map.put("l", "l");
		map.put("m", "m");
		map.put("n", "n");
		map.put("o", "o");
		map.put("p", "p");
		map.put("q", "q");
		map.put("r", "r");
		map.put("s", "s");
		map.put("t", "t");
		map.put("u", "u");
		map.put("v", "v");
		map.put("w", "w");
		map.put("x", "x");
		map.put("y", "y");
		map.put("z", "z");


		map.put("A", "A");
		map.put("B", "B");
		map.put("C", "C");
		map.put("D", "D");
		map.put("E", "E");
		map.put("F", "F");
		map.put("G", "G");
		map.put("H", "H");
		map.put("I", "I");
		map.put("J", "J");
		map.put("K", "K");
		map.put("L", "L");
		map.put("M", "M");
		map.put("N", "N");
		map.put("O", "O");
		map.put("P", "P");
		map.put("Q", "Q");
		map.put("R", "R");
		map.put("S", "S");
		map.put("T", "T");
		map.put("U", "U");
		map.put("V", "V");
		map.put("W", "W");
		map.put("X", "X");
		map.put("Y", "Y");
		map.put("Z", "Z");

		map.put("1", "1");
		map.put("2", "2");
		map.put("3", "3");
		map.put("4", "4");
		map.put("5", "5");
		map.put("6", "6");
		map.put("7", "7");
		map.put("8", "8");
		map.put("9", "9");
		map.put("0", "0");

		map.put(":", ":");
		map.put(".", ".");
		map.put("/", "/");
		map.put(File.separator,File.separator);
		map.put("_", "_");
		map.put("-", "-");
		map.put("(", "(");
		map.put(")", ")");

		String temp = "";
		char[] filepaths = filepath.toCharArray();
		for (int i = 0; i < filepath.length(); i++) {
			if(Character.toString(filepaths[i]).matches(STRING_ONLYCHINESE)){
				temp += Character.toString(filepaths[i]) + "";
			}else if (map.get(filepath.charAt(i) + "") != null) {
				temp += map.get(filepath.charAt(i) + "");
			}
		}
		filepath = temp;
		return filepath;
	}

}
