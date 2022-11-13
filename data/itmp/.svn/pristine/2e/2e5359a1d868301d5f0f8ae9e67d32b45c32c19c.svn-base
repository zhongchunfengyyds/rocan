<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
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
	<script src="<%=request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
	<style type="text/css">
		#mini-23{
			width:108px;
		}
		h4{
			margin-top:4px!imporatnt;
			margin-bottom:4px!important;
		}
/* 		.mini-textboxlist ul{ */
/* 			height:20px!important; */
/* 		} */
	</style>
</head>
<body style="background-color: #f1f1f1;height:100%;">
	<div class="bs-docs-section" style="height:100%;">
	<div class="nui-panel" title="待审列表" style="width: 100%; height: 50%" buttons="collapse" showToolbar="true">
				<div style="width: 100%; height: 13%;">
            <div id="form1" class="nui-form" align="center" style="height:100%;width:100%;">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
                <input class="nui-hidden" name="welder/_entity" value="com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll">
               	<input class="nui-hidden" id="uuid" name="uuid" value=""/>
               	<input class="nui-hidden" id="record_person" name="record_person" value=""/>
                <!-- 排序字段 -->
                <table id="table1" class="table" style="height:50%;width:100%;">
                    <tr style="width:100%;">
									<td  colspan="1"  style="width:5%">
										员工名称:
									</td>
									<td  colspan="1"  style="width:3%">
										<input class="nui-textbox" name="name" id="name"/>
									</td>
									<td  colspan="1"  style="width:4%">
										员工号:
									</td>
									<td  colspan="1"  style="width:3%">
										<input class="nui-textbox" name="empnumber" id="empnumber"/>
									</td>
									<td  colspan="1"  style="width:5%">
										工作类别:
									</td>
									<td  colspan="1"  style="width:3%">
										<input class="nui-textbox" name="job" id="job"/>
									</td>
									<td  colspan="1"  style="width:5%">
										所属公司:
									</td>
									<td  colspan="1"  style="width:4%">
										<input class="nui-textbox" name="company" id="company"/>
									</td>
									<td  colspan="1"  style="width:5%">
										大修轮次:
									</td> 
									<td  colspan="1"  style="width:12%">
										<div id="combobox1" name="rounds" property="editor"  popupWidth="100%" class="nui-combobox" style="width:50%;"  popupWidth="150" textField="name" valueField="id" 
						     			url=""  onvaluechanged="getalltime"  multiSelect="false" valueField="id" textField="name"  dataField="jsonObject" >
									</td>    
									<td><button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" style="margin: 0 3px;" onclick="chaxun()">
									查询
								</button></td>
									<td><button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" style="margin: 0 3px;" onclick="chaxunqingdan()">
									导入查询清单
								</button></td>
									<td><button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="qingkong()" style="margin: 0 3px;">
									清空
								</button></td>
		               
                    			</tr>
						</table>
					</div>
				</div>
				
            <div class="nui-fit" style="width:100%;height:30%;">
                <div id="datagrid1" dataField="data" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageIndex="false" multiSelect="true"  allowSortColumn="false" showPager="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            姓名
                        </div>
                        <div field="company" headerAlign="center" allowSort="true" >
                            所属公司
                        </div>
                        <div field="empnumber" headerAlign="center" allowSort="true" >
                            员工号
                        </div>
                        <div field="code" headerAlign="center" allowSort="true" >
                            焊工代码
                        </div>
                        <div field="special" headerAlign="center" allowSort="true" >
                            特种作业名称
                        </div>
                        <div field="job" headerAlign="center" allowSort="true" >
                            作业类别
                        </div>
                        <div field="authority" headerAlign="center" allowSort="true" >
                            发证机关
                        </div>
                        <div field="items" headerAlign="center" allowSort="true" dictTypeId="CZXM" renderer="dicCZXM">
                            操作项目
                        </div>
                        <div field="operatingnumber" headerAlign="center" allowSort="true" >
                            操作证编号
                        </div>
                        <div field="validity" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            证件有效期
                        </div>
                        <div field="review" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            复审日期
                        </div>
                        <div field="initial" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            初领日期
                        </div>
                        <div field="status" headerAlign="center" allowSort="true"  dictTypeId="WSZT"  renderer="dicWSZT" >
                            状态
                        </div>
                        <div field="remarks" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>

			</div>
		</div>
	</div>
            </div>
             <!--footer-->
      <div class="nui-panel" title="已选列表" style="width: 100%; height: 50%;" buttons="collapse" showToolbar="true">
        <div id="form2" class="nui-form" align="center"  style="margin: 3px 0 0 0;">
            <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
					<table style="width: 100%;">
						<tr>
						
							<td style="height:13%;">
								<button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="tankuang()" style="margin: 0 10px;">
									添加
								</button>
								<button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="shanchu()" style="margin: 0 10px;">
									
									删除
								</button>
								<button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="qingkong()" style="margin: 0 10px;">
									
									清空
								</button>
								</td>
								<td class="form_label sp">校核人员</td>
					 <td colspan="3" class="sp">
                        <input class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson"  id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
									
					<td class="form_label sp" colspan="1"
					style="width:text-align: center">选择抄送人员:</td>
				<td colspan="3"  class="sp" style="height:20px;"><input property="editor" id="ccry" multi="true"
					name="copyperson" class="nui-textboxlist" dataField="list" style="height:20px;overflow-y:scroll"
					
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
					valueField="empcode" textField="empcodename" ScrollBar="Vertical"
					searchField="keyword" /></td>
								<td>
								<button style="float:right;margin: 0 10px;" class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="onCancel()">
									关闭
								</button>
								<button style="float:right;margin: 0 10px;" class="mini-button btn btn-default btn-xs btn-submit sp"
									type="button" onclick="saveData('')" id="save">
									保存草稿箱
								</button>
								<button style="float:right;margin: 0 10px;" class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="saveData('manualActivity')" id="submit">
									提交
								</button>
							</td>
						</tr>
					</table>
				</div>
				</div>
				
                        <div class="nui-fit" style="width:100%;height:40%;">
                <div 
                        id="datagrid2"
                        dataField="machines"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="false"
                        onselectionchanged="ceshi"
                        allowCellEdit="true"
                        allowCellSelect="true"
                        multiSelect="true"
                        showPager="false"
                        editNextOnEnterKey="true" 
                        >
                        
                    <div property="columns" >
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="false" visible="false">
                            uuid
                        </div><div field="puuid" headerAlign="center" allowSort="false" visible="false">
                            puuid
                        </div>
                        <div field="name" name="name" headerAlign="center" allowSort="false" >
                            姓名
                        </div>
                        <div field="operatingnumber" name="operatingnumber" headerAlign="center" allowSort="false" >
                            操作证编号
                        </div>
                        
                        <div field="job" name="job" headerAlign="center" allowSort="false" >
                            作业类别
                        </div>
                        <div field="authority" name="authority" headerAlign="center" allowSort="false" >
                            发证机关
                        </div>
                        <div field="items" name="items" headerAlign="center" allowSort="false"  dictTypeId="CZXM" renderer="dicCZXM">
                            操作项目
                        </div>
                		<div field="initial" name="initial" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd" >
                            初领日期
                        </div>
                        <div field="validity" name="validity" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd" >
                            证件有效期
                        </div>
                        <div field="review" name="review" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            复审日期
                        </div>
                        <div field="reviewresult" name="reviewresult" headerAlign="center" allowSort="false" >
                            结果<input class="nui-textbox" enabled="true" name="reviewresult" property="editor" required="false" visible="true"/>
                        </div>
                        <div field="reviewremarks" name="reviewremarks" headerAlign="center" allowSort="false" >
                            备注<input class="nui-textbox" enabled="true" name="reviewremarks" property="editor" required="false" visible="true"/>
                        </div>
                        <div field="cernumber" allowSort="false" align="left" headerAlign="center" width="">
                            证书编号
                            
                        </div>
                        <div field="projcode" allowSort="false" align="left" headerAlign="center" width="">
                            项目代号
                            
                        </div>
                        <div field="validdate" allowSort="false" align="left" headerAlign="center" width="" dateFormat="yyyy-MM-dd">
                            有效时间
                            
                        </div>
                        <div field="office" allowSort="false" align="left" headerAlign="center" width="">
                            发证机关
                            
                        </div>
                        <div field="recordresult" name="recordresult" headerAlign="center" allowSort="false" >
                            结果<input class="nui-textbox" enabled="true" name="recordresult" property="editor" required="false" visible="true"/>
                        </div>
                        <div field="recordremarks" name="recordremarks" headerAlign="center" allowSort="false" >
                            备注<input class="nui-textbox" enabled="true" name="recordremarks" property="editor" required="false" visible="true"/>
                        </div>                  
                    </div>
                </div>
            </div>
 </div></div>
	<script type="text/javascript">
    		nui.parse();
            var grid = nui.get("datagrid1");
            var grid2 = nui.get("datagrid2");
            
            var jdid=getCookie('jdid');
            var jzid=getCookie('jzid');
            var starttime;
            var endtime;
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            if(isadmin=="true"){
	            $(".sp").hide();
	              $("#submit")[0].childNodes[0].innerHTML="保存";
            }
            //保存值
            var zhi={};
            //判断是否是修改
            var panduan;
            var formData=fz();
            grid.load(formData);	
            chec();
            //页面条件筛选赋值
            function fz(){
            	var id=new Array;
            	var yicunzai=grid2.data;
            	var ids="";
            	for (var index=0;index<yicunzai.length;index++){
						id.push(yicunzai[index]["puuid"]);
					ids+=yicunzai[index]["puuid"];
					if(index<yicunzai.length-1){
						ids+=",";
					}
				}
            	var form=new nui.Form("#form1").getData(false,false);
            	var name=form["tjname"];
            	var job=form["tjjob"];
            	var employeenumber=form["tjemplo"];
            	var company=form["company"];
            	var json={operatingnumber:id,name:name,job:job,employeenumber:employeenumber,jd:jdid,company:company};
            	form["parameter/name"]=form["name"];
            	form["parameter/empnubmer"]=form["empnubmer"];
            	form["parameter/code"]="Welder";
            	form["parameter/jd"]=jdid;
            	form["parameter/already"]=ids;
            	form["parameter/company"]=form["company"];
            	form["parameter/job"]=form["job"];
            	return form;
            }
            
            
            function chaxun(){
            	var a=fz();
            	
                grid.load(a);
            }
            //导入查询清单
            function chaxunqingdan(){
            	if(nui.get("combobox1").text==""){
					nui.alert("请填写大修轮次");
					return;
				}
				 var data = {};
				 
				 data.modelFlag = "4";
				 data.jdid = jdid;
				 data.jzid = jzid;
				 var json = nui.encode(data);
			 	$.ajax({
			    url:"com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
			    type:'POST',
			    cache:false,
			    data:json,
			    contentType:'text/json',
			    success:function(data){
			   		 var count = data.count;
			   			if(count > 0){
			   				nui.alert("该数据已存在,不能导入","提示");
			   			}else{
			   				nui.open({showMaxButton : true,
					        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
					        title: "新增记录", width: 600, height: 200,
					        onload: function () {//弹出页面加载完成
					        	var iframe = this.getIFrameEl();
					            var data = {
					            	chaxun:"1",
					            	pageType:"batchAdd",
					            	tempFileName:"drcxqd.xlsx",
					            	tempLoadName:"查询清单导入模板",
					            	entitfName:"com.cgn.itmp.weldingmanagement.Welder.Welder"
					            };//传入页面的json数据
					             iframe.contentWindow.SetData(data);
					        },
					        ondestroy: function (action) {//弹出页面关闭前
					        var iframe = this.getIFrameEl();
								//获取选中、编辑的结果
								var data = iframe.contentWindow.GetData();
								if(data){
									chaxunqing(data.success);
								}
							
					        	grid.reload();
					    	}
						});
			   		}
			   	}
			});
		}

            //合并单元格的格式
            function bianli(id){
            	//获取条件
            	
				var json=nui.encode({operatingnumber:id,jd:jdid});
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
                			b["puuid"]=data[i].uuid;
//                 			b["initial"]=data[i].initial;
//                 			b["validity"]=data[i].validity;
                			b["initial"]=nui.formatDate(nui.parseDate(data[i].initial),"yyyy-MM-dd");
                			b["validity"]=nui.formatDate(nui.parseDate(data[i].validity),"yyyy-MM-dd");
                			b["review"]=data[i].review;
                			var validity=nui.parseDate(data[i].validity);
                			if(validity>=endtime){
                				b["reviewresult"]="合格";
                				b["reviewremarks"]="";
                			}else if(validity>starttime&&validity<=endtime){
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
                    			
                    			child["office"]=data[i].certificates[r].office;
                    			child["uuid"]=data[i].certificates[r].uuid;
                    			if(data[i].certificates[r].validdate!=null&&data[i].certificates[r].validdate!=""){
									child["validdate"]=nui.formatDate(nui.parseDate(data[i].certificates[r].validdate),"yyyy-MM-dd");
                				//自动审查
                    				var validdate=nui.parseDate(data[i].certificates[r].validdate);
	                    			if(validdate>=endtime){
	                    				child["recordresult"]="合格";
	                    				child["recordremarks"]="";
	                    			}else if(validdate>starttime&&validdate<endtime){
	                    				child["recordresult"]="合格";
	                    				child["recordremarks"]="注意到期时间";
	                    			}else{
	                    				child["recordresult"]="不合格";
	                    				child["recordremarks"]="";
	                    			}
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
            //编辑数据回填得方法
           function setData(data){
            	zhi=data;
            	panduan="edit";
                data = nui.clone(data);
                
//             	nui.get("company").setValue(data.tcomany);
				nui.get("record_person").value=data.record_person;
            	nui.get("combobox1").setValue(data.overhaul);
            	getalltime(nui.get("combobox1"));
//             	if(data.copyperson){            		
// 	            	nui.get("ccry").setValue(data.copyperson);
// 	            	nui.get("ccry").setText(data.copyperson);
//             	}
//             	if(data.review_person){
//             		nui.get("jhry").setValue(data.review_person);            		
//             	}
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
                    	//遍历主表
                    	for(var i=0;i<index;i++){                    		
                    		var index2=1;
                    		if(text.data[i].certificates&&text.data[i].certificates.length>0){
                    			index2=text.data[i].certificates.length;
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
                    		
                    		var b={};
                    			b["name"]=text.data[i].name;
                    			b["operatingnumber"]=text.data[i].operatingnumber;
                    			b["job"]=text.data[i].job;
                    			b["authority"]=text.data[i].authority;
                    			b["items"]=text.data[i].items;
                    			b["initial"]=nui.formatDate(nui.parseDate(text.data[i].initial),"yyyy-MM-dd");
                    			b["reviewresult"]=text.data[i].reviewresult;
                    			b["reviewremarks"]=text.data[i].reviewremarks;
								b["puuid"]=text.data[i].uuid;
//                     			b["validity"]=timeFommater(text.data[i].validity);
                    			if(text.data[i].validity!=null){
	                    			b["validity"]=nui.formatDate(nui.parseDate(text.data[i].validity),"yyyy-MM-dd");
                    			}
                    			if(text.data[i].initial!=null){
	                    			b["initial"]=nui.formatDate(nui.parseDate(text.data[i].initial),"yyyy-MM-dd");
                    			}
                    			b["review"]=text.data[i].review;
                    			
                    			if(text.data[i].certificates.length>0){
		                    		//数据处理添加到列表中	
		                    		for(var r=0;r<index2;r++){
		                    			var child=$.extend(true,{},b);;
		                    			child["cernumber"]=text.data[i].certificates[r].cernumber;
		                    			child["projcode"]=text.data[i].certificates[r].projcode;
		                    			child["recordresult"]=text.data[i].certificates[r].recordresult;
		                    			child["recordremarks"]=text.data[i].certificates[r].recordremarks;
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
                       grid.load(formData);
                    }
                    });
                    nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                }


			//添加行
			function tankuang(){
				if(nui.get("combobox1").text==""){
					nui.alert("请填写大修轮次");
					return;
				}
				var array=new Array();
 				var id=new Array;
				var rows = grid.getSelecteds();
				var yicunzai=grid2.data;
				grid.removeRows(rows,true);
				
				var count="";
				for (var index=0;index<yicunzai.length;index++){
					if(count==""){
						count=yicunzai[index]["puuid"];
						id.push(yicunzai[index]["puuid"]);
					}
					if(count==yicunzai[index]["puuid"]){
						continue;
					}else{
						count=yicunzai[index]["puuid"];
						id.push(yicunzai[index]["puuid"]);
					}
				}
				for (var index=0;index<rows.length;index++){
					id.push(rows[index]["uuid"]);
				}
				bianli(id);
				chaxun();
			}
			//添加查询清单
			function chaxunqing(ids){
				bianli(ids);
				var formData=fz();
                grid.load(formData);
				
			}
			//删除
			function shanchu(){
				
				var tiaojian=new Array;
				var id=new Array;
				var rows = grid2.getSelecteds();
				if(rows.length==0){
				nui.alert("请选择一条数据");
					return;
				}
				for (var i=0;i<rows.length;i++) {
					id[i]=rows[i]["puuid"];
				}
				var rowall=grid2.data;
				
				for(var i=0;i<id.length;i++){
					var remrows=new Array;
					
				    for(var j=0;j<rowall.length;j++){
				        if(rowall[j]["puuid"]!=id[i]){
// 				        	tiaojian.push(rowall[j]);
				        	remrows.push(rowall[j]);
				        }
				    }
				    rowall=remrows;
				    
				}
				tiaojian=rowall;
				
				//删除数据重新编辑格式
				var flag="";
				var pd=0;
				//合并单元格判断值初始行数
				var x=0;
				var marges=new Array();
				var index2=1;
				for(var i=0;i<tiaojian.length;i++){
					if(flag==""){
						flag=tiaojian[i]["puuid"];
// 						index2+=1;
					}else{
						if(flag==tiaojian[i]["puuid"]){
							index2+=1;
							
						}else{
							flag=tiaojian[i]["puuid"];
							
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
		            		index2=1;
						}
					}
					if(i==tiaojian.length-1){
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
					
				}
				//添加数据
                grid2.setData(tiaojian);
             //添加格式
                grid2.mergeCells(marges);
				chaxun();
			}
			//清空
			function qingkong(){
				var data=grid2.getData();
				grid2.removeRows(data,true);
				grid.load(formData);
			}
			//获取大修轮次
			function chec(){
				nui.get('combobox1').setAjaxType("POST");
				nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
			}
<!-- 			//获取大修轮次的开始时间和结束时间 -->
			function getalltime(e){
			var json=nui.encode({xh:e.value});
				$.ajax({
                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getdaxiutime.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	var times=text.data;
                    	starttime=nui.parseDate(times.startTime);
                    	endtime=nui.parseDate(times.endTime);
                    	
                    }
                });
			}
			var editRow = null;
			//测试
			function ceshi(){
				var row=grid2.getData();
				grid.beginEditRow(row);
				editRow = row;
			}
			//添加数据
			function saveData(finishFirstActivityId){
				var jdname=getCookie('jdname');
				var form=new nui.Form("#form1").getData(false,false);
				var form2=new nui.Form("#form2").getData(false,false);
				
				var combobox=nui.get("combobox1").text;
				if(combobox==""){
					nui.alert("请填写大修轮次");
					
					return;
				}
				if(finishFirstActivityId!=""){
					if(isadmin!="true"){
						if(nui.get("jhry").value==""){
							nui.alert("请选择审批人员");
							return;
						}
					}
				}
				
				nui.get("#submit").setEnabled(false);
				nui.get("#save").setEnabled(false);
				
				var data=grid2.getData();
				data.jd=jdid;
				var adddata={};
				grid2.loading("正在添加中,请稍等...");
				if(panduan=="edit"){
					zhi.record_name=jdname+"核电站"+combobox+"焊工资质审查清单";
					zhi.record_person=nui.get("record_person").value;
					zhi.copyperson=nui.get("ccry").value;
					zhi.review_person=nui.get("jhry").text;
					zhi.jd=jdid;
					zhi.jz=jzid;
					
					//工作流需要传的数据
					var allInfo = {};
				    allInfo.isadmin=isadmin;
				    allInfo.finishFirstActivityId = finishFirstActivityId;
				    allInfo.processInstName = "焊工管理_审查记录_修改";
				    allInfo.processInstDesc = "焊工管理_审查记录_修改";
				    allInfo.processDefName = "com.cgn.itmp.weldingmanagement.Review.updateWelder";
		 		    allInfo.jhry = nui.get("jhry").text;
					allInfo.ccry = nui.get("ccry").value;
					allInfo.data = data;
					allInfo.obj = zhi;
					allInfo.mf = zhi;
					
					if(isadmin=="false"){
						 var param={uuid:zhi.uuid,processStatus:"0",qw:"审批中"};
		                var json =nui.encode({data:param,entity:"com.cgn.itmp.weldingmanagement.Review.Reviewrecord"});
		                //修改焊接申请得流程状态
		                $.ajax({
							url : "com.cgn.itmp.weldingmanagement.common.updateentity.biz.ext",
							type : 'POST',
							data : json,
							cache : false,
							contentType : 'text/json',
							success : function(text) {
							}
						});
					}
					json = nui.encode(allInfo);
	                $.ajax({
	                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.updateReviewrecord.biz.ext",
	                    type:'POST',
	                    data:json,
	                    async : false,
	                    cache:false,
	                    contentType:'text/json',
	                    success:function(text){
		                   grid2.unmask();
	                    	nui.alert("保存成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    CloseWindow("saveFailed");
                                }
                                });
	                        },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#submit").setEnabled(true);
									nui.get("#save").setEnabled(true);
									});
								 }
	                        });
                    
	                return;
					
				}
				var reviewrecord={
						tcomany:form["company"],
						overhaul:combobox,
						record_name:jdname+"核电站"+combobox+"焊工资质审查清单",
						record_person:"",
						copyperson:nui.get("ccry").value,
						review_person:nui.get("jhry").text,
						jd:jdid
				};
				if(isadmin=="false"){
					reviewrecord.review_time=new Date();
				}
				var allInfo = {};
 					allInfo.isadmin="<%=request.getSession().getAttribute("isadmin") %>";
				    allInfo.finishFirstActivityId = finishFirstActivityId;
				    allInfo.processInstName = "焊工管理_审查记录_新增";
				    allInfo.processInstDesc = "焊工管理_审查记录_新增";
				    allInfo.processDefName = "com.cgn.itmp.weldingmanagement.Welder.impl.addWelder";
		 		    allInfo.jhry = nui.get("jhry").text;
					allInfo.ccry = nui.get("ccry").value;
					allInfo.data = data;
					allInfo.obj = reviewrecord;
					allInfo.mf = reviewrecord;
					json = nui.encode(allInfo);
	                $.ajax({
	                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.addReviewrecord.biz.ext",
	                    type:'POST',
	                    data:json,
	                    cache:false,
	                    contentType:'text/json',
	                    success:function(text){
		                    grid2.unmask();
	                    	nui.alert("提交成功", "系统提示", function(action){
	                            if(action == "ok" || action == "close"){
	                                onCancel();
	                            }
	                       });
	                    },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									 nui.get("#submit").setEnabled(true);
				nui.get("#save").setEnabled(true);
									});
								 }
	                });
               }
    	function onCancel(){
                        CloseWindow("cancel");
                    }
			function CloseWindow(action){

                        if(action=="close"){

                        }else if(window.CloseOwnerWindow){
                            return window.CloseOwnerWindow(action);
                            
                            return window.close();
                        }
                        }
                        //性别公共代码转换
           function dicCZXM(e) {
               return nui.getDictText("CZXM", e.value);
           }
           //状态
            function dicWSZT(e) {
                 return nui.getDictText("WSZT", e.value);
             }
             function setDate(e){
	     if(e.value!=null){
	     	return nui.formatDate(nui.parseDate(e.value),"yyyy-MM-dd");
	     }
	     
	     
	     	
	     }

    </script>
</body>
</html>