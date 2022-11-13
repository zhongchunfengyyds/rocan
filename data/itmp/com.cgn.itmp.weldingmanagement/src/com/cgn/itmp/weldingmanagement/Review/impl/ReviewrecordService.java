
package com.cgn.itmp.weldingmanagement.Review.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.utility.StringUtil;
import com.cgn.itmp.weldingmanagement.Review.Record;
import com.cgn.itmp.weldingmanagement.Review.Reviewrecord;
import com.cgn.itmp.weldingmanagement.Review.Reviewrecord_mf;
import com.cgn.itmp.weldingmanagement.Welder.Welder;

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
public class ReviewrecordService extends DASDaoSupport implements IReviewrecordService{
	public void addReviewrecord(Reviewrecord reviewrecord){
		getDASTemplate().getPrimaryKey(reviewrecord);
		getDASTemplate().insertEntityCascade(reviewrecord);
	}

	public void deleteReviewrecords(Reviewrecord[] reviewrecords ){
		for(DataObject reviewrecord:reviewrecords){
			getDASTemplate().deleteEntityCascade(reviewrecord);
		}
	}


	public void getReviewrecord(Reviewrecord reviewrecord){
		getDASTemplate().expandEntity(reviewrecord);
		getDASTemplate().expandRelation(reviewrecord, "records");
	}


	public Reviewrecord[] queryReviewrecords(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Reviewrecord.class, dasCriteria, pageCond);
	}


    public void updateReviewrecord(Reviewrecord reviewrecord){
    	
    	
    	
    	
	    getDASTemplate().updateEntityCascade(reviewrecord);
    }

    //添加审查记录数据
	public void addReviewrecord(DataObject obj,DataObject[]  data,String user){
		obj.set("applicant",user);
		Date time=new Date();
		obj.set("applicanttime",time);
		obj.set("processStatus","3");
		obj.set("qw","已审批");
		if(obj.getString("isdel").equals("3")){
			obj.set("processStatus","1");	
			obj.set("qw","审批中");
		}
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(time);
		Reviewrecord re= (Reviewrecord) DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.weldingmanagement.Review.Reviewrecord",false);
		re.set("uuid",UUID.randomUUID().toString().replaceAll("-", ""));
		re.set("record_person",user);
		re.setString("record_time",dateString);
				
		
		String uuid=(String)re.get("uuid");
		Set<String> set=new HashSet<String>();
		List<Record> list=new ArrayList<Record>();
		for(DataObject dataobject:data){
			Record record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
			String cernumber=(String)dataobject.get("puuid");
			if(!set.contains(cernumber)){
				set.add(cernumber);
				record.set("reviewid",uuid);
				//标识是焊工（1）还是资质证（2）
				record.set("welder",1);
				record.set("identification",cernumber);
				record.set("result",(String)dataobject.get("reviewresult"));
				if(StringUtil.isEmpty((String)dataobject.get("recordremarks"))){
					record.set("remarks",null);
				}else{
					record.set("remarks",(String)dataobject.get("recordremarks"));
				}
				list.add(record);
			}
			record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
			record.set("reviewid",uuid);
			//标识是焊工（1）还是资质证（2）
			record.set("welder",2);
			record.set("identification",(String)dataobject.get("uuid"));
			record.set("result",(String)dataobject.get("recordresult"));
			if(StringUtil.isEmpty((String)dataobject.get("recordremarks"))){
				record.set("remarks",null);
			}else{
				record.set("remarks",(String)dataobject.get("recordremarks"));
			}
			list.add(record);
		}
		re.set("records",list);
		//添加数据库
		getDASTemplate().insertEntityCascade(re);
	}
	//查询审查记录数据
	public DataObject[] getwelderdata(DataObject paramdata){
		String id=paramdata.getString("uuid");
		String jd=paramdata.getString("jd");
		Map<String,String> param=new HashMap<String,String>();
		param.put("reviewid",id);
		param.put("jd",jd);
		String sql="com.cgn.itmp.weldingmanagement.Review.impl.reviewsql.getwelders";
		DataObject[] welders=getDASTemplate().queryByNamedSql(DataObject.class, sql,param);
		//换成查询资质表得sql路径
		sql="com.cgn.itmp.weldingmanagement.Review.impl.reviewsql.getcertificate";
		//循环添加进焊工对象中
		for(DataObject obj:welders){
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("reviewid",id);
			map.put("welder",obj.get("uuid"));			
			//查出资质数据
			DataObject[] certificate=getDASTemplate().queryByNamedSql(DataObject.class, sql,map);
			obj.set("certificates",certificate);
		}
		return welders;
	}
	
	//查询审查记录数据
		public DataObject[] getreminderdata(String ids){
			//获取id
			String[] id=ids.split(",");
			Map<String,Object> map=new HashMap();
			map.put("ids",id);
			String sql="com.cgn.itmp.weldingmanagement.Review.impl.reviewsql.getreminderwelders";
			//获取未合格得数据
			DataObject[] welders=getDASTemplate().queryByNamedSql(DataObject.class, sql,map);
		
			return welders;
		}
	
	//查询审查记录数据
		public void getwelderdata(Reviewrecord_mf mf,DataObject[] data){
//			System.out.println("");
			
		}

    public void update(DataObject obj,DataObject[] data,String type,String user){
    	//普通修改操作
    	if(type.equals("update")){	
			Reviewrecord re= (Reviewrecord) DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.weldingmanagement.Review.Reviewrecord",false);
			re.set("qw","已审批");
			re.set("processStatus","3");
			Set<String> set=new HashSet<String>();
			List<Record> list=new ArrayList<Record>();
			for(DataObject dataobject:data){
				Record record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
				String cernumber=(String)dataobject.get("puuid");
				if(!set.contains(cernumber)){
					set.add(cernumber);
					record.set("reviewid",re.get("uuid"));
					//标识是焊工（1）还是资质证（2）
					record.set("welder",1);
					record.set("identification",cernumber);
					record.set("result",(String)dataobject.get("reviewresult"));
					record.set("remarks",(String)dataobject.get("reviewremarks"));
					list.add(record);
				}
				if(!StringUtil.isEmpty((String)dataobject.get("puuid"))){
					record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
					record.set("reviewid",re.get("uuid"));
					//标识是焊工（1）还是资质证（2）
					record.set("welder",2);
					record.set("identification",(String)dataobject.get("uuid"));
					record.set("result",(String)dataobject.get("recordresult"));
					record.set("remarks",(String)dataobject.get("recordremarks"));
					list.add(record);
				}
			}
			if(StringUtil.isEmpty(re.getString("review_person"))){
				re.set("review_time",null);				
			}
			re.set("records",list);
			getDASTemplate().updateEntityCascade(re);	
				//新增流程
	    }else if(type.equals("add")){
	    	obj.set("relationid",obj.getString("uuid"));
	    	DataObject re= DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.weldingmanagement.Review.Reviewrecord",false);
	    	re.set("uuid",UUID.randomUUID().toString().replaceAll("-", ""));
	    	
			Date time=new Date();
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateString = formatter.format(time);
			if(StringUtil.isEmpty(re.getString("applicant"))&&!StringUtil.isEmpty(re.getString("review_person"))){
				re.set("applicant",user);	    		
				re.set("record_person",user);
				re.set("applicanttime",time);
				re.setString("record_time",dateString);
				re.set("record_time",new Date());
				
			}
			
	    	
	    	re.set("qw","已审批");
			Set<String> set=new HashSet<String>();
			List<Record> list=new ArrayList<Record>();
			for(DataObject dataobject:data){
				Record record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
				String cernumber=(String)dataobject.get("puuid");
				if(!set.contains(cernumber)){
					set.add(cernumber);
					record.set("reviewid",re.get("uuid"));
					//标识是焊工（1）还是资质证（2）
					record.set("welder",1);
					record.set("identification",cernumber);
					record.set("result",(String)dataobject.get("reviewresult"));
					record.set("remarks",(String)dataobject.get("reviewremarks"));
					list.add(record);
				}
				if(!StringUtil.isEmpty((String)dataobject.get("uuid"))){
					record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
					record.set("reviewid",re.get("uuid"));
					//标识是焊工（1）还是资质证（2）
					record.set("welder",2);
					record.set("identification",(String)dataobject.get("uuid"));
					record.set("result",(String)dataobject.get("recordresult"));
					record.set("remarks",(String)dataobject.get("recordremarks"));
					list.add(record);
				}
			}
			re.set("records",list);
			getDASTemplate().insertEntityCascade(re);
	    }else if(type.equals("addmf")){
	    	
	    	obj.set("relationid",obj.getString("uuid"));
	    	DataObject re= DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.weldingmanagement.Review.Reviewrecord_mf",false);
	    	re.set("uuid",UUID.randomUUID().toString().replaceAll("-", ""));
	    	re.set("applicant",user);
			Date time=new Date();
			re.set("applicanttime",time);
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateString = formatter.format(time);
			re.set("record_person",user);
			re.setString("record_time",dateString);
			
	    	re.set("record_time",new Date());
	    	re.set("review_time",new Date());
	    	re.set("qw","审批中");
			Set<String> set=new HashSet<String>();
			List<Record> list=new ArrayList<Record>();
			for(DataObject dataobject:data){
				Record record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
				String cernumber=(String)dataobject.get("puuid");
				if(!set.contains(cernumber)){
					set.add(cernumber);
					record.set("reviewid",re.get("uuid"));
					//标识是焊工（1）还是资质证（2）
					record.set("welder",1);
					record.set("identification",cernumber);
					record.set("result",(String)dataobject.get("reviewresult"));
					record.set("remarks",(String)dataobject.get("reviewremarks"));
					list.add(record);
				}
				if(!StringUtil.isEmpty((String)dataobject.get("uuid"))){
					record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
					record.set("reviewid",re.get("uuid"));
					//标识是焊工（1）还是资质证（2）
					record.set("welder",2);
					record.set("identification",(String)dataobject.get("uuid"));
					record.set("result",(String)dataobject.get("recordresult"));
					record.set("remarks",(String)dataobject.get("recordremarks"));
					list.add(record);
				}
			}
			re.set("records",list);
			getDASTemplate().insertEntityCascade(re);			
	    	
	    }else if(type.equals("updatemf")){                                    
	    	DataObject re= DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.weldingmanagement.Review.Reviewrecord_mf",false);
			Set<String> set=new HashSet<String>();
			List<Record> list=new ArrayList<Record>();
			for(DataObject dataobject:data){
				Record record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
				String cernumber=(String)dataobject.get("puuid");
				if(!set.contains(cernumber)){
					set.add(cernumber);
					record.set("reviewid",re.get("uuid"));
					//标识是焊工（1）还是资质证（2）
					record.set("welder",1);
					record.set("identification",cernumber);
					record.set("result",(String)dataobject.get("reviewresult"));
					record.set("remarks",(String)dataobject.get("reviewremarks"));
					list.add(record);
				}
				record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
				record.set("reviewid",re.get("uuid"));
				//标识是焊工（1）还是资质证（2）
				record.set("welder",2);
				record.set("identification",(String)dataobject.get("uuid"));
				record.set("result",(String)dataobject.get("recordresult"));
				record.set("remarks",(String)dataobject.get("recordremarks"));
				list.add(record);
			}
			re.set("records",list);
			getDASTemplate().updateEntityCascade(re);		
		}	
	    	
    }
    public void updatemf(DataObject obj,DataObject[] data,String type){
    	Reviewrecord re= (Reviewrecord) DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.weldingmanagement.Review.Reviewrecord",false);
		
		Set<String> set=new HashSet<String>();
		List<Record> list=new ArrayList<Record>();
		for(DataObject dataobject:data){
			Record record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
			String cernumber=(String)dataobject.get("operatingnumber");
			if(!set.contains(cernumber)){
				set.add(cernumber);
				record.set("reviewid",re.get("uuid"));
				//标识是焊工（1）还是资质证（2）
				record.set("welder",1);
				record.set("identification",cernumber);
				record.set("result",(String)dataobject.get("reviewresult"));
				record.set("remarks",(String)dataobject.get("reviewremarks"));
				list.add(record);
			}
			record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
			record.set("reviewid",re.get("uuid"));
			//标识是焊工（1）还是资质证（2）
			record.set("welder",2);
			record.set("identification",(String)dataobject.get("uuid"));
			record.set("result",(String)dataobject.get("recordresult"));
			record.set("remarks",(String)dataobject.get("recordremarks"));
			list.add(record);
		}
		re.set("records",list);
		getDASTemplate().deleteEntityCascade(re);
		DataObject mf=DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.weldingmanagement.Review.Reviewrecord",false);
		mf.set("records",list);
	    getDASTemplate().insertEntityCascade(mf);
    }
    
	//查询审查记录数据
	public Map<String,Object> getworddata(String id,String jd){
		Map<String,Object> d=new HashMap<String,Object>();
		d.put("id", id);
		d.put("jd",jd);
		String sql="com.cgn.itmp.weldingmanagement.Review.impl.reviewsql.getworddata";
		//查询出的数据
		DataObject[] welders=getDASTemplate().queryByNamedSql(DataObject.class, sql,d);
		d=new HashMap<String,Object>();
		//传过去得值
		Set<String> number=new HashSet<String>();
		String panduan="";
		List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
		
		
		//双重循环处理数据（放进word里排列格式）
		for(DataObject data:welders){
			Map<String,Object> map=new HashMap<String,Object>();
			if(!number.contains(data.get("operatingnumber"))){
				number.add(data.get("operatingnumber").toString());
				panduan=data.get("operatingnumber").toString();
				map.put("name",data.get("name").toString());
				map.put("operatingnumber",data.get("operatingnumber").toString());
				map.put("special",data.get("special").toString());
				map.put("items",data.get("items").toString());
				map.put("initial",data.get("initial").toString());
				map.put("validity",data.get("validity").toString());
				map.put("result",data.get("result").toString());
				map.put("job",data.get("job").toString());
				map.put("office",data.get("office").toString());
				map.put("review",data.get("review").toString());
				map.put("remarks",data.get("remarks"));
				map.put("cernumber",data.get("cernumber"));
				map.put("title", data.get("record_name").toString());
				map.put("record_person", data.get("record_person"));
				map.put("record_time", data.get("record_time"));
				map.put("review_person", data.get("review_person"));
				map.put("review_time", data.get("review_time"));
				//对标题名称进行显示
				String gz=data.get("record_name").toString();
				
				
				gz=gz.substring(0,gz.indexOf("焊工资质审查清单"));
				data.set("record_name",gz+"检修特殊工种操作证审查表");
				//小标题
	            map.put("down", gz+"焊工资格审查表");
			}else{
				continue;
			}
			List<Map<String,Object>> minlist=new ArrayList<Map<String,Object>>();	
			for(DataObject mindata:welders){
				Map<String,Object> minmap=new HashMap<String,Object>();
				if(panduan.equals(mindata.get("operatingnumber").toString())){
					minmap.put("cernumber",mindata.get("cernumber"));
					minmap.put("projcode",mindata.get("projcode"));
					minmap.put("validdate",mindata.get("validdate"));
					minmap.put("office",mindata.get("office"));
					minmap.put("jieguo",mindata.get("jieguo"));
					minmap.put("beizhu",mindata.get("beizhu"));
					minlist.add(minmap);
				}
			}
			map.put("list", minlist);
			list.add(map);
		}
    	d.put("array",list);
    	return d;
	}
	
	
	/**
	 * swh
	 * 查询出大修时间范围
	 * @param xh
	 * @return
	 */
	public DataObject getdaxiutime(String xh){
		String sql="com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.getalltime";
		DataObject[] welders=getDASTemplate().queryByNamedSql(DataObject.class, sql,xh);
		return welders[0];
	}
	
	
	public void everytime(){
		System.out.println("ceshi 1s");
	}


}
