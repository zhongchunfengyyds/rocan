<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.UUID"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="java.util.Map"%>
<%@page import="com.cgn.components.coframe.tools.FtpUploadUtil"%>
<%@page import="com.eos.foundation.eoscommon.BusinessDictUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//response.setCharacterEncoding("UTF-8");
	//response.setContentType("application/json; charset=utf-8");
	long fileMaxSize = 1024 * 20;
	String fileTyps = "gif,jpeg,jpg,png,bmp,xlsx,xls,doc,docx,DOC,DOCX,PNG,JPG";

	//读取业务字典SYS_UPLOAD中的SIZE和TYPE 没有就用默认的值
	String uploadsize = null;
	String uploadtype = null;
	try {
		uploadsize = BusinessDictUtil.getDictName("SYS_UPLOAD", "SIZE");
		uploadtype = BusinessDictUtil.getDictName("SYS_UPLOAD", "TYPE");
		if (null != uploadtype && !"".equals(uploadtype)
				&& uploadtype.length() > 0) {
			fileTyps = uploadtype;
		}
		if (null != uploadsize && !"".equals(uploadsize)
				&& uploadsize.length() > 0) {
			long size = Long.parseLong(uploadsize);
			if (size > 0) {
				fileMaxSize = size;
			}
		}
	} catch (Exception e) {

	}

	response.setContentType("text/html;charset=utf-8");
	JSONObject json = new JSONObject();
	InputStream ins = null;
	OutputStream out1 = null;
	try {
		//返回JSON字符串参数
		json.put("code", 1);
		// 		JSONArray list = new JSONArray();
		File file = null;

		DiskFileItemFactory factory = new DiskFileItemFactory();

		
		factory.setSizeThreshold(1048576);

		ServletFileUpload upload = new ServletFileUpload(
				(FileItemFactory) factory);

		List<FileItem> list = upload.parseRequest(request);
		SimpleDateFormat format = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String date = format.format(new Date());
		String filetype = "";
		FileOutputStream fileOutputStream = null;

		for (FileItem item : list) {
			if (!item.isFormField()) {
				Map<String, Object> map = new HashMap<String, Object>();
				
				String value = item.getName();
				int start = value.lastIndexOf("\\");
				String file_name_old = value.substring(start + 1);
				file = new File(value);
				int index = file_name_old.lastIndexOf('.');
				if (index > -1) {
					filetype = file_name_old.substring(index);
				}
				ins = item.getInputStream();
				int length = (int) file.length();
				byte[] buffer = new byte[1024];
				int len = 0;
				
				// 判断临时文件目录是否存在，如果不存在，创建目录
				File tempFilePath = new File(this.getServletContext()
						.getRealPath("/tempFile"));
				if(!tempFilePath.exists()) {
					tempFilePath.mkdirs();
				}
						
				String file_name = this.getServletContext()
						.getRealPath("/tempFile")
						+ File.separator
						+ UUID.randomUUID().toString().replace("-", "")
						+ filetype;
				out1 = new FileOutputStream(file_name);
				while ((len = ins.read(buffer)) != -1) {
					out1.write(buffer, 0, len);
				}
				JSONArray listarray = new JSONArray();
				json.put("code", 1);
				map.put("name", file_name_old);
				map.put("uploadTime", date);
				map.put("size", Long.valueOf(item.getSize()));
				map.put("uri", file_name);
				listarray.put(map);
				json.put("list", listarray);

			}
		}

	} catch (Exception e) {
		json.put("code", 0);
		json.put("message", e.getMessage());
		e.printStackTrace();
	} finally {
		if (out1 != null) {
			out1.close();
		}
		if (ins != null) {
			ins.close();
		}
	}
	response.getWriter().write(json.toString());
%>
