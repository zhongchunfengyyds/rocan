
package com.cgn.itmp.weldingmanagement;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.weldingmanagement.Review.Record;
import com.cgn.itmp.weldingmanagement.Review.Reviewrecord;
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
		for(Reviewrecord re:reviewrecords){
			re.set("isdel","3");
		}
		getDASTemplate().updateEntityBatch(reviewrecords);
		
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
	public void addReviewrecord(DataObject obj,DataObject[]  data){
		Date time=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(time);
		Reviewrecord re= (Reviewrecord) DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.weldingmanagement.Review.Reviewrecord",false);
		re.set("qw","测试状态");
		re.set("record_person","测试人员");
		re.setString("record_time",dateString);
		re.setString("review_time",dateString);
		
		String uuid=(String)re.get("uuid");
		Set<String> set=new HashSet<String>();
		List<Record> list=new ArrayList<Record>();
		for(DataObject dataobject:data){
			Record record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
			String cernumber=(String)dataobject.get("operatingnumber");
			if(!set.contains(cernumber)){
				set.add(cernumber);
				record.set("reviewid",uuid);
				//标识是焊工（1）还是资质证（2）
				record.set("welder",1);
				record.set("identification",cernumber);
				record.set("result",(String)dataobject.get("reviewresult"));
				record.set("remarks",(String)dataobject.get("reviewremarks"));
				list.add(record);
			}
			record= (Record)DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Review.Record");
			record.set("reviewid",uuid);
			//标识是焊工（1）还是资质证（2）
			record.set("welder",2);
			record.set("identification",(String)dataobject.get("uuid"));
			record.set("result",(String)dataobject.get("recordresult"));
			record.set("remarks",(String)dataobject.get("recordremarks"));
			list.add(record);
		}
		re.set("records",list);
		//添加数据库
		getDASTemplate().insertEntityCascade(re);
	}
	//查询审查记录数据
	public DataObject[] getwelderdata(Reviewrecord reviewrecord){
		String id=reviewrecord.getUuid();
		String sql="com.cgn.itmp.weldingmanagement.Review.impl.reviewsql.getwelders";
		DataObject[] welders=getDASTemplate().queryByNamedSql(DataObject.class, sql,id);
		//换成查询资质表得sql路径
		sql="com.cgn.itmp.weldingmanagement.Review.impl.reviewsql.getcertificate";
		//循环添加进焊工对象中
		for(DataObject obj:welders){
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("reviewid",id);
			map.put("welder",obj.get("operatingnumber"));			
			//查出资质数据
			DataObject[] certificate=getDASTemplate().queryByNamedSql(DataObject.class, sql,map);
			obj.set("certificates",certificate);
		}
		return welders;
	}

    public void update(DataObject obj,DataObject[] data){
    	
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
    	
    	
    	
	    getDASTemplate().updateEntityCascade(re);
    }
    
    
	//查询审查记录数据
	public Map getworddata(String id){
		Map<String,Object> d=new HashMap<String,Object>();
		
		String sql="com.cgn.itmp.weldingmanagement.Review.impl.reviewsql.getworddata";
		//查询出的数据
		DataObject[] welders=getDASTemplate().queryByNamedSql(DataObject.class, sql,id);
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
				map.put("review",data.get("review").toString());
				map.put("remarks",data.get("remarks"));
				map.put("cernumber",data.get("cernumber").toString());
				map.put("title", data.get("record_name").toString());
				//对标题名称进行显示
				String gz=data.get("record_name").toString();
				gz=gz.substring(0,gz.indexOf("检修特殊工种操作证审查表"));
				//小标题
	            map.put("down", gz+"检测焊工资格审查表");
			}else{
				continue;
			}
			List<Map<String,Object>> minlist=new ArrayList<Map<String,Object>>();	
			for(DataObject mindata:welders){
				Map<String,Object> minmap=new HashMap<String,Object>();
				if(panduan.equals(mindata.get("operatingnumber").toString())){
					minmap.put("cernumber",mindata.get("cernumber").toString());
					minmap.put("projcode",mindata.get("projcode").toString());
					minmap.put("validdate",mindata.get("validdate").toString());
					minmap.put("office",mindata.get("office").toString());
					minmap.put("jieguo",mindata.get("jieguo").toString());
					minmap.put("beizhu",mindata.get("beizhu").toString());
					minlist.add(minmap);
				}
			}
			map.put("list", minlist);
			list.add(map);
		}
    	d.put("array",list);
    	return d;
	}

}
