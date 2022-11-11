package com.cgn.itmp.basecommon;

import java.io.File;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;

import cn.com.cgnpc.aep.bizcenter.appcenter.sdk.client.RestClient;
import cn.com.cgnpc.aep.bizcenter.appcenter.sdk.result.ApiResult;

import com.cgn.components.coframe.mail.EmailMessage;
import com.cgn.components.coframe.tools.FtpUploadUtil;
import com.cgn.components.coframe.tools.OperateType;
import com.cgn.components.coframe.tools.StatService;
import com.eos.das.entity.SequenceGenerator;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.data.datacontext.DataContextManager;
import com.eos.data.datacontext.IApplicationMap;
import com.eos.data.datacontext.IDataContext;
import com.eos.data.datacontext.IMUODataContext;
import com.eos.data.datacontext.IMapContextFactory;
import com.eos.data.datacontext.IRequestMap;
import com.eos.data.datacontext.ISessionMap;
import com.eos.data.datacontext.IUserObject;
import com.eos.data.datacontext.UserObject;
import com.eos.foundation.data.DataContextUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.CriteriaUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.runtime.core.ApplicationContext;
import com.eos.system.annotation.Bizlet;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.primeton.data.sdo.impl.PropertyImpl;
import com.primeton.data.xpath.impl.accessor.DataObjectHelper;
import com.primeton.ext.common.muo.MUODataContextHelper;
import com.primeton.workflow.model.consts.RunTimeConst;

import commonj.sdo.DataObject;
import commonj.sdo.helper.DataFactory;

@Bizlet
public class CommonUtil {
	static final long ONEDAYSECONDS = 86400000;// 一天毫秒数=24*60*60*1000 毫秒

	public static IUserObject getUserObject() {
		IUserObject userObject = null;
		if (userObject == null) {
			IMUODataContext muoContext = DataContextManager.current()
					.getMUODataContext();
			if (muoContext != null) {
				IUserObject user = muoContext.getUserObject();
				if (user != null) {
					userObject = user;
				}
				return userObject;
			}
		}
		return userObject;
	}

	/**
	 * 设置租户为default
	 */
	@Bizlet("")
	public static void setDefaultTelnentId() {
		Map temp = null;
		IUserObject user = CommonUtil.getUserObject();
		if (user != null) {
			temp = user.getAttributes();
		} else {
			temp = new HashMap<String, String>();
		}
		temp.put(RunTimeConst.TENANT_ID, "default");
		DataContextManager.current().getMUODataContext().getUserObject()
				.setAttributes(temp);

	}

	@Bizlet("")
	public static void resetTelnentId() {
		Map temp = null;
		IUserObject user = CommonUtil.getUserObject();
		if (user != null) {
			temp = user.getAttributes();
		} else {
			temp = new HashMap<String, String>();
		}
		temp.put(RunTimeConst.TENANT_ID, (String) temp.get("orgCode"));
		DataContextManager.current().getMUODataContext().getUserObject()
				.setAttributes(temp);

	}

	/**
	 * 取得当天的序列，每天序列从1开始重新计算
	 * 
	 * @param length
	 * @return 定长的数字字符串
	 */
	@Bizlet(value = "每天生成序号")
	public static String getSeq(String seqName, int length) {
		Date day = new Date();
		day.setTime(day.getTime() / ONEDAYSECONDS * ONEDAYSECONDS);
		String key = seqName + day.getTime();
		String seq = null;
		String resultStr = "";
		String todayStr = "";
		try {
			long iseq = DatabaseExt.getNextSequence(key);
			if (iseq == 1) {// 第一次获得当天的seq
				// 移除昨天的key
				day.setTime(day.getTime() - ONEDAYSECONDS);
				String yestodaykey = seqName + day.getTime();
				// 删除缓存同时删除eos_unique_table中的数据
				SequenceGenerator.removeSequence(yestodaykey);
			}
			seq = String.valueOf(iseq);
			int valueLength = seq.length();
			for (int i = 0; i < (length - valueLength - 8); i++) {
				resultStr += "0";
			}
			Calendar today = Calendar.getInstance();
			SimpleDateFormat formater = new SimpleDateFormat("yyyyMMdd");
			todayStr = formater.format(today.getTime());
		} catch (Exception e) {
			seq = null;
		}
		return todayStr + resultStr + seq;
	}

	/**
	 * 导出查询
	 * 
	 * @param fileds
	 * @param queryParam
	 * @param dicFieds
	 * @param jdFied
	 * @param jzFied
	 * @param order
	 * @return
	 * @throws Exception
	 */
	@Bizlet
	public String expExcelByFileds(String fileds, DataObject queryParam,
			String dicFieds, String jdFied, String jzFied, String order)
			throws Exception {
		// 建立查询实体
		DataObject criteriaType = DataFactory.INSTANCE.create(
				"com.primeton.das.criteria", "criteriaType");
		criteriaType.set("_entity", queryParam.getString("entity"));
		Object[] search = (Object[]) queryParam.get("searchContext");
		for (int i = 0; i < search.length; i++) {
			HashMap<String, String> temp = (HashMap<String, String>) search[i];
			// 加入条件
			criteriaType.set("_expr[" + (i + 1) + "]/" + temp.get("queryK"),
					temp.get("queryV"));
			criteriaType.set("_expr[" + (i + 1) + "]/_op", temp.get("op"));
		}

		int j = 0;
		if (!StringUtil.isEmpty(order)) { // 如果排序字段不为空
			String[] orderFieds = order.split(",");
			for (int k = 0; k < orderFieds.length; k++) {
				String[] oneOrderFied = orderFieds[k].split("@");
				if (oneOrderFied.length == 2) {
					j++;
					criteriaType.set("_orderby[" + j + "]/_property",
							oneOrderFied[0]);
					criteriaType.set("_orderby[" + j + "]/_sort",
							oneOrderFied[1]);
				}

			}

		}

		DataObject[] da = DatabaseUtil.queryEntitiesByCriteriaEntity("default",
				criteriaType);
		String[] filed = fileds.split("#");
		String filePath = ApplicationContext.getInstance().getWarRealPath()
				+ "tempFile";
		String outFileName = ExcelUtil.exportExcelCustomTitle(da, filed,
				queryParam.getString("title"), dicFieds, jdFied, jzFied,
				filePath);
		return outFileName;

	}

	/**
	 * 导出查询
	 * 
	 * @param fileds
	 * @param queryParam
	 * @param dicFieds
	 * @param jdFied
	 * @param jzFied
	 * @param order
	 * @return
	 * @throws Exception
	 */
	@Bizlet
	public String expExcelByFiledsAndAttach(String fileds,
			DataObject queryParam, String dicFieds, String jdFied,
			String jzFied, String order, String attachFied) throws Exception {
		// 建立查询实体
		DataObject criteriaType = DataFactory.INSTANCE.create(
				"com.primeton.das.criteria", "criteriaType");
		criteriaType.set("_entity", queryParam.getString("entity"));
		Object[] search = (Object[]) queryParam.get("searchContext");
		for (int i = 0; i < search.length; i++) {
			HashMap<String, String> temp = (HashMap<String, String>) search[i];
			// 加入条件
			criteriaType.set("_expr[" + (i + 1) + "]/" + temp.get("queryK"),
					temp.get("queryV"));
			criteriaType.set("_expr[" + (i + 1) + "]/_op", temp.get("op"));
		}

		int j = 0;
		if (!StringUtil.isEmpty(order)) { // 如果排序字段不为空
			String[] orderFieds = order.split(",");
			for (int k = 0; k < orderFieds.length; k++) {
				String[] oneOrderFied = orderFieds[k].split("@");
				if (oneOrderFied.length == 2) {
					j++;
					criteriaType.set("_orderby[" + j + "]/_property",
							oneOrderFied[0]);
					criteriaType.set("_orderby[" + j + "]/_sort",
							oneOrderFied[1]);
				}

			}

		}

		DataObject[] da = DatabaseUtil.queryEntitiesByCriteriaEntity("default", criteriaType);
		String[] filed = fileds.split("#");

		// 导出数据清单
		String zipName = queryParam.getString("title") + System.currentTimeMillis();
		String filePath = ApplicationContext.getInstance().getWarRealPath() + "tempFile" + File.separator + zipName;

		ExcelUtil.exportExcelCustomTitle(da, filed,
				queryParam.getString("title"), dicFieds, jdFied, jzFied,
				filePath);
		FileUtil fileUtil = new FileUtil();
		for (int m = 0; m < da.length; m++) {

			if (!StringUtil.isEmpty(da[m].getString(attachFied))) {
				String[] oneFile = fileUtil.fileDownload(da[m].getString(attachFied));
				fileUtil.copyFile(oneFile[0], filePath + File.separator, oneFile[2], false);
			}

		}
		ZipUtil.createZip(filePath, filePath + ".zip");
		return "tempFile" + File.separator + zipName + ".zip";

	}

	/**
	 * 导出查询多附件下载
	 * 
	 * @param fileds
	 * @param queryParam
	 * @param dicFieds
	 * @param jdFied
	 * @param jzFied
	 * @param order
	 * @return
	 * @throws Exception
	 */
	@Bizlet
	public String expExcelByFiledsAndftpAttach(String fileds,
			DataObject queryParam, String dicFieds, String jdFied,
			String jzFied, String order, String attachFied) throws Exception {
		// 建立查询实体
		DataObject criteriaType = DataFactory.INSTANCE.create(
				"com.primeton.das.criteria", "criteriaType");
		criteriaType.set("_entity", queryParam.getString("entity"));
		Object[] search = (Object[]) queryParam.get("searchContext");
		for (int i = 0; i < search.length; i++) {
			HashMap<String, String> temp = (HashMap<String, String>) search[i];
			// 加入条件
			criteriaType.set("_expr[" + (i + 1) + "]/" + temp.get("queryK"),
					temp.get("queryV"));
			if (temp.get("queryK") == "isdel") {
				criteriaType.set("_expr[" + (i + 1) + "]/_op", '=');
			} else {
				criteriaType.set("_expr[" + (i + 1) + "]/_op", temp.get("op"));
			}
		}

		int j = 0;
		// if (checkEntityPropertie(queryParam.getString("entity"), "orderno"))
		// {
		// j++;
		// criteriaType.set("_orderby[" + j + "]/_property", "orderno");
		// criteriaType.set("_orderby[" + j + "]/_sort", "asc");
		// }
		if (!StringUtil.isEmpty(order)) { // 如果排序字段不为空
			String[] orderFieds = order.split(",");
			for (int k = 0; k < orderFieds.length; k++) {
				String[] oneOrderFied = orderFieds[k].split("@");
				if (oneOrderFied.length == 2) {
					j++;
					criteriaType.set("_orderby[" + j + "]/_property",
							oneOrderFied[0]);
					criteriaType.set("_orderby[" + j + "]/_sort",
							oneOrderFied[1]);
				}

			}

		}

		// 如果ftp的附件没有
		Set<String> setfile = new HashSet<String>();
		String[] fildlist = fileds.split("#");
		for (int q = 0; q < fildlist.length; q++) {
			String[] at = fildlist[q].split("@");
			setfile.add(at[0]);
		}

		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		if (!StringUtil.isEmpty(attachFied)) { // 如果ftp的附件没有
			String[] attachFiedFieds = attachFied.split(",");
			for (int k = 0; k < attachFiedFieds.length; k++) {
				String[] at = attachFiedFieds[k].split("@");
				Map<String, String> map = new HashMap<String, String>();
				if (!setfile.contains(at[1])) {
					continue;
				}
				map.put("id", at[0]);
				map.put("name", at[1]);
				list.add(map);
			}
		}

		DataObject[] da = DatabaseUtil.queryEntitiesByCriteriaEntity("default", criteriaType);
		String[] filed = fileds.split("#");

		// 导出数据清单
		String zipName = queryParam.getString("title") + System.currentTimeMillis();
		String filePath = ApplicationContext.getInstance().getWarRealPath() + "tempFile" + File.separator + zipName;

		ExcelUtil.exportExcelCustomTitle(da, filed,
				queryParam.getString("title"), dicFieds, jdFied, jzFied,
				filePath);
		// 查询出来数据
		for (int m = 0; m < da.length; m++) {
			for (int i = 0; i < list.size(); i++) {
				if (!StringUtil.isEmpty(da[m].getString(list.get(i).get("id")))
						&& !StringUtil.isEmpty(da[m].getString(list.get(i).get(
								"name")))) {
					FTPUtil.instance.downloadFileByID(
							da[m].getString(list.get(i).get("id")), filePath,
							da[m].getString(list.get(i).get("name")));
					// fileUtil.copyFile(filePath,filePath+File.separator,da[m].getString("fj"),false);
				}
			}
		}
		ZipUtil.createZip(filePath, filePath + ".zip");
		return "tempFile" + File.separator + zipName + ".zip";

	}

	/**
	 * 根据中间表实体获取对应数据
	 * 
	 * @param entity
	 *            中间表实体
	 * @param processInstId
	 *            流程ID
	 * @param processField
	 *            流程字段名
	 * @return
	 */
	@Bizlet
	public DataObject getDataByEntityAndprocessInstId(String entity,
			String processInstId, String processField) {
		DataObject temp = DataObjectUtil.createDataObject(entity);
		temp.set(processField, processInstId);
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",
				temp);
		if (data.length > 0) {
			temp = data[0];
		}

		return temp;
	}

	/**
	 * 同步大纲状态
	 * 
	 * @param valueArr
	 * @param key
	 * @param str
	 * @return
	 */
	public Map<String, Object> getStatus(String[] valueArr, String key,
			String str) {
		if (StringHelper.isEmpty(str) || valueArr.length == 0)
			return null;
		Map<String, Object> stateMap = new HashMap<String, Object>();
		if (valueArr.length == 3) {
			// if(!(str+"P").equals(valueArr[0]) &&
			// !(str+"F").equals(valueArr[0]) &&
			// !(str+"C").equals(valueArr[0])){
			// stateMap.put(key, valueArr);
			// }else if(!(str+"P").equals(valueArr[1]) &&
			// !(str+"F").equals(valueArr[1]) &&
			// !(str+"C").equals(valueArr[1])){
			// stateMap.put(key, valueArr);
			// }else if(!(str+"P").equals(valueArr[2]) &&
			// !(str+"F").equals(valueArr[2]) &&
			// !(str+"C").equals(valueArr[2])){
			// stateMap.put(key, valueArr);
			// }else {
			//
			// }
			stateMap.put(
					key,
					ArrayUtils.toString(valueArr, ",").substring(1,
							ArrayUtils.toString(valueArr, ",").length() - 1));
		} else if (valueArr.length == 2) {
			if ((str + "P").equals(valueArr[0])) {
				if (!valueArr[1].startsWith(str)) {
					stateMap.put(
							key,
							ArrayUtils.toString(valueArr, ",")
									.substring(
											1,
											ArrayUtils.toString(valueArr, ",")
													.length() - 1));
				} else if ((str + "F").equals(valueArr[1])) {
					stateMap.put(key, str + "P," + str + "F");
				} else {
					stateMap.put(key, str + "P");
				}
			} else if ((str + "F").equals(valueArr[0])) {
				if (!valueArr[1].startsWith(str)) {
					stateMap.put(
							key,
							ArrayUtils.toString(valueArr, ",")
									.substring(
											1,
											ArrayUtils.toString(valueArr, ",")
													.length() - 1));
				} else if ((str + "P").equals(valueArr[1])) {
					stateMap.put(key, str + "P," + str + "F");
				} else {
					stateMap.put(key, str + "F");
				}
			} else if ((str + "C").equals(valueArr[0])) {
				if (!valueArr[1].startsWith(str)) {
					stateMap.put(
							key,
							ArrayUtils.toString(valueArr, ",")
									.substring(
											1,
											ArrayUtils.toString(valueArr, ",")
													.length() - 1));
				} else if ((str + "F").equals(valueArr[1])) {
					stateMap.put(key, str + "F");
				} else {
					stateMap.put(key, str + "P");
				}
			}
		} else if (valueArr.length == 1) {
			stateMap.put(key, valueArr[0]);
		}
		return stateMap;
	}

	/**
	 * 
	 * @param orderno
	 *            排序字段值
	 * @param entity
	 *            实体
	 * @return
	 */
	// public Float setOrderNo(String orderno,String entity){
	// if(StringHelper.isEmpty(orderno) || StringHelper.isEmpty(entity))return
	// null;
	// BigDecimal no = BigDecimal.valueOf(0.001);
	// BigDecimal reorderno = new BigDecimal(orderno);
	// reorderno = reorderno.add(no);
	// String tableName = DatabaseExt.getTableName("default", entity);
	// String[] oederNoStr = orderno.split("\\.");
	// String start = "";
	// if(oederNoStr.length > 0)start = oederNoStr[0];else start = orderno;
	// String end = String.valueOf(Integer.parseInt(start) + 1);
	// String address = "com.cgn.itmp.basecommon.jdglSql.getDataByOrderno";
	// Map<String, Object> parmsMap = new HashMap<String, Object>();
	// parmsMap.put("tablename", tableName);
	// parmsMap.put("start", orderno);
	// parmsMap.put("end", end);
	// Object[] typeDataObject =
	// (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
	// if(typeDataObject.length > 0){
	// DataObject[] dataObject = new DataObject[typeDataObject.length];
	// for(int i=0; i<typeDataObject.length; i++){
	// dataObject[i] = (DataObject)typeDataObject[i];
	// no.add(BigDecimal.valueOf(0.001));
	// BigDecimal ordernoL = reorderno.add(no);
	// dataObject[i].setFloat("orderno", ordernoL.floatValue());
	// DataObject dataTemp = DataObjectUtil.convertDataObject(dataObject[i],
	// entity, false);
	// DatabaseUtil.updateEntity("default", dataTemp);
	// }
	// }
	// return reorderno.floatValue();
	// }

	/**
	 * 检查对应实体中是否含有某个字段属性
	 * 
	 * @param entityName
	 * @param propertie
	 * @return
	 */
	public boolean checkEntityPropertie(String entityName, String propertie) {
		boolean isExits = false;
		DataObject data = DataObjectUtil.createDataObject(entityName);
		List list1 = data.getInstanceProperties();
		Iterator it = list1.iterator();
		while (it.hasNext()) {
			PropertyImpl property = (PropertyImpl) it.next();
			if (propertie.equals(property.getName())) {
				isExits = true;
				break;
			}
		}
		return isExits;
	}

	/**
	 * 发送邮件
	 */
	@Bizlet
	public EmailMessage[] CreateMessage(String title, String content,
			String user) {
		List<EmailMessage> list = new ArrayList<EmailMessage>();
		EmailMessage ccmsg = new EmailMessage();
		ccmsg.setSubject(title);
		ccmsg.setBody(content);
		ccmsg.setTo(user);
		list.add(ccmsg);
		return list.toArray(new EmailMessage[list.size()]);
	}

	/**
	 * 下载文件
	 * 
	 * @param hostname
	 *            FTP服务器地址
	 * @param port
	 *            FTP服务器端口号
	 * @param username
	 *            FTP登录帐号
	 * @param pwd
	 *            FTP登录密码
	 * @param pathname
	 *            FTP服务器文件目录
	 * @param filename
	 *            文件名称
	 * @param localpath
	 *            下载后的文件路径
	 * @return
	 */
	public boolean downloadFile(String hostname, int port, String username,
			String pwd, String pathname, String filename, String localpath) {
		boolean flag = false;
		FTPClient ftpClient = new FTPClient();
		try {
			// 连接FTP服务器
			ftpClient.connect(hostname, port);
			// 登录FTP服务器
			ftpClient.login(username, pwd);
			// 验证FTP服务器是否登录成功
			int replyCode = ftpClient.getReplyCode();
			if (!FTPReply.isPositiveCompletion(replyCode)) {
				return flag;
			}
			// 切换FTP目录
			ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);
			ftpClient.changeWorkingDirectory(pathname);
			ftpClient.enterLocalPassiveMode();
			FTPFile[] ftpFiles = ftpClient.listFiles();
			for (FTPFile file : ftpFiles) {
				if (filename.equalsIgnoreCase(file.getName())) {
					File localFile = new File(localpath + "/" + file.getName());
					OutputStream os = new FileOutputStream(localFile);
					ftpClient.retrieveFile(file.getName(), os);
					os.close();
				}
			}
			ftpClient.logout();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (ftpClient.isConnected()) {
				try {
					ftpClient.logout();
				} catch (IOException e) {

				}
			}
		}
		return flag;
	}

	/**
	 * 将isadmin放进session里面 swh
	 */
	@Bizlet
	public void isadmin(String isadmin, String role, HttpServletRequest request) {
		IMapContextFactory contextFactory = MUODataContextHelper.getMapContextFactory();
		ISessionMap sessionMap = contextFactory.getSessionMap();
		sessionMap.set("isadmin", isadmin);
		UserObject userObject = (UserObject) sessionMap.get("userObject");
		
		Map<String, Object> roleMap = new HashMap<String, Object>();
		roleMap.put("roleCodeList", role);
		userObject.setAttributes(roleMap);
		System.out.println("roleCodeList======"+role);
	}

	/**
	 * 保存菜单
	 */
	@Bizlet
	public static void SaveMenu(String operateDesc, String url, String userId,
			HttpServletRequest request) {
		OperateType operateType = OperateType.Menu;
		StatService service = new StatService();
		// String userId="";
		// String CurrentPageUrl="";
		try {
			IMUODataContext muo1 = DataContextManager.current()
					.getMUODataContext();
			IDataContext c = DataContextManager.current().getDefaultContext();
			// CurrentPageUrl = c.getName();
			if (muo1 != null) {
				IUserObject userobject1 = muo1.getUserObject();
				userId = userobject1.getUserId();
			}
		} catch (Throwable e) {

		}
		service.SaveLog(operateType, userId, operateDesc, url, request
				.getRequestURL().toString());
	}

}
