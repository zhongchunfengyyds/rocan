/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.groupplant;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import cn.com.cgnpc.aep.bizcenter.appcenter.sdk.client.RestClient;
import cn.com.cgnpc.aep.bizcenter.appcenter.sdk.result.ApiResult;

import com.alibaba.fastjson.JSONObject;
//import com.cgn.components.coframe.mail.EmailMessage;
import com.cgn.itmp.basecommon.CommonUtil;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.dailyandoverhaul.authorization.Email;
import com.eos.spring.DASDaoSupport;

import commonj.sdo.DataObject;
import edu.emory.mathcs.backport.java.util.Collections;

/**
 * @author wujie
 * 综合指标管理接口实现类
 *
 */
public class ComprehensiveIndexMgtServiceImpl extends DASDaoSupport implements
		ComprehensiveIndexMgtService {

	/**
	 * 获取统计结果
	 */
	public JSONObject queryStatistics(DataObject params) {
		StringBuilder whereSql = new StringBuilder(" where 1=1");
		
		List<String> monthList = new ArrayList<String>();
		if( params != null){
			String org = String.valueOf(params.get("org"));
			String wd = String.valueOf(params.get("wd"));
			String month = String.valueOf(params.get("month"));
			
			if(StringUtils.isNotBlank(org)){
				whereSql.append(" and m.org = '"+org+"'");
			}
			if(StringUtils.isNotBlank(wd)){
				whereSql.append(" and m.wd = '"+wd+"'");
			}
			if(StringUtils.isNotBlank(month)){
				//近一年
				if(month.equals("1")){
					monthList = getMonths(12);
					whereSql.append(" and m.dates > '"+getLastMonth(12)+"'");
				}
				//近半年
				if(month.equals("2")){
					monthList = getMonths(6);
					whereSql.append(" and m.dates > '"+getLastMonth(6)+"'");
				}
			}
		}
		String sql = "com.cgn.itmp.dailyandoverhaul.groupplant.groupplant.querystatistics";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, whereSql.toString());
		List<String> dateList = new ArrayList<String>();
		List<String> DList = new ArrayList<String>();
		List<String> HList = new ArrayList<String>();
		List<String> NList = new ArrayList<String>();
		List<String> YList = new ArrayList<String>();
		List<String> TList = new ArrayList<String>();
		List<String> FList = new ArrayList<String>();
		
		if (monthList.size() > 0) {
			Collections.sort(monthList);
			for (String month: monthList) {
				DataObject monthData = getCurrentData(db,month);
				if (monthData!= null) {
					dateList.add(monthData.getString("dates").replace("-", "年")+"月");
					DList.add(String.valueOf((float)(Math.round(monthData.getFloat("d")*10))/10));
					HList.add(String.valueOf((float)(Math.round(monthData.getFloat("h")*10))/10));
					NList.add(String.valueOf((float)(Math.round(monthData.getFloat("n")*10))/10));
					YList.add(String.valueOf((float)(Math.round(monthData.getFloat("y")*10))/10));
					TList.add(String.valueOf((float)(Math.round(monthData.getFloat("t")*10))/10));
					FList.add(String.valueOf((float)(Math.round(monthData.getFloat("f")*10))/10));
				}else{
					dateList.add(month.replace("-", "年")+"月");
					DList.add("0");
					HList.add("0");
					NList.add("0");
					YList.add("0");
					TList.add("0");
					FList.add("0");
				}
			}
		}else{
			for (int i = 0; i < db.length; i++) {
				DataObject dataObject = db[i];
				dateList.add(dataObject.getString("dates").replace("-", "年")+"月");
				DList.add(String.valueOf((float)(Math.round(dataObject.getFloat("d")*10))/10));
				HList.add(String.valueOf((float)(Math.round(dataObject.getFloat("h")*10))/10));
				NList.add(String.valueOf((float)(Math.round(dataObject.getFloat("n")*10))/10));
				YList.add(String.valueOf((float)(Math.round(dataObject.getFloat("y")*10))/10));
				TList.add(String.valueOf((float)(Math.round(dataObject.getFloat("t")*10))/10));
				FList.add(String.valueOf((float)(Math.round(dataObject.getFloat("f")*10))/10));
			}
		}
		
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("dateList", dateList);
		jsonObj.put("DList", DList);
		jsonObj.put("HList", HList);
		jsonObj.put("NList", NList);
		jsonObj.put("YList", YList);
		jsonObj.put("TList", TList);
		jsonObj.put("FList", FList);
		jsonObj.put("counts", db.length);
		return jsonObj;
	}
	
	public DataObject getCurrentData(DataObject[] db,String date){
		DataObject obj = null;
		for (int i = 0; i < db.length; i++) {
			DataObject dataObject = db[i];
			if (dataObject.getString("dates").equals(date)) {
				return dataObject;
			}
		}
		return obj;
	}

	public String getLastMonth(int i){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
		c.add(Calendar.MONTH, -i);
		Date m = c.getTime();
		return sdf.format(m);
	}
	
	/**
	 * 获取指定月份范围内的年+月
	 * @param i 月份范围
	 * @return
	 */
	public static List<String> getMonths(int i){
		List<String> list = new ArrayList<String>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		for(int j = 0 ; j < i; j++){
			Calendar c = Calendar.getInstance();
			c.setTime(new Date());
			c.add(Calendar.MONTH, -j);
			Date m = c.getTime();
			list.add(sdf.format(m));
		}
		return list;
	}
	
	public 	boolean renwu(DataObject[] data,String user,String type,String usetText){
		

		RestClient re = new RestClient();
//		System.out.println(cgnMapForRest.toString());
		String table="<DIV style='BORDER: 1px solid black ;MARGIN:1%;PADDING:1%'><p  style='FONT-FAMILY: Microsoft YaHei;'>尊敬的   "+usetText+"，"+
						"您好：<br /><SPAN style='FONT-WEIGHT: bold'>（在役检查技术管理平台）</span>提醒您，您有以下督办待处理，请及时完成后续行动任务并填写任务[进展情况、当前状态、未按时完成原因及后续计划、附件]。<a  style='FONT-FAMILY: Microsoft YaHei;' href='http://itmp.cgnpc.com.cn/itmp'>请点击这里处理。</a></p>";
//		CommonUtil com=new CommonUtil();
		
		if(type.equals("conf")){			
			
			table+="<table style='FONT-SIZE: 10px;WIDTH: 80%; border:1px solid black;FONT-FAMILY: Microsoft YaHei;BORDER-COLLAPSE: collapse;'cellSpacing=0 cellPadding=0 width=600 align=center border=1><tr style='BACKGROUND-COLOR: skyblue' border='1'><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>归口专项组/归口部门</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>会议行动内容</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'> 责任人</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'> 完成标准 </th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'> 完成期限 </th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>进展情况 </th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>当前状态</th>";
			for(DataObject d:data){
				table+="<tr><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("gkzxz"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("hyxdnr"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("zrr"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("wcbz"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("wcqx"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("jzqk"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("dqzt"))+"</td></tr>";
			}
			table+="</table></div>";
			Email mail = new Email();
			mail.setAlowUser(user);
			mail.setBody(table);
			mail.setCc("");
			mail.setTo(user);
			mail.setSubject("会议管理任务督办");
			ApiResult cgnMapForRest = re.postCgnVoForRest("/email/processEmail", mail);
			
			return cgnMapForRest.getCode().toString().equals("200")?true:false;	
		}else{
				table+="<table style='FONT-SIZE: 10px;WIDTH: 80%; border:1px solid black;FONT-FAMILY: Microsoft YaHei;BORDER-COLLAPSE: collapse;'cellSpacing=0 cellPadding=0 width=600 align=center border=1><tr style='BACKGROUND-COLOR: skyblue' border='1'><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>监督检查窗口</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>适用机组</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>文件编码</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'> 问题所在页码</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>问题描述 </th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>后续行动负责人</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>检查/发文时间</th></tr>";
			for(DataObject d:data){
				table+="<tr><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("inswindow"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("applyjz"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("filecode"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("problempage"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("probleminfo"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("afteractionperson"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("singtime"))+"</td></tr>";
			}
			table+="</table></div>";
			Email mail = new Email();
			mail.setAlowUser(user);
			mail.setBody(table);
			mail.setCc("");
			mail.setTo(user);
			mail.setSubject("监管要求任务督办");
			ApiResult cgnMapForRest = re.postCgnVoForRest("/email/processEmail", mail);
			return cgnMapForRest.getCode().toString().equals("200")?true:false;
		}
	} 
	
	
	public String empty(String text){
		if(StringUtil.isEmpty(text)){
				return "";
		}
		return text;
	}

	public JSONObject queryStatistics(String params) {
		// TODO 自动生成的方法存根
		return null;
	}
	
}
