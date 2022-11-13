
package com.cgn.itmp.weldingmanagement.Quality.impl;



import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;

import com.cgn.components.coframe.tools.FtpUploadUtil;
import com.cgn.itmp.basecommon.ExcelTemplate;
import com.cgn.itmp.basecommon.FTPUtil;
import com.cgn.itmp.basecommon.QrCodeUtil;
import com.cgn.itmp.basecommon.WordUtil;
import com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhauls;
import com.cgn.itmp.weldingmanagement.Quality.IQualityService;
import com.cgn.itmp.weldingmanagement.Quality.Quality;
import com.cgn.itmp.weldingmanagement.Weldingapply.impl.WeldingapplyService;
import com.eos.common.config.ConfigurationFactory;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.infra.config.Configuration;
import com.eos.infra.config.Configuration.Group;
import com.eos.runtime.core.ApplicationContext;
import com.eos.runtime.core.TraceLoggerFactory;
import com.eos.spring.DASDaoSupport;
import com.eos.system.logging.Logger;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.primeton.workflow.commons.utility.StringUtil;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class QualityService extends DASDaoSupport implements IQualityService{
	
	private static Logger logger = TraceLoggerFactory
			.getLogger(NuclearIslandOverhauls.class);
	
	public void addQuality(Quality quality){
		getDASTemplate().getPrimaryKey(quality);
		getDASTemplate().insertEntity(quality);
	}

	public void deleteQualitys(Quality[] qualitys ){
		for(DataObject quality:qualitys){
			getDASTemplate().deleteEntityCascade(quality);
		}
	}


	public void getQuality(Quality quality){
		getDASTemplate().expandEntity(quality);
	}


	public Quality[] queryQualitys(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Quality.class, dasCriteria, pageCond);
	}


    public void updateQuality(Quality quality){
	    getDASTemplate().updateEntity(quality);
    }

    /**
     * 更新质量计划内容或备份表内容
     * @param data
     * @param entityName
     */
    public void updateQualityOrBackup(DataObject data,String entityName){
	    DataObject obj = DataObjectUtil.convertDataObject(data, entityName, false);
	    DatabaseUtil.updateEntity("default", obj);
    }
    
    /**
     * 获取质量计划编号
     */
	public String getQualityNumber(String applyno) {
		String search = null;
		String qualitynum="";
		
		if(!StringUtil.isEmpty(applyno)){
			//int start=applyno.indexOf("-");
			int end=applyno.lastIndexOf("-");
			//search=applyno.substring(start+1, end);
			search=applyno.substring(0, end).replace("WA", "WQP");
			String[] qualitynumbers = getDASTemplate().queryByNamedSql(String.class, "com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.getqualitynumber",search);
			if(qualitynumbers.length>0){
				String qualitynumber=qualitynumbers[0];
				if(qualitynumber!=null&&qualitynumber.contains(search)){
					int one=qualitynumber.lastIndexOf("-");
					String qualitynumber_end=qualitynumber.substring((one+1),qualitynumber.length());
					int endNum=Integer.parseInt(qualitynumber_end);
					int tempNum=10000+endNum+1;
					String tempStr=String.valueOf(tempNum);
					String num=tempStr.substring(1, tempStr.length());
					qualitynum=search+"-"+num;
				}else{
					qualitynum=search+"-"+"0001";
				}
			}else{
				qualitynum=search+"-"+"0001";
			}
		}
		return qualitynum;
	}

	/**
	 *  创建质量计划
	 *  
	 *  WQP编号回写改至审批之后，使用dynamicgeneration字段存储申请id
	 */
	public String addQualityByApply(DataObject[] data, String entity,String uid,String qnum,String fj) {
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String time = sdf.format(new Date());
		 for (int i = 0; i < data.length; i++) {
				DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
				temp.setString("uuid", uuid);
				temp.setString("createtime", time);
				temp.setString("weldertype", "M");
				temp.setString("dynamicgeneration", uid);
				
/*//				前台拿到焊接申请的id以及WQP编号数据。通过id用sql去修改焊接申请中的qualitynumber为temp.get("qualitynumber")
				Map<String, Object> map=new HashMap<String,Object>();
				map.put("uid", uid);
				String address="com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.updatewelderwqpnum";
//				判断页面申请单的WQP编号是否为空如果不为空以逗号拼接跟新
				if(null!=qnum&&!"".equals(qnum)){
					String qnumstr=qnum+","+temp.getString("qualitynumber");
					map.put("qnum", qnumstr);
					DatabaseExt.executeNamedSql("default",address,map);
				}else{
					String qnumstr=temp.getString("qualitynumber");
					map.put("qnum", qnumstr);
					DatabaseExt.executeNamedSql("default",address,map);
				}*/
				DatabaseUtil.insertEntity("default",temp);
		 }
		 return uuid;
	}

	public Quality getInfoByQualityNumber(String qualitynumber) {
		
		String address="com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.getinfobyqualitynumber";
		
		Quality[] queryByNamedSql = getDASTemplate().queryByNamedSql(Quality.class, address, qualitynumber);
		if(queryByNamedSql.length>=0){
			return queryByNamedSql[0];
		}
		return null;
		
		
	}
	
	/**
	 *  创建质量计划
	 *  
	 *  WQP编号回写改至审批之后，使用dynamicgeneration字段存储申请id
	 */
	public String addOneQualityByApply(DataObject[] data, String entity,
			String uid, String qnum) {
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String time = sdf.format(new Date());
		 for (int i = 0; i < data.length; i++) {
				DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
				temp.setString("uuid", uuid);
				temp.setString("createtime", time);
				temp.setString("weldertype", "D");
				temp.setString("dynamicgeneration", uid);
				
/*//				前台拿到焊接申请的id以及WQP编号数据。通过id用sql去修改焊接申请中的qualitynumber为temp.get("qualitynumber")
				Map<String, Object> map=new HashMap<String,Object>();
				map.put("uid", uid);
				String address="com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.updatewelderwqpnum";
//				判断页面申请单的WQP编号是否为空如果不为空以逗号拼接跟新
				if(null!=qnum&&!"".equals(qnum)){
					String qnumstr=qnum+","+temp.getString("qualitynumber");
					map.put("qnum", qnumstr);
					
					DatabaseExt.executeNamedSql("default",address,map);
				}else{
					String qnumstr=temp.getString("qualitynumber");
					map.put("qnum", qnumstr);
					DatabaseExt.executeNamedSql("default",address,map);
				}*/
				DatabaseUtil.insertEntity("default",temp);
		 }
		 return uuid;
	}

	public Map<String, Integer> getOneQualityByApply(String qnum) {
		int singleweldnum=0;//单焊缝
		int multiweldnum=0;//多焊缝
		if(!StringUtil.isEmpty(qnum)){
			if(qnum.indexOf(",") != -1){
				String[] s1 = qnum.split(",");
				for (int i = 0; i < s1.length; i++) {
					String[] mo = getDASTemplate().queryByNamedSql(String.class,"com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.getwelderqualitytype",s1[i]);
					if(mo.length>0){
						String mo1=mo[0];
						if(mo1.equals("D")){
							singleweldnum +=1;
						}else if(mo1.equals("M")){
							multiweldnum +=1;
						}
					}
				}
			}else{
				String[] mo = getDASTemplate().queryByNamedSql(String.class,"com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.getwelderqualitytype",qnum);
				if(mo.length>0){
					String mo1=mo[0];
					if(mo1.equals("D")){
						singleweldnum +=1;
					}else if(mo1.equals("M")){
						multiweldnum +=1;
					}
				}
			}
		}
		Map<String, Integer> map =new HashMap<String, Integer>();
		map.put("singleweldnum", singleweldnum);
		map.put("multiweldnum", multiweldnum);
		return map;
	}

	public Quality[] getQualityOneSimple(String qualitynumber) {
		if(StringHelper.isEmpty(qualitynumber)){
			return null;
		}
		String address="com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.getQualityOneSimple";
		Quality[] qua = getDASTemplate().queryByNamedSql(Quality.class, address, qualitynumber);
		if (qua.length>0) {
			return qua;
		}
		return null;
	}
    
	
	/**
	 * 修改流程 - 修改数据 - 普通用户节点
	 * @param data
	 */
	public void modifyQualityEntity(DataObject data,String user){
		DataObject obj = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup", true);
		obj.set("relationid", data.getString("uuid"));
		obj.set("applicant", user);
		obj.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
		DatabaseUtil.insertEntity("default", obj);
		DataObject zhu= DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
		zhu.set("uuid",data.getString("uuid"));
		zhu.set("processStatus","0");
		
		zhu.set("processinstid",data.get("processinstid"));
		DatabaseUtil.updateEntity("default", zhu);
	}

	/**
	 * 焊接质量计划 - 修改流程 - 管理员节点修改数据
	 * @param data
	 */
	public void adminModifyQualityData(DataObject data){
		DataObject obj = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.weldingmanagement.Quality.Quality", true);
		DatabaseUtil.updateEntity("default", obj);
	}
	/**
	 * 焊接质量计划 - 项目记录- 添加数据
	 * @param data
	 */
	public void additemrecord(DataObject data,String user){
		
		if("开工".equals(data.getString("operationtype"))){
			//生成附件
			DataObject qualityEntity = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
			qualityEntity.set("uuid", data.getString("uuid"));
			
			DataObject[] qualities = DatabaseUtil.queryEntitiesByTemplate("default", qualityEntity);
			if (qualities.length > 0) {
				//获取标识符  单：D  多：M
				if("D".equals(qualities[0].getString("weldertype"))){
					//单焊缝，根据数据生成pdf文件
					try {
						String attach = createPDFDocument(qualities[0]);
						qualities[0].setString("fj", "焊接质量计划("+qualities[0].getString("qualitynumber")+").pdf");
						qualities[0].setString("fildid", attach);
						DatabaseUtil.updateEntity("default", qualities[0]);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}else if("M".equals(qualities[0].getString("weldertype"))){
					//多焊缝，根据word文档转换为pdf文档
					if(qualities[0].getString("fj").endsWith(".doc") || qualities[0].getString("fj").endsWith(".docx")){
						 try {
							String filePath = ApplicationContext.getInstance().getWarRealPath()+ "tempFile";
							String fileId = qualities[0].getString("fildid");
							//从ftp服务器上获取对应文件
							FtpUploadUtil.retrieveFile(new FileOutputStream(filePath+ File.separator +fileId), fileId);
							
							//重命名pdf文件
							String fileName = (UUID.randomUUID().toString()).replace("-", "")+ ".pdf";
							//word转为pdf文件
							WordUtil.doc2pdf(filePath+ File.separator +fileId, filePath+ File.separator +fileName);
							//上传至ftp服务器
							FTPUtil.instance.uploadFileToFtpServerByname(fileName, filePath + File.separator + fileName);
							
							qualities[0].setString("fj", "焊接质量计划("+qualities[0].getString("qualitynumber")+").pdf");
							qualities[0].setString("fildid", fileName);
							DatabaseUtil.updateEntity("default", qualities[0]);
							
						} catch (FileNotFoundException e) {
							e.printStackTrace();
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
				
			}
		}
		
		data.set("uuid",UUID.randomUUID().toString().replaceAll("-",""));
		data.set("operationtime",new Date());
		data.set("operationperson",user);
		data.set("isdel","0");
		DataObject obj = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.weldingmanagement.Quality.QualityRecord", true);
		DatabaseUtil.insertEntity("default", obj);
	}
	
	/**
	 * 焊接质量计划 - 项目记录- 查询
	 * @param data
	 */
	public DataObject[] getitemrecord(CriteriaType criteriaType,PageCond pageCond){
//		DataObject temp = DataObjectUtil.convertDataObject(data,"com.cgn.itmp.weldingmanagement.Quality.QualityRecord",true);
//		DataObject[] record = DatabaseUtil.queryEntitiesByTemplate("default",temp);
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(DataObject.class, dasCriteria, pageCond);
//		return record;
	}
	
	
	/**
	 * 获取质量计划数据
	 */
	public DataObject getQualityByProcessInstId(String processInstId) {
		DataObject entity = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup");
		entity.setString("processinstid", processInstId);
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
		if(datas.length > 0){
			return datas[0];
		}
		return null;
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
				System.out.println(obj.getString("workingprocedure"));
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
	 * 打印WQP
	 * @param id
	 * @param entityName
	 * @param childEntityName
	 * @return
	 */
	public String printWQP(String ids) {
		List<String> idsList = Arrays.asList(ids.split(","));
		//获取选取的数据
		List<DataObject> dataList = new ArrayList<DataObject>();
		for (String id : idsList) {
			DataObject entity = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
			entity.set("uuid", id);
			DataObject[] objs = DatabaseUtil.queryEntitiesByTemplate("default",entity);
			if (objs.length > 0) {
				dataList.add(objs[0]);
			}
		}
		String fileName = createPDF("焊接质量计划WQP打印", dataList);
		
		logger.info("<<<<<<<<<< 导出pdf文档：" + fileName);
		return fileName;
	}
	

	
	/**
	 * 创建文档
	 * @param planName
	 * @param dataList
	 * @return
	 */
	public String createPDF(String planName, List<DataObject> dataList) {
		String filePath = ApplicationContext.getInstance().getWarRealPath()+ "tempFile";
		// 输出文档路径及名称
		File outFile = new File(filePath);
		if (!outFile.exists()) {
			outFile.mkdirs();
		}
		String fileName = "";
		try {
			fileName = planName + ".pdf";
			String templateDir = filePath + File.separator + fileName;
			// 定义文档对象
			Document document = new Document();
			//文档横向展示
	        Rectangle pageSize = new Rectangle(PageSize.A4.getHeight(), PageSize.A4.getWidth());
	        pageSize.rotate();
	        document.setPageSize(pageSize);
			// 输出文档
			PdfWriter writer = PdfWriter.getInstance(document,
					new FileOutputStream(templateDir));
			// 开启文档
			document.open();
			
	        //创建字体
	        BaseFont font = BaseFont.createFont(ApplicationContext.getInstance().getWarRealPath()+"/font/simsun.ttf", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
			Font fontChinese = new Font(font,10); 
			Font titleChinese = new Font(font,12,Font.BOLD);
			
			//正文开始
			//创建表格对象，展示数据
			for (DataObject obj : dataList) {
				document.newPage();
				//二维码图片
				PdfPTable imgTable = new PdfPTable(1);
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
				Configuration config=ConfigurationFactory.getUserConfiguration();
		    	Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
		    	//读取userconfig里面的ip
				String path=fileGroup.getConfigValue("FILE_IP");
				String qrURL = path+"QualityQR.jsp?id="+obj.getString("uuid")+"&d="+sdf.format(new Date());
				String qrName = filePath + File.separator + (UUID.randomUUID().toString()).replace("-", "")+".png";
				float scalePercentage = (72 / 300f) * 40.0f;
				QrCodeUtil.createQrCodeImg(new FileOutputStream(new File(qrName)),qrURL,1000,"PNG");
				Image image = Image.getInstance(qrName);
				image.scalePercent(scalePercentage, scalePercentage);
	            image.setAlignment(Element.ALIGN_LEFT);
	            // 将图片1添加到pdf文件中
	            imgTable.addCell(image);
	            document.add(image);
				
				// 创建表格对象
				PdfPTable table = new PdfPTable(11);
				//上边距
				table.setSpacingBefore(10);
				// 设置表格宽度比例为%100
				table.setWidthPercentage(100);
				// 防止单元格内容过长自动换到下一页，避免空白部分
				table.setSplitLate(false);
				//总宽度595
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
				table.addCell(newOneCell(new Paragraph("",fontChinese),3));

				
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
				
//				PdfPCell fileNumberCell = new PdfPCell(new Paragraph("文件编号", fontChinese));
//				fileNumberCell.setRowspan(2);
//				fileNumberCell.setPaddingTop(20f);
//				fileNumberCell.setHorizontalAlignment(Element.ALIGN_CENTER);
//				fileNumberCell.setVerticalAlignment(Element.ALIGN_CENTER);
//				table.addCell(fileNumberCell);
//				
//				PdfPCell versionCell = new PdfPCell(new Paragraph("版本", fontChinese));
//				versionCell.setRowspan(2);
//				versionCell.setPaddingTop(20f);
//				versionCell.setHorizontalAlignment(Element.ALIGN_CENTER);
//				versionCell.setVerticalAlignment(Element.ALIGN_CENTER);
//				table.addCell(versionCell);
				
				table.addCell(newOneCell(new Paragraph("操作者", fontChinese),3));
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
				PdfPTable iTable0=new PdfPTable(1);
				iTable0.addCell(newOneCell(new Paragraph("文件编号", fontChinese)));
				table.addCell(new PdfPCell(iTable0));
				PdfPTable iTable01=new PdfPTable(1);
				iTable01.addCell(newOneCell(new Paragraph("版本", fontChinese)));
				table.addCell(new PdfPCell(iTable01));
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
					iTable2.setSplitLate(false);
					iTable2.setSplitRows(true);
					iTable2.addCell(" ");
					iTable2.addCell(" ");
					table.addCell(new PdfPCell(iTable2));
					PdfPTable iTable3=new PdfPTable(3);
					iTable3.setSplitLate(false);
					iTable3.setSplitRows(true);
					iTable3.addCell(" ");
					iTable3.addCell(" ");
					iTable3.addCell(" ");
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
				float[] userWidths = new float[] { 60,88,60,88,60,88,60,88};
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
				
			}
			// 文档关闭
			document.close();
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "tempFile"+File.separator+fileName;
	}
	
	
	
	
	/**
	 * 下载附件生成
	 * @param id
	 * @param entityName
	 * @param childEntityName
	 * @return
	 */
	public String printfile(String id,String filename) {
		
		//获取选取的数据
		List<DataObject> dataList = new ArrayList<DataObject>();
		
			DataObject entity = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
			entity.set("uuid", id);
			DataObject[] objs = DatabaseUtil.queryEntitiesByTemplate("default",entity);
			if (objs.length > 0) {
				dataList.add(objs[0]);
			}
		
		String fileName = uploadpdf(filename, dataList);
		
		logger.info("<<<<<<<<<< 导出pdf文档：" + fileName);
		return fileName;
	}
	
	/**
	 * 创建文档
	 * @param planName
	 * @param dataList
	 * @return
	 */
	public String uploadpdf(String planName, List<DataObject> dataList) {
		String filePath = ApplicationContext.getInstance().getWarRealPath()+ "tempFile";
		// 输出文档路径及名称
		File outFile = new File(filePath);
		if (!outFile.exists()) {
			outFile.mkdirs();
		}
		planName="焊接质量计划("+dataList.get(0).getString("qualitynumber")+")";
		
		String fileName = "";
		try {
			fileName = planName + ".pdf";
			String templateDir = filePath + File.separator + fileName;
			// 定义文档对象
			Document document = new Document();
			//文档横向展示
	        Rectangle pageSize = new Rectangle(PageSize.A4.getHeight(), PageSize.A4.getWidth());
	        pageSize.rotate();
	        document.setPageSize(pageSize);
			// 输出文档
			PdfWriter writer = PdfWriter.getInstance(document,
					new FileOutputStream(templateDir));
			// 开启文档
			document.open();
			
	        //创建字体
	        BaseFont font = BaseFont.createFont(ApplicationContext.getInstance().getWarRealPath()+"/font/simsun.ttf", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
			Font fontChinese = new Font(font,10); 
			Font titleChinese = new Font(font,12,Font.BOLD);
			
			//正文开始
			//创建表格对象，展示数据
			for (DataObject obj : dataList) {
				document.newPage();
				//二维码图片
//				PdfPTable imgTable = new PdfPTable(1);
//				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//				Configuration config=ConfigurationFactory.getUserConfiguration();
//		    	Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
		    	//读取userconfig里面的ip
//				String path=fileGroup.getConfigValue("FILE_IP");
//				String qrURL = path+"QualityQR.jsp?id="+obj.getString("uuid")+"&d="+sdf.format(new Date());
//				String qrName = filePath + File.separator + (UUID.randomUUID().toString()).replace("-", "")+".png";
//				float scalePercentage = (72 / 300f) * 40.0f;
//				QrCodeUtil.createQrCodeImg(new FileOutputStream(new File(qrName)),qrURL,1000,"PNG");
//				Image image = Image.getInstance(qrName);
//				image.scalePercent(scalePercentage, scalePercentage);
//	            image.setAlignment(Element.ALIGN_LEFT);
	            // 将图片1添加到pdf文件中
//	            imgTable.addCell(image);
//	            document.add(image);
				
				// 创建表格对象
				PdfPTable table = new PdfPTable(11);
				//上边距
//				table.setSpacingBefore(10);
				// 设置表格宽度比例为%100
				table.setWidthPercentage(100);
				// 防止单元格内容过长自动换到下一页，避免空白部分
				table.setSplitLate(false);
				//总宽度595
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
				table.addCell(newOneCell(new Paragraph("",fontChinese),3));

				
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
				
//				PdfPCell fileNumberCell = new PdfPCell(new Paragraph("文件编号", fontChinese));
//				fileNumberCell.setRowspan(2);
//				fileNumberCell.setPaddingTop(20f);
//				fileNumberCell.setHorizontalAlignment(Element.ALIGN_CENTER);
//				fileNumberCell.setVerticalAlignment(Element.ALIGN_CENTER);
//				table.addCell(fileNumberCell);
//				
//				PdfPCell versionCell = new PdfPCell(new Paragraph("版本", fontChinese));
//				versionCell.setRowspan(2);
//				versionCell.setPaddingTop(20f);
//				versionCell.setHorizontalAlignment(Element.ALIGN_CENTER);
//				versionCell.setVerticalAlignment(Element.ALIGN_CENTER);
//				table.addCell(versionCell);
				
				table.addCell(newOneCell(new Paragraph("操作者", fontChinese),3));
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
				PdfPTable iTable0=new PdfPTable(1);
				iTable0.addCell(newOneCell(new Paragraph("文件编号", fontChinese)));
				table.addCell(new PdfPCell(iTable0));
				PdfPTable iTable01=new PdfPTable(1);
				iTable01.addCell(newOneCell(new Paragraph("版本", fontChinese)));
				table.addCell(new PdfPCell(iTable01));
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
					iTable2.setSplitLate(false);
					iTable2.setSplitRows(true);
					iTable2.addCell(" ");
					iTable2.addCell(" ");
					table.addCell(new PdfPCell(iTable2));
					PdfPTable iTable3=new PdfPTable(3);
					iTable3.setSplitLate(false);
					iTable3.setSplitRows(true);
					iTable3.addCell(" ");
					iTable3.addCell(" ");
					iTable3.addCell(" ");
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
				float[] userWidths = new float[] { 60,88,60,88,60,88,60,88};
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
				
			}
			// 文档关闭
			document.close();
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "tempFile"+File.separator+fileName;
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
	public static void main(String[] arge){
//		String s="2020-02-24 15:53:38.000";
//		SimpleDateFormat sf=new SimpleDateFormat("yyyy-DD-MM");
		
		
		
	}
}
