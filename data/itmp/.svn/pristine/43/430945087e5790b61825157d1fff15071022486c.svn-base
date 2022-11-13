<!DOCTYPE html>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-14 10:51:27
- Description:
    --%>
    <head>
        <title>
            	审查记录
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	<script src="<%= request.getContextPath()%>/common/common.js"
   	 type="text/javascript"></script>
   	<script src="<%= request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
	
</head>
<body style="background-color: #f1f1f1; overflow: scroll;height:100%">
	<div class="bs-docs-section" style="width: 100%; height: 100%;">
				<div style="width: 100%; height: 5%;">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
<!--                 <input class="nui-hidden" name="welder/_entity" value="com.cgn.itmp.weldingmanagement.Welder.Welderall"> -->
                <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
		    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
				<input class="nui-hidden" name="jhry" id="jhry" value="<b:write property='jhry'/>" />
				<input class="nui-hidden" name="ccry" id="ccry" value="<b:write property='ccry'/>" />
		    	<input class="nui-hidden" id="modelFlag" name="modelFlag" value="<b:write property='modelFlag'/>"/>
		    	<input class="nui-hidden" id="editable" name="editable" value="<b:write property='editable'/>"/>
                <!-- 排序字段 -->
                <table id="table1" class="table" style="height:100%">
                <input class="nui-hidden" id="uuid" name="uuid" value=""/>
                <input class="nui-hidden" id="relationid" name="relationid" value=""/>
                <input class="nui-hidden" id="record_person" name="" value=""/>
                    <tr>

									<td  colspan="1">
										大修轮次<div id="combobox1" name="rounds" property="editor"  popupWidth="100%" class="nui-combobox" style="width:50%;"  popupWidth="150" textField="name" valueField="id" 
						     			url=""  onvaluechanged="getalltime"  multiSelect="false" valueField="id" textField="name"  dataField="jsonObject" >
									</td>    
									
		               
                    			</tr>
						</table>
					</div>
				</div>
            
             <!--footer-->
        
                        <div class="nui-fit"  style="width:100%;height:40%;">
                <div 
                        id="datagrid2"
                        dataField="machines"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        showPager="false"
                        showPageIndex="false"
                        onselectionchanged="ceshi"
                        allowCellEdit="true"
                        allowCellSelect="true"
                        multiSelect="true"
                        editNextOnEnterKey="true" 
                        >
                        
                    <div property="columns" >
                        <div type="indexcolumn">
                        </div>
                       
                        
                        <div field="name" name="name" headerAlign="center" allowSort="true" >
                            姓名
                        </div>
                        <div field="operatingnumber" name="operatingnumber" headerAlign="center" allowSort="true" >
                            操作证编号
                        </div>
                        
                        <div field="job" name="job" headerAlign="center" allowSort="true" >
                            作业类别
                        </div>
                        <div field="authority" name="authority" headerAlign="center" allowSort="true" >
                            发证机关
                        </div>
                        <div field="items" name="items" headerAlign="center" allowSort="true"  renderer="dicCZXM" >
                            操作项目
                        </div>
                		<div field="initial" name="initial" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            初领日期
                        </div>
                        <div field="validity" name="validity" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            证件有效期
                        </div>
                        <div field="review" name="review" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            复审日期
                        </div>
                        <div field="reviewresult" name="reviewresult" headerAlign="center" allowSort="true" >
                            结果
<!--                             <input class="nui-textbox" enabled="true" name="reviewresult" property="editor" required="false" visible="true"/> -->
                        </div>
                        <div field="reviewremarks" name="reviewremarks" headerAlign="center" allowSort="true" >
                            备注
<!--                             <input class="nui-textbox" enabled="true" name="reviewremarks" property="editor" required="false" visible="true"/> -->
                        </div>
                        <div field="cernumber" allowSort="true" align="left" headerAlign="center" width="">
                            证书编号
                            
                        </div>
                        <div field="projcode" allowSort="true" align="left" headerAlign="center" width="">
                            项目代号
                            
                        </div>
                        <div field="validdate" allowSort="true" align="left" headerAlign="center" width="" dateFormat="yyyy-MM-dd">
                            有效时间
                            
                        </div>
                        <div field="office" allowSort="true" align="left" headerAlign="center" width="">
                            发证机关
                            
                        </div>
                        <div field="recordresult" name="recordresult" headerAlign="center" allowSort="true" >
                            结果
<!--                             <input class="nui-textbox"  name="recordresult" property="editor" required="false" visible="true"/> -->
                        </div>
                        <div field="recordremarks" name="recordremarks" headerAlign="center" allowSort="true" >
                            备注
<!--                             <input class="nui-textbox"  name="recordremarks" property="editor" required="false" visible="true"/> -->
                        </div>
                        <div field="puuid" headerAlign="center" allowSort="false" visible="false">
                            puuid
                        </div>  
                        <div field="uuid" headerAlign="center" allowSort="false" visible="false">
                            uuid
                        </div>                
                    </div>
                </div>
            </div>
            
            		<div  style="padding-top:5px;" id="baseInfoForm">
      <!-- hidden域 -->
      <fieldset id="personInfo" style="width:95%;">
        <legend><span>审批信息</span></legend>
     <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
    
                 <tr id="spyjId">
                 
                    <td class="form_label"  style="width: 10%">
                        审批意见:
                    </td>
                  <td colspan="3">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width:100%" name="spyj"/>
                    </td>
                      <td colspan="2" class="form_label" >
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ" style="width:80%"  />
                    </td>
                </tr>
    
           	<tr id="sqrTr">
                <td class="form_label"  style="width: 10%">
                    申请人:
                </td>
                <td colspan="1">
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="<b:write property='screwplanmg/changeuser'/>" />
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="<b:write property='screwplanmg/changeDate'/>" />
                    </td>
           	</tr>
        <tr id="ccryTr">
           <td class="form_label" style="width: 10%">抄送人员:</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:55%" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
        </tr>
    </table>
    <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    </fieldset>
    </div>
            
      <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
                        同意
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span> 
					 <a class="nui-button"  onclick="btnBack()" id="btnBack">
                   退回
                    </a> 
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="onCancel()">
                        关闭
                    </a>
                </td>
            </tr>
        </table>
    </div>      
 </div>
	<script type="text/javascript">
    		nui.parse();
            var grid = nui.get("datagrid1");
            var grid2 = nui.get("datagrid2");
            
            var jdid=getCookie('jdid');
            var jzid=getCookie('jzid');
            var starttime;
            var endtime;
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            //查询出来的数据
            var query={};
            
			var processInstId =nui.get("processInstId").getValue();
			var modelFlag=nui.get("modelFlag").getValue();
            //保存值
            var zhi;
            //判断是否是修改
            var panduan;

            chec();
            var editable=nui.get('editable').value;
           if(editable=='false'){
    			nui.get("btnSubmit").hide();
    			nui.get("btnBack").hide();
    			$('#spyjId').hide();
    			$('#ccryTr').hide();   
    		}
            getReviewrecord();
			function getReviewrecord(){
			var form = new nui.Form("#form1");//将普通form转为nui的form
			grid2.loading("正在加载中,请稍等...");
			entityType="com.cgn.itmp.weldingmanagement.Review.Reviewrecord_mf";
				
				var json=nui.encode({processInstId:processInstId,entityType:entityType});
				$.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//可复用
					type : 'POST',
					data : json,
					cache : false,
					contentType : 'text/json',
					success : function(text) {
						var data=text.data;
						query=data;
						nui.get('combobox1').setAjaxType("POST");
						nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+data.jd);
						nui.get("combobox1").setValue(data.overhaul);
						nui.get("combobox1").setEnabled(false);
						nui.get("uuid").setValue(data.uuid);
						if(modelFlag=="2"){
							nui.get("relationid").setValue(data.relationid);
						}
						nui.get("record_person").setValue(data.record_person);
						nui.get("sqr").setValue(data.applicant);
						nui.get("sqsj").setValue(data.applicanttime.split(".")[0]);
						
						
				var json = nui.encode({paramdata:data});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getReviewrecord.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	var index=text.data.length;
                    	var marges = new Array();
                    	var json = new Array();
                    	var x=0;
                    	var index2=1;
                    	//遍历主表
                    	for(var i=0;i<index;i++){
                    		index2=1;
                    		if(text.data[i].certificates.length>0){
                    			index2=text.data[i].certificates.length;
                    		}
                    		//添加合并单元格格式
                    		for(var row=1;row<11;row++){
                				var a={};
                    			a["rowIndex"]=x;
                    			a["columnIndex"]=row;
                    			a["rowSpan"]=index2;
                    			a["colSpan"]=1;
	                   			marges.push(a);
                			}
                    		x+=index2;
                    		
                    		var b={};
                    			b["name"]=text.data[i].name;
                    			b["operatingnumber"]=text.data[i].operatingnumber;
                    			b["job"]=text.data[i].job;
                    			b["authority"]=text.data[i].authority;
                    			b["items"]=text.data[i].items;
                    			b["initial"]=nui.formatDate(nui.parseDate(text.data[i].initial),"yyyy-MM-dd");
                				b["validity"]=nui.formatDate(nui.parseDate(text.data[i].validity),"yyyy-MM-dd");
                    			b["reviewresult"]=text.data[i].reviewresult;
                    			b["reviewremarks"]=text.data[i].reviewremarks;
                    			b["puuid"] = text.data[i].uuid;
//                     			var validity=new Date(text.data[i].validity);
//                     			if(validity>starttime&&validity>endtime){
//                     				b["reviewresult"]="合格";
//                     				b["reviewremarks"]="";
//                     			}else if(validity>starttime&&validity<endtime){
//                     				b["reviewresult"]="合格";
//                     				b["reviewremarks"]="注意到期时间";
//                     			}else{
//                     				b["reviewresult"]="不合格";
//                     				b["reviewremarks"]="";
//                     			}
                    			b["review"]=text.data[i].review;
                    			b["puuid"]=text.data[i].uuid;
                    			
                    			if(text.data[i].certificates.length>0){
		                    		//数据处理添加到列表中	
		                    		for(var r=0;r<index2;r++){
		                    			var child=$.extend(true,{},b);;
		                    			child["cernumber"]=text.data[i].certificates[r].cernumber;
		                    			child["projcode"]=text.data[i].certificates[r].projcode;
		                    			child["recordresult"]=text.data[i].certificates[r].recordresult;
		                    			child["recordremarks"]=text.data[i].certificates[r].recordremarks;
		                    			
		//                     			var validdate=new Date(text.data[i].certificates[r].validdate);
		//                     			if(validdate>starttime&&validdate>endtime){
		//                     				child["recordresult"]="合格";
		//                     				child["recordremarks"]="";
		//                     			}else if(validity>starttime&&validity<endtime){
		//                     				child["recordresult"]="合格";
		//                     				child["recordremarks"]="注意到期时间";
		//                     			}else{
		//                     				child["recordresult"]="不合格";
		//                     				child["recordremarks"]="";
		//                     			}
		                    			if(text.data[i].certificates[r].validdate!=null&&text.data[i].certificates[r].validdate!=""){
											child["validdate"]=nui.formatDate(nui.parseDate(text.data[i].certificates[r].validdate),"yyyy-MM-dd");
										}
		                    			child["office"]=text.data[i].certificates[r].office;
		                    			child["uuid"]=text.data[i].certificates[r].uuid;
		                    			json.push(child);
		                    		}
                    			}else{
                    				json.push(b);	
                    			}
                    	}
                    //添加数据
                       grid2.setData(json);
                    //添加格式
                       grid2.mergeCells(marges);
                       var formData=fz();
                       grid2.unmask();
                    }
                    });
					}
				});
				
				
				
			}
            //同意
            function onSubmit(){
            var combobox=nui.get("combobox1").text;
	    		var urlStr = "";
				var form = new nui.Form("#baseInfoForm");
	    		form.validate();
	    		
	            var formdata = form.getData(false,true);
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	           
	           var data=grid2.getData();
				var reviewrecord={
						isdel:"0",
						uuid:nui.get("uuid").getValue()
				};
	           formdata.data=data;
	           formdata.obj=reviewrecord;
	           
	           
	           
	            if(modelFlag=="1"){
					formdata.type="add";
				}else{
					formdata.type="update";
				}
				reviewrecord=query;
				reviewrecord.uuid=reviewrecord.relationid;
				reviewrecord.isdel="0";
				formdata.obj=reviewrecord;
				urlStr = "com.cgn.itmp.weldingmanagement.reviewrecordbiz.updateReviewrecordprocess.biz.ext";
	            formdata.jhry = nui.get("jhry").text;
				formdata.ccry = nui.get("ccry").value;
	            var json = nui.encode(formdata);
	            
	            nui.get("#btnSubmit").setEnabled(false);
	    		$.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                       	    nui.alert("提交成功");
                            onCancel();
                        }else{
                            nui.alert("提交失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
							});
						 }
	          });
		}
		//驳回数据
            function btnBack(){
	     	
	          	var form = new nui.Form("#baseInfoForm");
	    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
	    		form.validate();
	    		form = new nui.Form("#baseInfoForm");
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	   			form = new nui.Form("#baseInfoForm");
	            var data = form.getData(false,true);
	            data.processInstId=processInstId;
	            data.workItemId=nui.get("workItemId").value;
	            data.backid="manualActivity";
	            var json = nui.encode(data);
	            nui.get("btnBack").setEnabled(false);
		            
	    		$.ajax({
	                    url:urlStr,
	                    type:'POST',
	                    data:json,
	                    cache:false,
	                    contentType:'text/json',
	                    success:function(text){
	                        var returnJson = nui.decode(text);
	                        
	                        if(returnJson.exception == null){
	                         nui.alert("驳回成功", "系统提示", function(action){
	                                if(action == "ok" || action == "close"){
	                                    onCancel();
	                                }
	                                });
	                        }else{
	                            nui.alert("驳回失败", "系统提示", function(action){
	                                if(action == "ok" || action == "close"){
	                                    onCancel();
	                                }
	                                });
	                            }
	                        },error: function (jqXHR, textStatus, errorThrown) {
								 nui.alert(jqXHR.responseText,'错误',function (action) {
										nui.get("#btnBack").setEnabled(true);
								});
							 }
	                        });
        			}
            

            //设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
            //页面条件筛选赋值
            function fz(){
            	var id=new Array;
            	var yicunzai=grid2.data;
            	var ids="";
            	for (var index=0;index<yicunzai.length;index++){
						id.push(yicunzai[index]["operatingnumber"]);
					ids+=yicunzai[index]["operatingnumber"];
					if(index<yicunzai.length-1){
					ids+=",";
					}
				}
            	var form=new nui.Form("#form1").getData(false,false);
            	var name=form["tjname"];
            	var job=form["tjjob"];
            	var employeenumber=form["tjemplo"];
            	var company=form["tcompany"];
            	var json={operatingnumber:id,name:name,job:job,employeenumber:employeenumber,jd:jdid,company:company};
            	
            	
            	form["parameter/name"]=form["name"];
            	form["parameter/empnubmer"]=form["empnubmer"];
            	form["parameter/code"]="Welder";
            	form["parameter/jd"]=jdid;
            	form["parameter/idnumbers"]=ids;
            	form["parameter/company"]=form["company"];
            	form["parameter/job"]=form["job"];
            	return form;
            }
            
            
            function chaxun(){
            	var a=fz();
                grid.load(a);
            }
     
            //合并单元格的格式
            function bianli(id){
            	//获取条件
            	
				var json=nui.encode({operatingnumber:id});
            	//执行ajax去后台获取数据
				$.ajax({
                    url:"com.cgn.itmp.weldingmanagement.welderbiz.getshencha.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    async:false,
                    contentType:'text/json',
                    success:function(text){
                    	var data=new Array();
                    	
                    	for(var i=0;i<id.length;i++){
                    		data.push(text.data[id[i]]);
                    	}
                    	
                    	grid.removeRows(data,true);
                    	var index=data.length;
                    	var marges = new Array();
                    	var json = new Array();
                    	
                    	//代表从第几行开始合并
                    	var x=0;
                    	//遍历主表
                    	
                    	for(var i=0;i<index;i++){
                    		var index2=1;
                    		if(data[i].certificates){
	                    		index2=data[i].certificates.length;
                    		}
	                    		//添加合并单元格格式
	                    		for(var row=1;row<12;row++){
	                				var a={};
	                    			a["rowIndex"]=x;
	                    			a["columnIndex"]=row;
	                    			a["rowSpan"]=index2;
	                    			a["colSpan"]=1;
		                   			marges.push(a);
	                			}                    		
	                    		x+=index2;
                    		
                    		
                    	}
                    	//过滤掉已经添加过的数据
                    	data=huigun(data);
                		
                		
                	//数据处理添加到列表中	
                    	for(var i=0;i<data.length;i++){
                    		var b={};
                			b["name"]=data[i].name;
                			b["operatingnumber"]=data[i].operatingnumber;
                			b["job"]=data[i].job;
                			b["authority"]=data[i].authority;
                			b["items"]=data[i].items;
                			b["initial"]=data[i].initial;
                			b["validity"]=data[i].validity;
                			b["review"]=data[i].review;
                			var validity=nui.parseDate(data[i].validity);
                			if(validity>starttime&&validity>endtime){
                				b["reviewresult"]="合格";
                				b["reviewremarks"]="";
                			}else if(validity>starttime&&validity<endtime){
                				b["reviewresult"]="合格";
                				b["reviewremarks"]="注意到期时间";
                			}else{
                				b["reviewresult"]="不合格";
                				b["reviewremarks"]="";
                			}
                			if(data[i].certificates){
                				
                    		index2=data[i].certificates.length;
                    		for(var r=0;r<index2;r++){
                    			var child=$.extend(true,{},b);;
                    			
                    			child["cernumber"]=data[i].certificates[r].cernumber;
                    			child["projcode"]=data[i].certificates[r].projcode;
                    			child["validdate"]=data[i].certificates[r].validdate;
                    			child["office"]=data[i].certificates[r].office;
                    			child["uuid"]=data[i].certificates[r].uuid;
                    			
                				//自动审查
                    			var validdate=nui.parseDate(data[i].certificates[r].validdate);
                    			if(validdate>starttime&&validdate>endtime){
                    				child["recordresult"]="合格";
                    				child["recordremarks"]="";
                    			}else if(validity>starttime&&validity<endtime){
                    				child["recordresult"]="合格";
                    				child["recordremarks"]="注意到期时间";
                    			}else{
                    				child["recordresult"]="不合格";
                    				child["recordremarks"]="";
                    			}
                    			json.push(child);
                    		}
                			}else{
                				json.push(b);
                			}

                    	}
                    //添加数据
                       grid2.addRows(json);
                    //添加格式
                       grid2.mergeCells(marges);
                    }
                    });
            }
            
            
            //把已经添加过去的的数据过滤掉
           	function huigun(data){
           		var xin=new Array();
           		var xy=grid2.getData();
           		var cx=data;
           		for(var i=0;i<cx.length;i++){
           			var pd=0;
           			var yi=cx[i].operatingnumber;
           			for(var j=0;j<xy.length;j++){
           				var er=xy[j].operatingnumber;
           				if(yi==er){
           					pd=1;
           				}
               		}
           			if(pd==0){
           				xin.push(cx[i]);
           			}
           		}
           	return xin;
           	}
           
			//添加查询清单
			function chaxunqing(ids){
				if(nui.get("combobox1").text==""){
					alert("请选择大修轮次");
					return;
				}
				bianli(ids);
				var formData=fz();
                grid.load(formData);
				
			}
			
			//清空
			function qingkong(){
				var data=grid2.getData();
				grid2.removeRows(data,true);
				grid.load(fz());
			}
			//获取大修轮次
			function chec(){
				nui.get('combobox1').setAjaxType("POST");
				nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
			}
			function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
//性别公共代码转换
           function dicCZXM(e) {
               return nui.getDictText("CZXM", e.value);
           }

    </script>
</body>
</html>