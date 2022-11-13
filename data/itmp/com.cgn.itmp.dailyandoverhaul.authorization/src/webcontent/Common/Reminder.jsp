<!DOCTYPE html>

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
        <title id="title">
            	到期提醒
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
</script>
<script type="text/javascript"
	src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<style type="text/css">
.mini-pager-reload{
	display: none;
}
.mini-textboxlist .mini-textboxlist-inputLi{
	width:100%;
}
.mini-textboxlist .mini-textboxlist-input{
	width:100%;
}
.mini-calendar-clearButton,.mini-calendar-tadayButton{
    border-color: #004a86!important;
    background: #004a86!important;
    color: #fff!important;
    font-family: "微软雅黑";
}
.mini-calendar .mini-calendar-weekend {
    color: #C00000;
}
.mini-calendar .mini-calendar-selected, .mini-calendar .mini-calendar-date:hover {
    background-color: #004a86;
    border-color: #004a86;
    color: #fff;
}
.mini-calendar-days td {
    text-align: center;
    vertical-align: middle;
    padding: 2px;
    padding-left: 3px;
    padding-right: 3px;
    font-size: 9pt;
    font-family: Tahoma, Verdana, 宋体;
    cursor: default;
}
</style>
<script src="<%= request.getContextPath()%>/js/jquery/jquery-1.9.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
</head>

<body style="background-color: #f1f1f1; height: 100%;width:100%;"  >
<div class="bs-docs-section" style="height:100%;">
<div class="nui-panel" title="待选列表" style="width: 100%; height: 50%" buttons="collapse" showToolbar="true">
<div style="width: 100%; height: 7%;">
	<div id="form1" class="nui-form" align="center" style="height: 100%;width:100%;">
		<!-- 数据实体的名称 -->
		<input class="nui-hidden" name="criteria/_entity" id="entity" value="">

		<table id="table1" class="table" style="height:100%;width:60%;float:left;">
        <tr>
			<td  colspan="1"  id="firsttext" style="padding: 0 0 0 20px;">
				姓名:
			</td>
			<td style="text-align: center;" colspan="1" id="firstinput">
				<input class="nui-textbox" name="name" id="name"/>
			</td>
			<td style="text-align: center;padding: 0 0 0 20px;" colspan="1" id="secondtext">
				员工号:
			</td>
			<td style="colspan="1" id="secondinput">
				<input class="nui-textbox" name="empnumber" id="empnumber"/>
			</td>
			<td id="beiyongtext" colspan="1" style="text-align: center;padding: 0 0 0 20px;">
				
			</td>
			<td id="beiyong" colspan="1" style="text-align: center;">
				
			</td>
			
			
		</tr>
	</table>
			<table id="table1" class="table" style="height:50%;width:auto;float:left;">
        <tr>
			<td><button class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="chaxun()">
			查询
		</button></td>
			<td><button style="margin:0 5px" class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="Reset()">
				重置
			</button></td>
   
		</tr>
	</table>
	</div>
	</div>
	
		<div class="nui-fit" style="height:40%;float:left;width:100%;"   id="gridField">
		<div   id="datagrid" url="com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        allowCellSelect="true"
                        allowSortColumn="true"
                          oncellclick = "cellclick"
                           allowCellEdit= "true"
                         showPager="false"
                        multiSelect="true"
                        editNextOnEnterKey="true">  <!--allowCellEdit="true"  -->
                    <div property="columns"> 
                     <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                          
                    </div>
                </div>
                
	</div>
</div>
<div class="nui-panel" title="已选列表" style="width: 100%; height: 50%;" buttons="collapse" showToolbar="true">
	<div class=""  style="float:left;width:100%;"  >
        <div id="form2" style="margin: 0 0 4px 0;" class="nui-form" align="center" >
           
					<table style="width: 100%;">
						<tr style="width: 100%;">
							<td style="height:100%;width:20%">
								<button  class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="tankuang()">
									添加
								</button>
								<button class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="shanchu()">
									删除
								</button>
								
								<button class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="qingkong()">
									清空
								</button>
								<button id="examina"  class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="shencha()">
									选择审查记录
								</button>
								</td>
								<td id="programtext"  colspan="1"  style="width:4%" >
				提前</td>
			<td  id="programtime" colspan="1" style="width:5%"><input  style="width:100%" class="nui-spinner" minValue="1" maxValue="250" onvalidation="onCheck"  name="advanceday" id="advanceday" />
			</td>
			<td  colspan="1" id="programhide" style="width:10%">
				天到期提醒</td>
			
			<td  colspan="1" style="width:5%">
				持续提醒</td>
			<td  colspan="1" style="width:4%"><input class="nui-spinner" minValue="1" maxValue="250" onvalidation="onCheck"  name="duration" id="duration" />
			</td>
			<td  colspan="1" style="width:4%">
				天</td>
				<td id="remname" style="width:8%" colspan="1"   >
				到期提醒名称:
			</td>
			<td  colspan="1" style="width:10%">
				<input class="nui-textbox" name="title" id="rename" onvalidation="onCheck"/>
			</td>
								
								<td  colspan="1" style="width:8%">
				选择提醒人员：
				</td>
			<td  colspan="1" style="width:10%"><input property="editor" id="reminder" onvalidation="onCheck"  multi="true" name="reminder" class="nui-textboxlist" dataField="list"
                       style="width:80%"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
                       textField="empcodename" searchField="keyword" />
			</td>
			
			
								<td style="width:28%;">
								
								<button style="float:right;margin:0 3px;" class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="onCancel()">
									关闭
								</button>
								<button style="float:right;margin:0 3px;" class="nui-button btn btn-default btn-xs btn-submit"
									id="submit" type="button" onclick="add()">
									保存
								</button>
								
							</td>
						</tr>
					</table>
				</div>
				</div>
	
		<div class="nui-fit" style="height:40%;width:100%;float:left;"   id="gridField2">
		<div   id="datagrid2"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        allowCellSelect="true"
                        allowSortColumn="true"
                          oncellclick = "cellclick"
                           allowCellEdit= "true"
                         showPager="false"
                        multiSelect="true"
                        editNextOnEnterKey="true">  <!--allowCellEdit="true"  -->
                    <div property="columns"> 
                     <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                          
                    </div>
                </div>
		</div>
		</div>
	</div>
</body>
		<script>
		
		
		nui.parse();
			var grid = nui.get("datagrid");
			var grid2 = nui.get("datagrid2");
			var removeUrl;
			var recoveryUrl;
			var entityVal;
			var jdid=getCookie('jdid');
            var jzid=getCookie('jzid');
            var starttime;
            var endtime;
            var pageType;
            var submittype;
            var param;
            
            
			
//防止弹框
miniui_debugger = false;
function setData(data) {
param=data;
submittype="add";
	pageType=data.pageType;
	
	var beiyong=document.getElementById("beiyong");
	var beiyongtext=document.getElementById("beiyongtext");
	if(pageType=="aut"){
		beiyongtext.innerHTML="<div>授权类型:</div>";
		beiyong.innerHTML="<input class='nui-dictcombobox' name='sqlx' dictTypeId='SQTYPE'"+
						"url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE'"+
						"textField='dictName' valueField='dictID' emptyText='请选择'"+
						"required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'' />";
	}else if(pageType=="Ndt"){
		document.getElementById("secondtext").innerHTML="<div>资质类型:</div>";
		document.getElementById("secondinput").innerHTML="<input class='nui-dictcombobox' name='zzlx' dictTypeId='ZZLX' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZZLX' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyongtext.innerHTML="<div>工作单位:</div>";
		beiyong.innerHTML="<input class='nui-textbox' name='gzdw'/>";
	}else if(pageType=="Welder"){
		beiyongtext.innerHTML="<div>所属公司:</div>";
		beiyong.innerHTML="<input class='nui-textbox' name='company' />";
	}else if(pageType=="Mac"){
		nui.get("examina").hide();
		document.getElementById("firsttext").innerHTML="设备编号:";
		document.getElementById("firstinput").innerHTML="<input class='nui-textbox' name='number' id='number'/>";
		document.getElementById("secondtext").innerHTML="设备名称:";
		document.getElementById("secondinput").innerHTML="<input class='nui-textbox' name='name' id='sbname'/>";
		beiyongtext.innerHTML="状态:";
		beiyong.innerHTML="<input class='nui-dictcombobox' name='state' dictTypeId='HJGLZT' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=HJGLZT' textField='dictName' valueField='dictID' emptyText='请选择'   allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		$("#examina").hide();
	}else if(pageType=="program"){
		nui.get("examina").hide();
		document.getElementById("programhide").style.width="0%";
		document.getElementById("firsttext").innerHTML="程序编码:";
		document.getElementById("firstinput").innerHTML="<input class='nui-textbox' name='cxbm' id='cxbm'/>";
		document.getElementById("secondtext").innerHTML="状态:";
		document.getElementById("secondinput").innerHTML="<input class='nui-textbox' name='status' id='status'/>";
		beiyongtext.innerHTML="下次升版时间:";
		beiyong.innerHTML="<input  class='nui-datepicker'showClose='true'  oncloseclick='this.setValue(null);'  allowInput='false'  name='xcsbsj' />";
		document.getElementById("programhide").innerHTML="";
		document.getElementById("programtext").innerHTML="升版提醒日期：";
		document.getElementById("programtext").style.width="7%";
		document.getElementById("programtime").innerHTML="<input class='nui-datepicker'required='true' showClose='true' oncloseclick='this.setValue(null);' allowInput='false' name='remindertime' id='remindertime'/>";
		document.getElementById("programtime").style.width="10%";
		document.getElementById("title").innerHTML="升版提醒";
		document.getElementById("remname").innerHTML="升版提醒名称:";
		$("#examina").hide();
		
	}else {
		document.getElementById("firsttext").innerHTML="<div>适用堆型:</div>";
		document.getElementById("firstinput").innerHTML="<input class='nui-dictcombobox' name='sydx' dictTypeId='SYDX' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SYDX' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyongtext.innerHTML="<div>验证项目:</div>";
		beiyong.style.width="25%";
		beiyong.innerHTML="<input style='width:100%' class='nui-dictcombobox' name='yzxm' dictTypeId='YZXM' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=YZXM' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
	
	}
	
	var infos = nui.clone(data);
	entityVal=infos.entityVal;//数据实体
	
	var urlName = infos.urlName;//数据查询url
	var columnsVal = infos.columnscode;
	init(urlName,columnsVal);
	
    grid = nui.get("datagrid");
    var formData = new nui.Form("#form1").getData(false, false);
    formData["parameter/code"] = entityVal;
    nui.get("entity").setValue(entityVal);
	grid.load(fz());
	nui.parse();
	
}
//修改
function setupdataData(data) {
	param=data;
	submittype="updata";
	pageType=data.pageType;
	var nutbeiyongtext=document.getElementById("secondtext");
	var nutbeiyong=document.getElementById("secondinput");
	var beiyong=document.getElementById("beiyong");
	var beiyongtext=document.getElementById("beiyongtext");
	if(pageType=="aut"){
		beiyongtext.innerHTML="<div>授权类型:</div>";
		beiyong.innerHTML="<input class='nui-dictcombobox' name='sqlx' dictTypeId='SQTYPE'"+
						"url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE'"+
						"textField='dictName' valueField='dictID' emptyText='请选择'"+
						"required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'' />";
	}else if(pageType=="Ndt"){
		document.getElementById("secondtext").innerHTML="<div>资质类型:</div>";
		document.getElementById("secondinput").innerHTML="<input class='nui-dictcombobox' name='zzlx' dictTypeId='ZZLX' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZZLX' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyongtext.innerHTML="<div>工作单位:</div>";
		beiyong.innerHTML="<input class='nui-textbox' name='gzdw'/>";
	}else if(pageType=="Welder"){
		beiyongtext.innerHTML="<div>所属公司:</div>";
		beiyong.innerHTML="<input class='nui-textbox' name='company' id='company'/>";
	}else if(pageType=="Mac"){
		document.getElementById("firsttext").innerHTML="设备编号:";
		document.getElementById("firstinput").innerHTML="<input class='nui-textbox' name='number' id='number'/>";
		document.getElementById("secondtext").innerHTML="设备名称:";
		document.getElementById("secondinput").innerHTML="<input class='nui-textbox' name='name' id='name'/>";
		beiyongtext.innerHTML="状       态:";
		beiyong.innerHTML="<input class='nui-dictcombobox' name='state' dictTypeId='HJGLZT' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=HJGLZT' textField='dictName' valueField='dictID' emptyText='请选择'   allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
	}else if(pageType=="program"){
		nui.get("examina").hide();
		document.getElementById("firsttext").innerHTML="程序编码:";
		document.getElementById("firstinput").innerHTML="<input class='nui-textbox' name='cxbm' id='cxbm'/>";
		document.getElementById("secondtext").innerHTML="状态:";
		document.getElementById("secondinput").innerHTML="<input class='nui-textbox' name='status' id='status'/>";
		beiyongtext.innerHTML="下次升版时间:";
		beiyong.innerHTML="<input  class='nui-datepicker' name='xcsbsj' />";
		document.getElementById("programhide").innerHTML="";
		document.getElementById("programtext").innerHTML="升版提醒日期：";
		document.getElementById("programtext").style.width="7%";
		document.getElementById("programtime").innerHTML="<input class='nui-datepicker' name='remindertime' id='remindertime'/>";
		document.getElementById("programtime").style.width="10%";
		document.getElementById("title").innerHTML="升版提醒";
		document.getElementById("remname").innerHTML="升版提醒名称:";
		
	}else  if(pageType=="Pro"){
	
		document.getElementById("firsttext").innerHTML="<div>适用堆型:</div>";
		document.getElementById("firstinput").innerHTML="<input class='nui-dictcombobox' name='sydx' dictTypeId='SYDX' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SYDX' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyongtext.innerHTML="<div>验证项目:</div>";
		beiyong.style.width="25%";
		beiyong.innerHTML="<input style='width:100%' class='nui-dictcombobox' name='yzxm' dictTypeId='YZXM' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=YZXM' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
	
	}
	var infos = nui.clone(data);
	entityVal=infos.entityVal;//数据实体
	var urlName = infos.urlName;//数据查询url
	var columnsVal = infos.columnscode;
	init(urlName,columnsVal);
	
    grid = nui.get("datagrid");
    var formData = new nui.Form("#form1").getData(false, false);
    formData["parameter/code"] = entityVal;
    nui.get("entity").setValue(entityVal);
    
	grid.load(fz());
	
	grid2 = nui.get("datagrid2");
	//查询数据
	queryList(data);
	nui.parse();
	if(data.remindertime){
		nui.get("remindertime").setValue(data.remindertime);		
	}
	nui.get("rename").setValue(data.title);
	nui.get("reminder").setValue(data.reminder);
	nui.get("reminder").setText(data.remindertext);
	nui.get("advanceday").setValue(data.advanceday);
	nui.get("duration").setValue(data.duration);
}
//初始化第一个grid数据
  function queryList(data){
  var json=nui.encode({id:data.id,relationType:data.pageType,jd:jdid,jz:jzid});

   	nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.Common.editReminder.biz.ext",
                type: 'POST',
                data: json,
                async:false, 
                success: function (text){
                	if(data.pageType=="program"){
                	var newdata=[];
                	for(var i=0;i<text.data.length;i++){
	                	if(text.data[i].JZID==jzid){
	                		newdata.push(text.data[i]);
	                	}
                	}
                		grid2.setData(newdata);
	                	
                	}else{
                		grid2.setData(text.data);
                	}
                	
               		          	
                }
           });
           chaxun();
  }

function init(urlName,columnsVal) {
// 	var field=(entityVal.substr(entityVal.lastIndexOf(".")+1)+"s").toLowerCase();
	columnsVal.splice(0,2);
	//动态创建表格
	var dxlbColumn = grid.getColumns();//待选列表
    var yxlbColumn = grid2.getColumns();//已选列表
    for(var i=0;i<columnsVal.length;i++){
    dxlbColumn.push(columnsVal[i]);
    yxlbColumn.push(columnsVal[i]);
    }
//     grid.render(document.getElementById("gridField"));
    grid.url=urlName;
    //给grid2增加两个列，一个是结果，一个是备注
     grid.setColumns(dxlbColumn);
     grid2.setColumns(yxlbColumn);	
};


    //公共代码转换
    function xbRenderer(e) {
    if (e.value == "YGQ" || e.value == "YCX" || e.value == "YZT") {
            e.rowStyle = 'color:red';
        }
        return nui.getDictText(e.column.dic,e.value);
    }


                        
            //添加查询清单
			function chaxun(){
				var formData=fz();
				
                grid.load(formData);
				
			}
            

			//添加行
			function tankuang(){
				var rows = grid.getSelecteds();
				if(rows.length>0){
	            	grid.removeRows(rows,true);
					grid2.addRows(rows);
					chaxun();
            	}else{
            		nui.showTips(
						{
							content: '未选择数据',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
            	}
				
			}
 //预览页面附件显示
    function setFile(e) {
        var fileRealName = e.record.fileRealName;
        var filepath = e.record.filePath;
        var fileId = e.record.fildid;
        if (fileRealName == null || fileRealName == 'null') {
            return "";
        }
        var html = '<a href="#" onclick="load(\'' + fileId
            + '\')" id="attr_' + filepath + '" >' + fileRealName
            + '</a>';
        return html;
    }

 			//页面条件筛选赋值
            function fz(){
            	var id="";
            	var pd=0;
            	grid2=nui.get("datagrid2");	
            	var yicunzai=grid2.data;
            	for (var index in yicunzai){
					if(!isNaN(index)){
						if(pd==1){
							id+=",";
						}	
						if(pageType=="Welder"){
		            		id+=yicunzai[index]["uuid"];	
		            	}else if(pageType=="program"){
		            		id+=yicunzai[index]["UUID"];	
		            	}else{
		            		id+=yicunzai[index]["uuid"];
		            	}
						if(pd==0){
							pd=1;
						}
					}
				}
            	var form=new nui.Form("#form1").getData(false,false);
            	form["parameter/name"]=form["name"];
            	form["parameter/empnumber"]=form["empnumber"];
            	form["parameter/code"]=pageType;
            	form["parameter/jd"]=jdid;
            	
//             	form["parameter/idnumbers"]=id;
            	form["parameter/already"]=id;
            	
            	if(pageType=="aut"){
            		form["parameter/sqlx"]=form["sqlx"];	
            	}else if(pageType=="Ndt"){
            		form["parameter/zzlx"]=form["zzlx"];
            		form["parameter/gzdw"]=form["gzdw"];	
            	}else if(pageType=="Welder"){
            		form["parameter/company"]=form["company"];	
            	}else if(pageType=="Mac"){
            		form["parameter/number"]=form["number"];
            		form["parameter/state"]=form["state"];
            	}else if(pageType=="program"){
            		form["parameter/cxbm"]=form["cxbm"];
            		form["parameter/status"]=form["status"];
            		form["parameter/xcsbsj"]=form["xcsbsj"];
            		form["parameter/jz"]=jzid;
            	}else if(pageType=="Pro"){
            		form["parameter/sydx"]=form["sydx"];
            		form["parameter/yzxm"]=form["yzxm"];	
            	}
            	return form;
            }
            //删除
            function shanchu(){
            	var rows=grid2.getSelecteds();
            	if(rows.length>0){
	            	grid2.removeRows(rows,true);
	            	chaxun();
            	}else{
            		nui.showTips(
						{
							content: '未选择数据',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
            	}
            }
            //清空
           function qingkong(){
           	var rows=grid2.getData();
           	grid2.removeRows(rows,true);
           	chaxun();
           }
           
			
			//添加数据
		function add(){
			var form = new nui.Form("form1");
			form.validate();
			if(form.isValid()==false) return;
			var form2 = new nui.Form("form2");
			form2.validate();
			var title=nui.get("rename").value;
			if(form2.isValid()==false) return;
			nui.get("#submit").setEnabled(false);
				var advanceday="";
				var remindertime="";
				
			if(pageType=="program"){
				remindertime=nui.get("remindertime").value;
			}else{
				advanceday=nui.get("advanceday").value;
			}
				var duration=nui.get("duration").value;
				var reminder=nui.get("reminder").value;
				var remindertext=nui.get("reminder").text;
				
				
				var rows=grid2.getData();
				
				var data={relationType:pageType,jd:jdid,title:title,advanceday:advanceday,duration:duration,reminder:reminder,remindertext:remindertext,remindertime:remindertime};
				
				if(submittype=="updata"){
					data.id=param.id;
				}
				var json=nui.encode({ids:rows,check:data,submittype:submittype});
				$.ajax({
			    url:"com.cgn.itmp.dailyandoverhaul.authorization.Common.insertreminder.biz.ext",
			    type:'POST',
			    cache:false,
			    data:json,
			    contentType:'text/json',
			    success:function(data){
			    nui.get("#submit").setEnabled(true);
			    	window.CloseOwnerWindow();
			    }
			    
			  });	
		}
		
                    			
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
                    	starttime=new Date(times.startTime);
                    	endtime=new Date(times.endTime);
                    	
                    }
                });
			}
			//取消
            function onCancel() {
                window.CloseOwnerWindow();
            }
            
            //选择审查记录
            function shencha(){
            	
            	var url="/itmp/authorization/Common/Remexamina.jsp";
            	if(param.pageType	=="Welder"){
            		url="/itmp/weldingmanagement/Review/ReviewrecordListRemexamina.jsp";
            	}
            	nui.open({
	            showMaxButton: true,
	            url: url,
	            title: "选择审查记录",
	            width: "70%",
	            height: "90%",
	            onload: function () {
	                var iframe = this.getIFrameEl();
	                if(param.pageType !="Welder"){
 						iframe.contentWindow.setData(param);
	                }
	            },
	            ondestroy: function (action) {
	            var iframe = this.getIFrameEl();
	                var id=iframe.contentWindow.getData();
	                if(id!=""){
	                	if(param.pageType=="Welder"){
	                		//焊工的审查
	                		queryWelderList(id);
	                	}else{
               				queryRemList(id);	                		
	                	}
               		} 
	            }
        		});
            } 
           //通过选择审查id去查询不合格和需要注意时间的人员
          function queryRemList(id){
			  var json=nui.encode({id:id,relationType:param.pageType,jd:jdid});
			   	nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.Common.queryList.biz.ext",
                type: 'POST',
                data: json,
                async:false,
                success: function (text){
                if(text.data.length==0){
	                nui.alert("此审查记录里未存在人员");
                	return;
                }
                var data=text.data;
                var rows=grid2.getData();
							var real=new Array;
							for(var i=0;i<data.length;i++){
							var pd=0;
								for(var j=0;j<rows.length;j++){
									if(data[i].idnumber==rows[j].idnumber){
										pd=1;
									}
								}
								if(pd==0){
									real.push(data[i]);
								}
							}
                
                grid2.addRows(real);
                }
           });
           chaxun();
  }
          function onCheck(e){
                   
	       if (e.isValid) {
	         if(e.value==""){
	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }
	       }
	     }
          
          function queryWelderList(id){
        	  
        	  var json = nui.encode({id:id});
              $.ajax({
                  url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getWelderRevew.biz.ext",
                  type:'POST',
                  data:json,
                  cache:false,
                  contentType:'text/json',
                  success:function(text){
                	  if(text.data.length==0){
  	                	nui.alert("此审查记录里未存在人员");
  	                	return;
	  	               }
	  	                var data=text.data;
	  	                var rows=grid2.getData();
	  								var real=new Array;
	  								for(var i=0;i<data.length;i++){
	  								var pd=0;
	  									for(var j=0;j<rows.length;j++){
	  										if(data[i].idnumber==rows[j].idnumber){
	  											pd=1;
	  										}
	  									}
	  									if(pd==0){
	  										real.push(data[i]);
	  									}
	  								}
	  	                
	  	                grid2.addRows(real);
                  
                  }
                  });
          }
          function Reset(){
        	  var form = new nui.Form("#form1");//将普通form转为nui的form
              form.reset();
			
          }
          function sfgq(e){
			    var combo = e.sender;
				var nowTime = new Date();
				if(combo.value >= nowTime){
					zt.setValue("ZC");
				}else{
					zt.setValue("YGQ");
				}
          }
        //特殊有效期公共代码转换
			function proyxqRenderer(e){
				var yxq=new Date(e.row.yxrq);
				if(yxq!=null&&yxq<new Date()){
					e.rowStyle = 'color:red';
					e.row.zt="YGQ";
				}else{
					e.row.zt="ZC";
				}																		
				return e.cellHtml;
			}
			
		  //状态公共代码转换
		    function ztRenderer(e) {
		        if (e.row.zt == "YGQ" || e.row.zt == "YCX" || e.row.zt == "YZT") {
		            e.rowStyle = 'color:red';
		        }
		        return nui.getDictText("SQGL_WSZT", e.value);
		    }
		  
		    //有效期公共代码转换
		    function yxqRenderer(e) {
		    	var yxq ;
		    if(e.row.sqyxq){
		    	yxq = new Date(e.row.sqyxq);
		    }else if(e.row.yxrq){
		    	yxq = new Date(e.row.yxrq);
		    }else{
		    	yxq = new Date(e.row.yxq);
		    }
		        
		        if (yxq != null && yxq < new Date()) {
		            e.rowStyle = 'color:red';
		            if(e.row.zt!="" && e.row.zt!=null && e.row.zt!="ZC"){
		            	return e.cellHtml;
		            }else{
		            	e.row.zt = "YGQ";
		            }
		             return e.cellHtml;
		        } else {
		          if(e.row.zt!="" && e.row.zt!=null&&e.row.zt!="YGQ"){
		            	return e.cellHtml;
		            }else{
		            	 e.row.zt = "ZC";
		            }
		            return e.cellHtml;
		        }
		    }
		    //状态公共代码转换
		    function timeRenderer(e) {
			    if(e.value!=""){
			        return nui.formatDate(new Date(e.value),"yyyy-MM-dd");
			    }else{
			    	return "";
			    }
		    }
            
</script>

</html>