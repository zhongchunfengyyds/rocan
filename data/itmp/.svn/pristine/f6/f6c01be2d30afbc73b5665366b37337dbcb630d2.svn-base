
package com.cgn.itmp.weldingmanagement.Weldingapply.impl;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;

import com.cgn.itmp.basecommon.ExcelTemplate;
import com.cgn.itmp.basecommon.FTPUtil;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.weldingmanagement.Quality.Quality;
import com.cgn.itmp.weldingmanagement.Weldingapply.IWeldingapplyService;
import com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.runtime.core.ApplicationContext;
import com.eos.spring.DASDaoSupport;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊接申请service
 * Description: 程序功能的描述 
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class WeldingapplyService extends DASDaoSupport implements IWeldingapplyService{
	public void addWeldingapply(Weldingapply weldingapply){
		
		getDASTemplate().getPrimaryKey(weldingapply);
		getDASTemplate().insertEntity(weldingapply);
	}

	public void deleteWeldingapplys(Weldingapply[] weldingapplys ){
		for(DataObject weldingapply:weldingapplys){
			getDASTemplate().deleteEntityCascade(weldingapply);
		}
	}


	public void getWeldingapply(Weldingapply weldingapply){
		getDASTemplate().expandEntity(weldingapply);
	}


	public Weldingapply[] queryWeldingapplys(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Weldingapply.class, dasCriteria, pageCond);
	}


    public void updateWeldingapply(Weldingapply weldingapply){
	    getDASTemplate().updateEntity(weldingapply);
    }

	public void addWeldingapplyToCg(Weldingapply weldingapply) {
		weldingapply.set("isdel","3");
		getDASTemplate().getPrimaryKey(weldingapply);
		weldingapply.set("uuid",UUID.randomUUID().toString().replaceAll("-", ""));

		getDASTemplate().insertEntity(weldingapply);
		
	}
	 public void updateWeldingapplyBycg(DataObject[] data){
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		 String time = sdf.format(new Date());
		 SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String time1 = sdf1.format(new Date());
		 String wa_applyno="";
		for (int i = 0; i < data.length; i++) {
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply", false);
			//获取页面上的大修类型
			String rounds=temp.getString("rounds");
			if(null!=rounds||!"".equals(rounds)){
				//从数据库查询最新的申请单号
				
				//如果大修类型是日常类型先比较是否存在日期为当前的数据
				if ("N"==rounds||"N".equals(rounds)) {
 					String[] applys = getDASTemplate().queryByNamedSql(String.class, "com.cgn.itmp.weldingmanagement.Weldingapply.impl.welderapplysql.getapplyno","N");
					if(applys.length>0){
						String applyno=applys[0];
						if(applyno!=null&&applyno.contains(time)){
							//截取最后4位
							String applyno_end=applyno.substring(11, 15);
							int endNum=Integer.parseInt(applyno_end);
							int tempNum=10000+endNum+1;
							String tempStr=String.valueOf(tempNum);
							String num=tempStr.substring(1, tempStr.length());
							wa_applyno="WA-N"+time+"-"+num;
						}
					}else{
						wa_applyno="WA-N"+time+"-0001";
					}
				}else{
					String[] applys = getDASTemplate().queryByNamedSql(String.class, "com.cgn.itmp.weldingmanagement.Weldingapply.impl.welderapplysql.getapplyno",rounds);
					if(applys.length>0){
						String applyno=applys[0];
						if(applyno!=null&&applyno.contains(rounds)){
							int one=applyno.lastIndexOf("-");
							String applyno_end=applyno.substring((one+1),applyno.length());
							int endNum=Integer.parseInt(applyno_end);
							int tempNum=10000+endNum+1;
							String tempStr=String.valueOf(tempNum);
							String num=tempStr.substring(1, tempStr.length());
							wa_applyno="WA-"+rounds+"-"+num;
						}
					}else{
						wa_applyno="WA-"+rounds+"-0001";
					}
				}
				temp.set("applyno", wa_applyno);
			}
			temp.set("createtime", time1);
			DatabaseUtil.updateEntity("default",temp);
		}
		
	    }
	 
	 /**
	  * 焊接申请 
	  */
	public void addWeldingapplyByObj(DataObject[] data,String type,String user) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		 String time = sdf.format(new Date());
		 SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String time1 = sdf1.format(new Date());
		 String wa_applyno="";
		for (int i = 0; i < data.length; i++) {
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply", false);
			//此判断为修改流程
			if(type=="2"){
				temp=DataObjectUtil.convertDataObject(data[i],"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply", false);
				//需要将此数据改为审批中
				DataObject obj=DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply");
				obj.set("uuid",temp.get("uuid"));
				obj.set("status","SPZ");
				DatabaseUtil.updateEntity("default",obj);
				temp=DataObjectUtil.convertDataObject(data[i],"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply_MF", false);
				temp.set("relationid",data[i].getString("uuid"));
			}else{
				//获取页面上的大修类型
				String rounds=temp.getString("rounds");
				//获取机组状态
				String jzstatus = temp.getString("jzstatus");
				if(StringUtils.isNotBlank(jzstatus) && StringUtils.isNotBlank(rounds)){
					//机组状态为N的--新一年新一月后四位流水号就要从0001开始编
					if (jzstatus.equals("日常(N)")) {
						//获取最大流水号
						wa_applyno = "WA-N"+time;
	 					String[] applys = getDASTemplate().queryByNamedSql(String.class, "com.cgn.itmp.weldingmanagement.Weldingapply.impl.welderapplysql.getapplyno",wa_applyno);
						if(applys.length>0){
							if(StringUtils.isNotBlank(applys[0])){
								String applyno=applys[0];
								if(applyno!=null&&applyno.contains(time)){
									//截取最后4位
									String applyno_end=applyno.substring(11, 15);
									int endNum=Integer.parseInt(applyno_end);
									int tempNum=10000+endNum+1;
									String tempStr=String.valueOf(tempNum);
									String num=tempStr.substring(1, tempStr.length());
									wa_applyno= wa_applyno+"-"+num;
								}
							}else{
								wa_applyno="WA-N"+time+"-0001";
							}
						}else{
							wa_applyno="WA-N"+time+"-0001";
						}
					}else{
						//机组状态为大修的---新大修轮次后四位流水号就要从0001开始编；
						wa_applyno = "WA-"+rounds;
						String[] applys = getDASTemplate().queryByNamedSql(String.class, "com.cgn.itmp.weldingmanagement.Weldingapply.impl.welderapplysql.getapplyno",wa_applyno);
						if(applys.length>0){
							if(StringUtils.isNotBlank(applys[0])){
								String applyno=applys[0];
								if(applyno!=null&&applyno.contains(rounds)){
									int one=applyno.lastIndexOf("-");
									String applyno_end=applyno.substring((one+1),applyno.length());
									int endNum=Integer.parseInt(applyno_end);
									int tempNum=10000+endNum+1;
									String tempStr=String.valueOf(tempNum);
									String num=tempStr.substring(1, tempStr.length());
									wa_applyno="WA-"+rounds+"-"+num;
								}
							}else{
								wa_applyno="WA-"+rounds+"-0001";
							}
						}else{
							wa_applyno="WA-"+rounds+"-0001";
						}
					}
				}
				temp.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				temp.set("applyno", wa_applyno);
			}
			
			temp.set("createtime", time1);
			temp.set("applicant",user);
			
			DatabaseUtil.insertEntity("default",temp);
		}
		
	}

	public Quality[] getQualityWqpStatu(String qualitynumber) {
		if(null==qualitynumber||"".equals(qualitynumber)){
			return null;
		}
		
			String[] str=qualitynumber.split(",");
			List<String> qualitynumbers=new ArrayList<String>();
			for (int i = 0; i < str.length; i++) {
				qualitynumbers.add(str[i]);
			}
			Quality[] qua = getDASTemplate().queryByNamedSql(Quality.class, "com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.getwpqbyqualitynumber", qualitynumbers);
			if (qua.length>0) {
				return qua;
			}
			return null;
	}

	public void updateWeldingapplyByCancel(Weldingapply weldingapply,
			String qualitynumber) {
		getDASTemplate().updateEntity(weldingapply);
		if(!StringHelper.isEmpty(qualitynumber)){
			String[] qualitynumbers = qualitynumber.split(",");
			List<String> newList=new ArrayList<String>();
			String address = "com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.updatewqpstatu";
			for (int i = 0; i < qualitynumbers.length; i++) {
				newList.add(qualitynumbers[i]);
			}
			DatabaseExt.queryByNamedSql("default", address, newList);
		}
		
		
	}

	public void updateWeldingapplystatus(String processInstId) {
		
			String sql= "com.cgn.itmp.weldingmanagement.Weldingapply.impl.welderapplysql.updatestate";
			
			DatabaseExt.queryByNamedSql("default", sql, processInstId);
		
		
		
	}
    
	
	/**
	 * 根据流程id获取申请信息
	 * 
	 * @param processInstId
	 * @param entityType
	 * @return
	 */
	public DataObject getApplyInfoByProcessInstId(String processInstId,
			String entityType) {
		// 设置默认的流程字段
		if (StringUtil.isEmpty(processInstId) || StringUtil.isEmpty(entityType)) {
			return null;
		}
		// 获取授权信息
		DataObject temp = DataObjectUtil.createDataObject(entityType);
		temp.setString("processinstid", processInstId);
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",
				temp);
		
		if(data.length == 0){
			DataObject tempBu = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup");
			tempBu.setString("processinstid", processInstId);
			data = DatabaseUtil.queryEntitiesByTemplate("default",
					tempBu);
		}
		
		if (StringUtils.isNotBlank(String.valueOf(data[0].get("applytime")))) {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateTime = df.format(data[0].getDate("applytime"));
			data[0].set("applytime", dateTime);
		}
		return data[0];
	}

	/**
	 * 流程作废
	 * @param processInstId
	 * @param entityType
	 * @param isdelete
	 */
	public void stopWorkFlow(String processInstId, String entityType,
			String isdelete){
		DataObject obj = DataObjectUtil.createDataObject(entityType);
		obj.set("processinstid", processInstId);
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default", obj);
		for(DataObject temp: datas){
			temp.set("wqp_statu", "YZF");
			temp.set("isdel", "0");
			DatabaseUtil.updateEntity("default", temp);
		}
	}
	
	/**
	 * 升版流程作废，还原数据状态
	 * @param uuid
	 */
	public void lVersionInvalidWorkFlow(String uuid){
		DataObject obj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
		obj.set("uuid", uuid);
		obj.set("state", "WQPZBWC");
		DatabaseUtil.updateEntity("default", obj);
	}
	
	/**
	 * 回退成功，改变对应节点状态
	 * @param uuid
	 * @param wqpstate
	 */
	public void changeWqpState(String uuid,String wqpstate){
		DataObject obj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
		obj.set("uuid", uuid);
		obj.set("wqp_statu", wqpstate);
		DatabaseUtil.updateEntity("default", obj);
	}
	
	/**
	 * 流程中状态变更
	 * 
	 * @param processInstId
	 * @param entityType
	 * @param isdelete
	 *            0 生效 1删除 3流程中 4作废
	 * @return
	 * @throws Exception 
	 */
	public void updataFlowStatus(String processInstId, String entityType,
			String isdelete) throws Exception {

		// 设置默认的流程字段
		if (StringUtil.isEmpty(processInstId) || StringUtil.isEmpty(entityType)) {
			return;
		}
		if (StringUtil.isEmpty(isdelete)) {
			isdelete = "0";
		}
		
		// 获取信息
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		entity.setLong("processinstid", Long.parseLong(processInstId));
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",
				entity);
		for (DataObject temp : data) {
			temp.setString("state", "WQPZBWC");
			if(isdelete.equals("4")){
				temp.setString("wqp_statu", "YWC");
				//流程结束，单焊缝生成附件
				//获取标识符  单：D  多：M
				/*if (temp.getString("weldertype").equals("D")) {
					String attach = createPDFDocument(temp);
					temp.setString("fj", "焊接质量计划("+temp.getString("qualitynumber")+").pdf");
					temp.setString("fildid", attach);
				}*/
			}
			temp.setString("isdel", "0");
			temp.set("fhsj", new Date());
			//修改流程审批通过，真实表数据更新
			if(entityType.equals("com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup")){
				DataObject obj = DataObjectUtil.convertDataObject(temp, "com.cgn.itmp.weldingmanagement.Quality.Quality", false);
				obj.set("uuid", temp.get("relationid"));
				DatabaseUtil.updateEntity("default", obj);
			}else{
				//回写申请列表的WQP编号
				DataObject applyObj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply");
				applyObj.set("uuid", temp.getString("dynamicgeneration"));
				DataObject[] applyDatas = DatabaseUtil.queryEntitiesByTemplate("default",applyObj);
				if(applyDatas.length > 0){
					String qnumstr=applyDatas[0].getString("qualitynumber")==null?"":applyDatas[0].getString("qualitynumber");
					String qualitynumber = temp.getString("qualitynumber");
					if(!qnumstr.contains(qualitynumber)){
						Map<String, Object> map=new HashMap<String,Object>();
						map.put("uid", applyDatas[0].getString("uuid"));
						String address="com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.updatewelderwqpnum";
						map.put("qnum", qnumstr.equals("")?qualitynumber:(qnumstr+","+qualitynumber));
						DatabaseExt.executeNamedSql("default",address,map);
					}
				}
			}
			DatabaseUtil.updateEntity("default", temp);
		}
	}
	
	/**
	 * 生成pdf文件
	 * @param obj
	 * @return
	 * @throws Exception 
	 */
	public String createPDFDocument(DataObject obj) throws Exception{
		
		Document document = new Document();
		//横向
        Rectangle pageSize = new Rectangle(PageSize.A4.getHeight(), PageSize.A4.getWidth());
        pageSize.rotate();
        document.setPageSize(pageSize);
        String filePath = ApplicationContext.getInstance().getWarRealPath()+ "tempFile";
        String fileName = (UUID.randomUUID().toString()).replace("-", "")+ ".pdf";
        // 输出文档
		PdfWriter writer;
		try {
			writer = PdfWriter.getInstance(document, new FileOutputStream( filePath + File.separator + fileName));
			// 开启文档
			document.open();
			
			 //创建字体
			BaseFont font = BaseFont.createFont(ApplicationContext.getInstance().getWarRealPath()+"/font/simsun.ttf", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
			Font fontChinese = new Font(font,10); 
			Font titleChinese = new Font(font,12,Font.BOLD);
			
            // 创建表格对象
			PdfPTable table = new PdfPTable(11);
			// 设置表格宽度比例为%100
			table.setWidthPercentage(100);
			// 防止单元格内容过长自动换到下一页，避免空白部分
			table.setSplitLate(false);
			table.setSplitRows(true);
			float[] widths = new float[] { 54,54,54,54,54,54,54,54,54,54,54};
			table.setWidths(widths);
			
			//设置单元格
			table.addCell(newOneCell(new Paragraph("NDNP", titleChinese)));
			table.addCell(newOneCell(new Paragraph("焊接质量计划(WQP)", titleChinese),4));
			table.addCell(newOneCell(new Paragraph("焊接质量计划编号", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("qualitynumber")==null?"":String.valueOf(obj.get("qualitynumber")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("主票号", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("ticketnumber")==null?"":String.valueOf(obj.get("ticketnumber")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("功能位置", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("position")==null?"":String.valueOf(obj.get("position")), fontChinese)));
			
			table.addCell(newOneCell(new Paragraph("被焊母材", fontChinese)));
			table.addCell(newOneCell(new Paragraph("部件1", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("uppername")==null?"":String.valueOf(obj.get("uppername")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("部件2", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("downname")==null?"":String.valueOf(obj.get("downname")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("图纸/版本", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("equiaxedgraph")==null?"":String.valueOf(obj.get("equiaxedgraph")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("焊缝编码", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("weldnumber")==null?"":String.valueOf(obj.get("weldnumber")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("接头形式", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("form")==null?"":ExcelTemplate.returnDicValue("JTXS", String.valueOf(obj.get("form")),"DICTID", "DICTNAME"), fontChinese)));
			
			table.addCell(newOneCell(new Paragraph("接口尺寸", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("component1interfacesize")==null?"":String.valueOf(obj.get("component1interfacesize")), fontChinese),2));
			table.addCell(newOneCell(new Paragraph(obj.get("component2interfacesize")==null?"":String.valueOf(obj.get("component2interfacesize")), fontChinese),2));
			table.addCell(newOneCell(new Paragraph("焊接工艺卡编号/版本", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("cardnumber_edtion")==null?"":String.valueOf(obj.get("cardnumber_edtion")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("焊接方法", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("welding_method")==null?"":String.valueOf(obj.get("welding_method")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("地理位置", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("geographicalposition")==null?"":String.valueOf(obj.get("geographicalposition")), fontChinese)));
			
			table.addCell(newOneCell(new Paragraph("接口厚度", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("component1interfacethickness")==null?"":String.valueOf(obj.get("component1interfacethickness")), fontChinese),2));
			table.addCell(newOneCell(new Paragraph(obj.get("component2interfacethickness")==null?"":String.valueOf(obj.get("component2interfacethickness")), fontChinese),2));
			table.addCell(newOneCell(new Paragraph("制造级别", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("level")==null?"":String.valueOf(obj.get("level")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("焊接填充材料", fontChinese)));
			//转义字符替换
			String model_specifications = (obj.get("model_specifications")==null?"":String.valueOf(obj.get("model_specifications")));
			/*model_specifications = model_specifications.replace("&#91;", "【");
			model_specifications = model_specifications.replace("&#93;", "】");
			model_specifications = model_specifications.replace("&#43;", "+");*/
			table.addCell(newOneCell(new Paragraph(model_specifications, fontChinese)));
			table.addCell(newOneCell(new Paragraph("批号", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("batchnumber")==null?"":String.valueOf(obj.get("batchnumber")), fontChinese)));
			table.addCell(newOneCell(new Paragraph("母材材质", fontChinese)));
			table.addCell(newOneCell(new Paragraph(obj.get("component1material")==null?"":String.valueOf(obj.get("component1material")), fontChinese),2));
			table.addCell(newOneCell(new Paragraph(obj.get("component2material")==null?"":String.valueOf(obj.get("component2material")), fontChinese),2));
			table.addCell(newOneCell(new Paragraph("焊工", fontChinese)));
			table.addCell("");
			table.addCell(newOneCell(new Paragraph("焊工代码", fontChinese)));
			table.addCell("");
			table.addCell("");
			table.addCell("");
			
			//动态字段，最多8列
			if(StringUtils.isNotBlank(obj.getString("name1"))){
				table.addCell(newOneCell(new Paragraph(obj.getString("name1"), fontChinese)));
				table.addCell(newOneCell(new Paragraph(obj.getString("value1"), fontChinese)));
			}else{
				table.addCell("");
				table.addCell("");
			}
			if(StringUtils.isNotBlank(obj.getString("name2"))){
				table.addCell(newOneCell(new Paragraph(obj.getString("name2"), fontChinese)));
				table.addCell(newOneCell(new Paragraph(obj.getString("value2"), fontChinese)));
			}else{
				table.addCell("");
				table.addCell("");
			}
			if(StringUtils.isNotBlank(obj.getString("name3"))){
				table.addCell(newOneCell(new Paragraph(obj.getString("name3"), fontChinese)));
				table.addCell(newOneCell(new Paragraph(obj.getString("value3"), fontChinese)));
			}else{
				table.addCell("");
				table.addCell("");
			}
			if(StringUtils.isNotBlank(obj.getString("name4"))){
				table.addCell(newOneCell(new Paragraph(obj.getString("name4"), fontChinese)));
				table.addCell(newOneCell(new Paragraph(obj.getString("value4"), fontChinese)));
			}else{
				table.addCell("");
				table.addCell("");
			}
			
			table.addCell("");
			table.addCell("");
			table.addCell("");
			
			//工序模板
			PdfPCell c8 = new PdfPCell(new Paragraph("工序", fontChinese));
			c8.setRowspan(2);
			c8.setPaddingTop(20f);
			c8.setHorizontalAlignment(Element.ALIGN_CENTER);
			c8.setVerticalAlignment(Element.ALIGN_CENTER);
			table.addCell(c8);
			PdfPCell c9 = new PdfPCell(new Paragraph("工作步骤", fontChinese));
			c9.setRowspan(2);
			c9.setColspan(2);
			c9.setPaddingTop(20f);
			c9.setHorizontalAlignment(Element.ALIGN_CENTER);
			c9.setVerticalAlignment(Element.ALIGN_CENTER);
			table.addCell(c9);
			
			PdfPCell fileNumberCell = new PdfPCell(new Paragraph("文件编号", fontChinese));
			fileNumberCell.setRowspan(2);
			fileNumberCell.setPaddingTop(20f);
			fileNumberCell.setHorizontalAlignment(Element.ALIGN_CENTER);
			fileNumberCell.setVerticalAlignment(Element.ALIGN_CENTER);
			table.addCell(fileNumberCell);
			
			PdfPCell versionCell = new PdfPCell(new Paragraph("版本", fontChinese));
			versionCell.setRowspan(2);
			versionCell.setPaddingTop(20f);
			versionCell.setHorizontalAlignment(Element.ALIGN_CENTER);
			versionCell.setVerticalAlignment(Element.ALIGN_CENTER);
			table.addCell(versionCell);
			
			table.addCell(newOneCell(new Paragraph("操作者", fontChinese)));
			table.addCell(newOneCell(new Paragraph("QC1 承包商/执行部门", fontChinese),2));
			table.addCell(newOneCell(new Paragraph("QC2独立检查:焊接/NDT", fontChinese),2));
			StringBuffer sbfBox = new StringBuffer();
			List<String> boxList = new ArrayList<String>();
			boxList.add("QSR");
			boxList.add("QR");
			boxList.add("NQR");
			if(StringUtils.isNotBlank(obj.getString("name"))){
				String[] names = obj.getString("name").split(",");
				for(String n:names){
					sbfBox.append(n+"√ ");
					if(boxList.contains(n)){
						boxList.remove(n);
					}
				}
				if(boxList.size() > 0){
					for(String b:boxList){
						sbfBox.append(b+"□ ");
					}
				}
			}else{
				sbfBox.append("QSR □  QR □ NQR □");
			}
			table.addCell(newOneCell(new Paragraph(sbfBox.toString(), fontChinese)));
			PdfPTable iTable=new PdfPTable(2);
			iTable.addCell(newOneCell(new Paragraph("执行人", fontChinese)));
			iTable.addCell(newOneCell(new Paragraph("日期", fontChinese)));
			table.addCell(new PdfPCell(iTable));
			PdfPTable iTable1=new PdfPTable(3);
			iTable1.addCell(newOneCell(new Paragraph("控制点", fontChinese)));
			iTable1.addCell(newOneCell(new Paragraph("签名", fontChinese)));
			iTable1.addCell(newOneCell(new Paragraph("日期", fontChinese)));
			PdfPCell cell=new PdfPCell(iTable1);
			cell.setColspan(2);
			table.addCell(new PdfPCell(cell));
			table.addCell(new PdfPCell(cell));
			table.addCell(new PdfPCell(newOneCell(new Paragraph("说明", fontChinese))));
			//模板数据
			if(StringUtils.isNotBlank(obj.getString("workingprocedure"))){
				String sql = "com.cgn.itmp.weldingmanagement.Processes.impl.processes.getProcessesStepsByProcessid";
				DataObject[] datas = getDASTemplate().queryByNamedSql(DataObject.class, sql, obj.getString("workingprocedure"));
				for (int i = 0; i < datas.length; i++) {
					DataObject dataObject = datas[i];
					
					table.addCell(new PdfPCell(newOneCell(new Paragraph(dataObject.getString("orders"), fontChinese))));
					table.addCell(new PdfPCell(newOneCell(new Paragraph(dataObject.getString("steps"), fontChinese),2,1)));
					table.addCell(new PdfPCell(newOneCell(new Paragraph(dataObject.getString("filenumber"), fontChinese))));
					table.addCell(new PdfPCell(newOneCell(new Paragraph(dataObject.getString("version"), fontChinese))));
					
					Integer stepsRow = appendSpace(dataObject.getString("steps"),14);
					Integer filenumberRow = dataObject.getString("filenumber") == null ? 0 : appendSpace(dataObject.getString("filenumber"),7);
					Integer versionRow = dataObject.getString("filenumber") == null ? 0 :appendSpace(dataObject.getString("filenumber"),7);
					Integer rowCount = stepsRow > filenumberRow ? ( stepsRow > versionRow ? stepsRow : versionRow ) : ( filenumberRow >versionRow ? filenumberRow : versionRow );
					
					StringBuffer sbf = new StringBuffer();
					for (int s = 0; s < rowCount; s++) {
						sbf.append("\n");
					}
					
					PdfPTable iTable2=new PdfPTable(2);
					iTable2.setSplitLate(false);
					iTable2.setSplitRows(true);
					iTable2.addCell(sbf.toString());
					iTable2.addCell(sbf.toString());
					table.addCell(new PdfPCell(iTable2));
					PdfPTable iTable3=new PdfPTable(3);
					iTable3.setSplitLate(false);
					iTable3.setSplitRows(true);
					iTable3.addCell(sbf.toString());
					iTable3.addCell(sbf.toString());
					iTable3.addCell(sbf.toString());
					PdfPCell cell1=new PdfPCell(iTable3);
					cell1.setColspan(2);
					table.addCell(new PdfPCell(cell1));
					table.addCell(new PdfPCell(cell1));
					table.addCell(" ");
				}				
			}else{
				table.addCell(new PdfPCell(newOneCell(new Paragraph("", fontChinese))));
				table.addCell(new PdfPCell(newOneCell(new Paragraph("", fontChinese),2)));
				table.addCell(new PdfPCell(newOneCell(new Paragraph("", fontChinese))));
				table.addCell(new PdfPCell(newOneCell(new Paragraph("", fontChinese))));
				PdfPTable iTable2=new PdfPTable(2);
				iTable2.addCell("");
				iTable2.addCell("");
				table.addCell(new PdfPCell(iTable2));
				PdfPTable iTable3=new PdfPTable(3);
				iTable3.addCell("");
				iTable3.addCell("");
				iTable3.addCell("");
				PdfPCell cell1=new PdfPCell(iTable3);
				cell1.setColspan(2);
				table.addCell(new PdfPCell(cell1));
				table.addCell(new PdfPCell(cell1));
				table.addCell(" ");
			}
			
			document.add(table);
			//审核人员信息
			PdfPTable userTable = new PdfPTable(8);
			userTable.setWidthPercentage(100);
			float[] userWidths = new float[] { 64,84,64,84,64,84,64,84};
			userTable.setWidths(userWidths);
			
			userTable.addCell(newOneCell(new Paragraph("编写人", fontChinese)));
			SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			userTable.addCell(newOneCell(new Paragraph(obj.getString("applicant") + "\n" + df.format(obj.getDate("applytime")), fontChinese)));
			userTable.addCell(newOneCell(new Paragraph("审查人", fontChinese)));
			userTable.addCell(newOneCell(new Paragraph((obj.get("examinant")==null?"":formatName(obj.getString("examinant"))) + "\n" + (obj.getDate("scsj")==null?"":df.format(obj.getDate("scsj"))), fontChinese)));
			userTable.addCell(newOneCell(new Paragraph("复核人", fontChinese)));
			userTable.addCell(newOneCell(new Paragraph((obj.get("reviewer")==null?"":formatName(obj.getString("reviewer"))) + "\n" + (obj.getDate("fhsj")==null?"":df.format(obj.getDate("fhsj"))), fontChinese)));
			userTable.addCell(newOneCell(new Paragraph("工作负责人", fontChinese)));
			userTable.addCell(newOneCell(new Paragraph("", fontChinese)));
			document.add(userTable);
			
			// 文档关闭
			document.close();
			writer.close();
			FTPUtil.instance.uploadFileToFtpServerByname(fileName, filePath + File.separator + fileName);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		
		return fileName;
	}
	
	/**
	 * 格式化姓名，去除人员账号
	 * @param name
	 * @return
	 */
	public String formatName(String name){
		return name.substring(name.lastIndexOf(" ")+1, name.length());
	}
	
	/**
	 * 获取文字行数
	 * @param content
	 * @param num
	 * @return
	 */
	public Integer appendSpace(String content,Integer num){
		return (int) Math.ceil((double)content.length()/num);
	}
	
	/**
	 * 返回单元格
	 * @param para
	 * @param integers
	 * @return
	 */
	public PdfPCell newOneCell(Paragraph para, Integer ...integers){
		para.setSpacingAfter(0);
		para.setSpacingBefore(0);
		PdfPCell cell = new PdfPCell(para);
		cell.setMinimumHeight(20f);
		cell.setHorizontalAlignment(Element.ALIGN_CENTER);
		if (integers.length > 0) {
			cell.setColspan(integers[0]);
			if(integers.length > 1){
				//工作步骤专用，内容左对齐
				cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			}
		}
		cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
		return cell;
	}
	
	
	/**
	 * 焊接质量计划管理
	 * 工作流启动节点，初始化流程状态
	 * @param uuid
	 * @param processInstId
	 * @param personInfo
	 */
	public void updateQualityEntity(String uuid, String processInstId,
			DataObject personInfo) {
		if (StringUtils.isNotBlank(uuid)
				&& StringUtils.isNotBlank(processInstId)) {
			DataObject obj = DataObjectUtil
					.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
			obj.set("uuid", uuid);
			obj.set("processinstid", processInstId);
			obj.set("wqp_statu", personInfo.getString("wqpStatu"));
			obj.set("state", "WQPZBZ");
			DatabaseUtil.updateEntity("default", obj);
		}
	}
	
	/**
	 * 焊接质量计划管理
	 * 管理员创建
	 * @param uuid
	 */
	public void adminSaveData(String uuid) {
		if (StringUtils.isNotBlank(uuid)) {
			DataObject obj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
			obj.set("uuid", uuid);
			DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",obj);
			for (DataObject temp : data) {
				//获取标识符  单：D  多：M
				/*if (temp.getString("weldertype").equals("D")) {
					try {
							String attach = createPDFDocument(temp);
							temp.setString("fj", "焊接质量计划("+temp.getString("qualitynumber")+").pdf");
							temp.setString("fildid", attach);
						} catch (Exception e) {
							e.printStackTrace();
						}
				}*/
				//回写申请列表的WQP编号
				DataObject applyObj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply");
				applyObj.set("uuid", temp.getString("dynamicgeneration"));
				DataObject[] applyDatas = DatabaseUtil.queryEntitiesByTemplate("default",applyObj);
				if(applyDatas.length > 0){
					Map<String, Object> map=new HashMap<String,Object>();
					map.put("uid", applyDatas[0].getString("uuid"));
					String address="com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.updatewelderwqpnum";
					String qnumstr=applyDatas[0].getString("qualitynumber");
					String qualitynumber = temp.getString("qualitynumber");
					map.put("qnum", qnumstr == null?qualitynumber:(qnumstr.equals("")?qualitynumber:(qnumstr+","+qualitynumber)));
					DatabaseExt.executeNamedSql("default",address,map);
				}
				
				temp.set("state", "WQPZBWC");
				temp.set("wqp_statu", "YWC");
				temp.setString("isdel", "0");
				DatabaseExt.updateEntityCascade("default", temp);
			}
		}
	}
	
	/**
	 * 焊接质量计划 - WQP升版 - 管理员操作节点
	 * @param data
	 */
	public void lVersionAdminOperate(DataObject data){
		DataObject obj = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.weldingmanagement.Quality.Quality", false);
		if (obj.getString("weldertype").equals("D")) {
			try {
					String attach = createPDFDocument(obj);
					obj.setString("fj", "焊接质量计划("+obj.getString("qualitynumber")+").pdf");
					obj.setString("fildid", attach);
				} catch (Exception e) {
					e.printStackTrace();
				}
		}
		DatabaseUtil.updateEntity("default", obj);
	}
	
	/**
	 * 焊接质量计划 - WQP升版 - 普通用户操作节点
	 * @param data
	 */
	public void lVersionOperate(DataObject data,String user){
		DataObject realObj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
		realObj.set("uuid", data.get("uuid"));
		realObj.set("state", "WQPZBZ");
		DatabaseUtil.updateEntity("default", realObj);
		DataObject obj = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup", false);
		obj.set("relationid", data.get("uuid"));
		obj.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
		obj.set("state", "WQPZBZ");
		obj.set("applicant", user);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		obj.set("applytime",formatter.format(new Date()));
		DatabaseUtil.insertEntity("default", obj);
	}
	
	/**
	 * 焊接质量计划 - WQP升版 - 审批通过
	 * @param data
	 */
	public void lVersionEnd(DataObject data){
		DataObject obj = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.weldingmanagement.Quality.Quality", false);
		obj.set("uuid", data.get("relationid"));
		obj.set("state", "WQPZBWC");
		if (obj.getString("weldertype").equals("D")) {
			try {
					String attach = createPDFDocument(obj);
					obj.setString("fj", "焊接质量计划("+obj.getString("qualitynumber")+").pdf");
					obj.setString("fildid", attach);
				} catch (Exception e) {
					e.printStackTrace();
				}
		}
		DatabaseUtil.updateEntity("default", obj);
	}
	
	
	/**
	 * 身份证查询
	 * @return
	 */
	public  DataObject[] getTicketnumber(String jd){
		String sql="com.cgn.itmp.weldingmanagement.Weldingapply.impl.welderapplysql.getticketnumber";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, jd);
	}
	
	/**
	 * 更新业务数据
	 * @param quality
	 */
	public void modifyAuditData(Quality quality) {
		DatabaseUtil.updateEntity("default", quality);
	}
	
	/**
	 * 修改焊接质量计划 - WQP升版
	 * @param data
	 * @param entityType
	 */
	public void modifyBackupData(DataObject data,String entityType){
		DataObject obj = DataObjectUtil.convertDataObject(data, entityType, false);
		DatabaseUtil.updateEntity("default", obj);
		
		//更新真实表wqp_statu
		if(entityType.equals("com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup")){
			try {
				DataObject realObj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
				realObj.set("uuid", data.getString("relationid"));
				realObj.set("wqp_statu", data.getString("wqp_statu"));
				DatabaseUtil.updateEntity("default", realObj);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	
	/**
	 * 修改流程审批通过，修改真实表数据 - WQP升版
	 * @param data
	 * @param entityType
	 */
	public void modifyEnd(DataObject data,String entityType){
		DataObject obj = DataObjectUtil.convertDataObject(data, entityType, false);
		obj.set("uuid", data.get("relationid"));
		DatabaseUtil.updateEntity("default", obj);
	}
	

}
