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
        <title>
            	有效期批量更新
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>

<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
<style type="text/css">
.mini-pager-reload{
	display: none;
}
.mini-calendar-tadayButton, .mini-calendar-clearButton, .mini-calendar-okButton, .mini-calendar-cancelButton {
    border-color: #004a86;
    background: #004a86;
    color: #fff;
    display: inline-block;
    font-size: 9pt;
    font-family: "microsoft yahei" !important;
    text-decoration: none;
    padding: 4px;
    padding-left: 0px;
    padding-right: 0px;
    width: 52px;
    text-align: center;
    outline: none;
    cursor: pointer;
    vertical-align: middle;
}
.mini-calendar .mini-calendar-selected, .mini-calendar .mini-calendar-date:hover {
    background-color: #004a86;
    border-color: #004a86;
    color: #fff;
}
</style>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
</head>

<body style=" height: 100%;"  >
<div class="bs-docs-section" style="height:100%;">
<div class="nui-panel" title="人员列表" style="width: 100%; height: 50%" buttons="collapse" showToolbar="true">
<div style="width: 100%; height: 7%;">
	<div id="form1" class="nui-form" align="center" style="height: 100%;">
		<!-- 数据实体的名称 -->
		<input class="nui-hidden" name="criteria/_entity" id="entity" value="">

		<table id="table1" class="table" style="height:100%;float:left;width:auto">
        <tr>
			<td style="padding:0 3px;" colspan="1">
				姓名：<input class="nui-textbox" name="name" />
			</td>
			<td  colspan="1"  style="padding:0 3px;">
				员工号：<input class="nui-textbox" name="empnumber"/>
			</td>
			<td  colspan="1"  style="padding:0 3px;">
				身份证号：<input class="nui-textbox" name="idnubmer"/>
			</td>
			<td>
		</tr>
	</table>
	<table id="table1" class="table" style="height:100%;width:auto%;float:left;">
        <tr>
			<td><button style="margin:0px 4px;" class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="chaxun()">
			查询
		</button></td>
			<td ><button style="margin:0px 4px;" class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="Reset()">
				重置
			</button></td>
			<td colspan="1" style="margin:0px 4px;"><button class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="chaxunqingdan()">
			导入查询清单
		</button></td>
		</tr>
	</table>

   
	</div>
	</div>
	
		<div class="nui-fit" style="height:40%;width:100%;"   id="gridField">
                
	</div>
</div>
<div class="nui-panel" title="已选列表" style="width: 100%; height: 50%;" buttons="collapse" showToolbar="true">
	<div class=""  style="width:100%;height:10%;margin: 0 0 5px 0;" showToolbar="false" showFooter="false" >
        <div id="form2" class="nui-form" align="center" >
           
					<table style="width: 100%;">
						<tr>
						
							<td>
								<button class="nui-button btn btn-default btn-xs btn-submit"
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
								</td>
								<td class="pzrq"  colspan="1" style="width:10%;text-align:right;">
				批准日期：
				</td>
			<td class="pzrq"  colspan="1" style="width:15%;">
				<input class='nui-datepicker'required='true' requiredErrorText="批准日期不能为空" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" name='pztime' id='pztime'/>
			</td>
										<td  colspan="1" style="width:10%;text-align:right;">
				有效期至：
				</td>
			<td  colspan="1" style="width:15%">
				<input class='nui-datepicker'required='true' requiredErrorText="有效期不能为空" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" name='updatetime' id='updatetime'/>
			</td>
								
								<td>
								<button style="float:right;" class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="onCancel()">
									取消
								</button>
								<button style="float:right;margin:0 3px;" class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="add()">
									确认
								</button>
								
							</td>
						</tr>
					</table>
				</div>
				</div>
	
		<div class="nui-fit" style="height:40%;width:100%;"   id="gridField2">
		</div>
		</div>
	</div>
</body>
		<script>
		
		
		nui.parse();
			var grid;
			var grid2;
			var removeUrl;
			var recoveryUrl;
			var entityVal;
			var jdid=getCookie('jdid');
            var jzid=getCookie('jzid');
            var starttime;
            var endtime;
            var pageType;
            var submittype;
            var param={};
			var file;
//防止弹框
miniui_debugger = false;
function setData(data) {
param=data;
submittype="add";
	pageType=data.pageType;
	if(pageType!="Pro"){
		$(".pzrq").hide();
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
}
//修改
function setupdataData(data) {
param=data;
	submittype="updata";
	pageType=data.pageType;
	var text=document.getElementById("beiyong");
	
	if(pageType=="aut"){
		text.innerHTML="授权类型<input class='nui-dictcombobox'"+
									"name='sqlx' dictTypeId='SQTYPE'"+
									"url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE'"+
									"textField='dictName' valueField='dictID' emptyText='请选择'"+
									"required='false' allowInput='true' showNullItem='true'"+
									"nullItemText='请选择...'/>";
	}else if(pageType=="Ndt"){
		text.innerHTML="公司名称:<input class='nui-textbox' name='gzdw'/>";
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
	queryList(data);
	nui.parse();
	var s=nui.get("combobox1");
	for(var i=0;i<s.data.length;i++){
		if(s.data[i].id==param.round){
			s.select(i);
		}
	}
	
	
}

  			//导入查询清单
            function chaxunqingdan(){
            	
				 var data = {};
				 
				 data.modelFlag = "4";
				 data.jdid = jdid;
				 data.jzid = jzid;
				 
				 var json = nui.encode(data);

   				nui.open({showMaxButton : true,
		        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
		        title: "新增记录", width: 600, height: 200,
		        onload: function () {//弹出页面加载完成
		        	var iframe = this.getIFrameEl();
		            var data = {
		            	chaxun:"1",
		            	pageType:"batchAdd",
		            	type:pageType,
		            	tempFileName:"scjl.xlsx",
		            	tempLoadName:"查询清单导入模板",
		            	entitfName:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgtFile"
		            };//传入页面的json数据
		             iframe.contentWindow.SetData(data);
		        },
		        ondestroy: function (action) {//弹出页面关闭前
		        var iframe = this.getIFrameEl();
		        var data="";
				//得到的结果
				if(iframe.contentWindow.GetData()){
					data = iframe.contentWindow.GetData().data;	
				}		
				grid2=nui.get("datagrid2");
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
				var from=fz();
		        grid.load(from);
		    	}
			});
			
		}

  function queryList(data){
  var json=nui.encode({id:data.id,relationType:data.pageType,jd:jdid});

   	nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.Common.queryList.biz.ext",
                type: 'POST',
                data: json,
                async:false, 
                success: function (text){
               		grid2.setData(text.data);          	
                }
           });
           chaxun();
  }

function init(urlName,columnsVal) {
	var field=(entityVal.substr(entityVal.lastIndexOf(".")+1)+"s").toLowerCase();
	//动态创建表格
	var grid =new nui.DataGrid();
	grid.set({
        url:urlName,
        style:"width:100%;height:100%;",
        id:"datagrid",
//      class:"nui-datagrid",
        columns: columnsVal,
        multiSelect:true,
        allowResize:false,
        allowCellEdit:true,
        allowSortColumn:false,
        allowCellSelect:true,
        showPageIndex:false,
        allowRowSelect:true,
        showPager:false,
        editNextOnEnterKey:true,
        editNextRowCell:true,
        cellEditAction:"cellclick",
        showFooter:"false",
        
//         pageSize:"10",
        dataField:"data",
        cellEdit: true
//         onselectionchanged:"selectionChanged",
    });
    grid.render(document.getElementById("gridField"));
// 	for(var index=2;index<columnsVal.length;index++){
// 		var bianli=columnsVal[index];
// 		if(bianli.field=="yxrq"){
// 			bianli.editor={type:"datepicker",minValue:0,maxValue:200,value:25}
// 			bianli.onvaluechanged="doChangeState";
// 			bianli.required="true";
// 		}
// 		if(bianli.field=="zmwj"){
			
// 			bianli.editor={type:"fileupload",minValue:0,maxValue:200,value:25,
// 			buttonText: "浏览",
// 			flashUrl: "/itmp/js/swfupload/swfupload.swf",
// 			id: "fj",
// 			limitSize: "100MB",
// 			limitType: "*.*",
// 			name: "uploadFile",
// 			onfileselect: "onfileselect",
// 			onuploaderror: "onUploadError",
// 			onuploadsuccess: "onUploadSuccess",
// 			style: "width: 100%;",
// 			type: "fileupload",
// 			uploadOnSelect: true,
// 			uploadUrl: "/itmp/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
// 		}
		
// 		bianli.onvaluechanged="doChangeState";
// 		bianli.required="true";
// 		}
// 	}
    grid =new nui.DataGrid();
	grid.set({
        url:"",
        style:"width:100%;height:100%;",
        id:"datagrid2",
//          class:"nui-datagrid",
        columns: columnsVal,
        multiSelect:true,
        allowResize:false,
        allowCellEdit:true,
        allowSortColumn:false,
        allowCellSelect:true,
        showPageIndex:false,
        allowRowSelect:true,
        showPager:false,
        editNextOnEnterKey:true,
        editNextRowCell:true,
        cellEditAction:"cellclick",
        onCellBeginEdit:"onCellBeginEdit",
//         pageSize:"10",
        dataField:"data",
        cellEdit: true
//         onselectionchanged:"selectionChanged",
    });
     grid.render(document.getElementById("gridField2"));
};

  //上传成功时，回写附件的name、id
    function onUploadSuccess(e) {
 		fileName = e.file.name;
 		filePath = nui.decode(e.serverData).ret.filePath;
 		var json = {};
 		json.filename = fileName;
 		json.filepath = filePath;
 		json = nui.encode(json);
 		
 		$.ajax({
            url: "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
            	file.record.fildid = text.fileid;
            }
        });
	}
	
	  
	

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
						id+=yicunzai[index]["uuid"];
						if(pd==0){
							pd=1;
						}
					}
				}
            	var form=new nui.Form("#form1").getData(false,false);
            	form["parameter/name"]=form["name"];
            	form["parameter/empnumber"]=form["empnumber"];
            	form["parameter/idnubmer"]=form["idnubmer"];
            	form["parameter/code"]=pageType;
            	form["parameter/jd"]=jdid;
            	form["parameter/already"]=id;
            	if(pageType=="aut"){
            		form["parameter/sqlx"]=form["sqlx"];	
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
            		nui.alert("未选中数据","系统提示")
            	}
            }
            //清空
           function qingkong(){
           	var rows=grid2.getData();
           	grid2.removeRows(rows,true);
           	chaxun();
           }
           
			
			
		function add(){
			if(nui.get("updatetime").value==""){
				nui.alert("有效期不能为空","系统提示");
				return;
			}
			if(pageType=="Pro"){
				if(nui.get("updatetime").value==""){
				nui.alert("审批日期不能为空","系统提示");
				return;
			}
			}
			var rows=grid2.getData();	
			if(rows.length>0){
				var entityname=param.entityVal;
				for(var i=0;i<rows.length;i++){
					rows[i].yxrq=nui.get("updatetime").value;
					if(pageType=="Pro"){
						rows[i].pzrq=nui.get("pztime").value;
					}
				}
				var data={relationType:pageType,jd:jdid};
				if(submittype=="updata"){
					data.id=param.id;
				}
				var json=nui.encode({data:rows,type:"updata",entityname:entityname});
				$.ajax({
				    url:"com.cgn.itmp.dailyandoverhaul.authorization.Common.examinerecycle.biz.ext",
				    type:'POST',
				    cache:false,
				    data:json,
				    contentType:'text/json',
				    success:function(data){
				    	window.CloseOwnerWindow();
				    }
			  });	
            	}else{
            		nui.alert("未添加数据","系统提示");
            		
            	}
		}
		
                    			
          function onfileselect(e) {
          	startUpload(e);
          }
          function startUpload(e) {  	
          	var fileupload = e.sender;    
            fileupload.startUpload();
          }   			
		//取消
        function onCancel() {
            window.CloseOwnerWindow();
        }
        function onCellBeginEdit(e) {
            var field = e.field, value = e.value;   
            if (field == "zmwj") {
               file = e;
            }
        }

          //预览页面附件显示
         function setFile(e) {
         	
             var fileRealName = e.record.zmwj;
             
             var fileId = e.record.fildid;
             if (fileRealName == null || fileRealName == 'null') {
                 return "";
             }
             var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId='+fileId+'" >' + fileRealName + '</a>';
             return html;
         }
         function onCheck(e){
                   
	       if (e.isValid) {
	         if(e.value==""){
	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }
	       }
	     }
	     function Reset(){
        	  var form = new nui.Form("#form1");//将普通form转为nui的form
              form.reset();
			
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
		    //根据有效日期修改状态
					function doChangeState(e){
					    
					    var combo = e.sender;
			            var row = grid.getEditorOwnerRow(combo);
			            var editor = grid.getCellEditor("zt", row);
						var nowTime = new Date();
						if(combo.value >= nowTime){
							editor.setValue("ZC");
						}else{
							editor.setValue("YGQ");
						}
			            
			          
					}
		     //状态公共代码转换
		    function ztRenderer(e) {
		        if (e.row.zt == "YGQ" || e.row.zt == "YCX" || e.row.zt == "YZT") {
		            e.rowStyle = 'color:red';
		        }
		        return nui.getDictText("SQGL_WSZT", e.value);
		    }
		    //重置
            function Reset(){
          	  var form = new nui.Form("#form1");//将普通form转为nui的form
                form.reset();

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
</script>

</html>