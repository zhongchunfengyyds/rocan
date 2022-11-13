<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): littlebear
  - Date: 2019-08-05 17:45:14
  - Description:
-->
<head>
	<title>回收站</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<script src="<%=request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
</head>
<style>
.mini-grid-headerCell {
	background:none!important;
    background-color: #d2d2d2!important;
}
.mini-grid-cell{
	text-align:center!important;
} 
</style>
<body style="width:98%;height:97%;position:relative;">
	<div id="form1" class="nui-form" align="center" style="height: 0px">
		<!-- 排序字段 -->
		<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="deletetime">
		<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
		<!-- 数据实体的名称 -->
		<input class="nui-hidden" name="criteria/_expr[20]/_op" id="" value="=">
		<input class="nui-hidden" name="criteria/_expr[20]/isdel" value="1" />
<!-- 		<input class="nui-hidden" name="criteria/_entity" id="entity" value=""> -->
<!-- 		<input class="nui-hidden" name="criteria/_expr[21]/isdelete" value="1" /> -->
	</div>
	
	<div id="gridField" style="width:100%;height:93%;">
	
	<div style="position:absolute;left:50%;transform: translate(-50%, 0);bottom:0;text-align:center">
		<a class="nui-button" onclick="recovery()"> 恢复 </a>
		<a class="nui-button" id="remove" onclick="remove()"> 彻底删除 </a> 
	</div>
</body>
<script>
function stateRender(e){
return nui.getDictText(e.column.dic,e.value);
}
var grid;
var removeUrl;
var recoveryUrl;
var entityVal;
var type=0;
var stencilplate="";
var role = '<%=userRoleCodeList %>';
function setFormData(data) {
	if(data.pageType=="exmine"){
		type=1;
	}
	if(data.pageType=="DefectsshowdetailedinformationList"){
		stencilplate = data.stencilplate;
	}
	if(data.isJdgly){
		if (role.indexOf(",ITMP_CJGLY") <0) {
			 $("#remove").hide();
		 }
	}
	var infos = nui.clone(data);
	entityVal=infos.entityVal;//数据实体
	var urlName = infos.urlName;//数据查询url
	var columnsVal = infos.columnscode;
	removeUrl = infos.removeUrl;
	recoveryUrl = infos.recoveryUrl;
	init(urlName,columnsVal);
	nui.parse();
    grid = nui.get("datagrid");
    var formData = new nui.Form("#form1").getData(false, false);
    formData["criteria/_entity"] = entityVal;
    formData["criteria/_expr[97]/jd"] = getCookie('jdid');
    formData["criteria/_expr[98]/jz"] = getCookie('jzid');
	if(data.pageflowName){
		formData["criteria/_expr[99]/funname"] = data.pageflowName;
		formData["criteria/_expr[96]/category"] = data.pageflowName;
	} else if(data.stencilplate){
    	formData["criteria/_expr[98]/stencilplate"] = data.stencilplate;
    }
    if(data.recyclebinFlag){
    	if(data.recyclebinFlag=="inspe"){//recyclebinFlag : "inspe",
    		formData["criteria/_orderby[2]/_property"] = "createtime";
			formData["criteria/_orderby[2]/_sort"] = "desc";
			formData["criteria/_orderby[3]/_property"] = "orderno";
			formData["criteria/_orderby[3]/_sort"] = "asc";
    	}else if(data.recyclebinFlag=="weld"){//recyclebinFlag : "weld",
    		formData["criteria/_orderby[2]/_property"] = "createtime";
			formData["criteria/_orderby[2]/_sort"] = "desc";
			formData["criteria/_orderby[3]/_property"] = "orderno";
			formData["criteria/_orderby[3]/_sort"] = "asc";
    	}else if(data.recyclebinFlag=="instree"){//recyclebinFlag : "instree",
    		formData["criteria/_orderby[2]/_property"] = "orderno";
			formData["criteria/_orderby[2]/_sort"] = "asc";
    	}else if(data.recyclebinFlag=="defected"){//recyclebinFlag : "defected",
    		formData["criteria/_orderby[2]/_property"] = "nullorder";
			formData["criteria/_orderby[2]/_sort"] = "desc";
			formData["criteria/_orderby[3]/_property"] = "defectdisplaynumber";
			formData["criteria/_orderby[3]/_sort"] = "asc";
    		formData["criteria/_orderby[4]/_property"] = "inserttime";
			formData["criteria/_orderby[4]/_sort"] = "desc";
			formData["criteria/_orderby[5]/_property"] = "createtime";
			formData["criteria/_orderby[5]/_sort"] = "asc";
    	}else if(data.recyclebinFlag=="base"){//recyclebinFlag : "base",
    		formData["criteria/_orderby[2]/_property"] = "createtime";
			formData["criteria/_orderby[2]/_sort"] = "desc";
    	}
    }else{
    	formData["criteria/_orderby[2]/_property"] = "createtime";
		formData["criteria/_orderby[2]/_sort"] = "desc";
		formData["criteria/_orderby[3]/_property"] = "orderno";
		formData["criteria/_orderby[3]/_sort"] = "asc";
    }
	grid.load(formData);
}

function renderCategory(e){
				return nui.getDictText("SJLB", e.value);
			}
function init(urlName,columnsVal) {
	var field=(entityVal.substr(entityVal.lastIndexOf(".")+1)+"s").toLowerCase();
	
	//动态创建表格
	var grid =new mini.DataGrid();
	grid.set({
        url:urlName,
        style:"width:100%;height:100%;",
        id:"datagrid",
//         class:"nui-datagrid",
        columns: columnsVal,
        multiSelect:true,
        allowResize:false,
        allowCellEdit:true,
        allowCellSelect:true,
        showPageIndex:true,
        allowRowSelect:true,
        showPager:true,
        editNextOnEnterKey:true,
        editNextRowCell:true,
        cellEditAction:"cellclick",
        pageSize:20,
       	sizeList:"[20,100,1000]",
        dataField:field,
//         onselectionchanged:"selectionChanged",
    });
    grid.render(document.getElementById("gridField"));
};
//彻底删除
function remove() {
	var rows = grid.getSelecteds();
	
	
	if (rows.length > 0) {
		nui.confirm(
			"确定<span style='color:red'>彻底删除</span>选中记录操作不可逆？",
			"系统提示",
			function(action) {
				if (action == "ok") {
					var json = nui.encode({data:rows,entity:entityVal});
					if(type==1){
						json = nui.encode({data:rows,entityname:entityVal,type:"delete"});
					}
					grid.loading("正在删除中,请稍等...");
					$.ajax({
						url : removeUrl,
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
							var returnJson = nui.decode(text);
	                        if(returnJson.exception == null){
	                            grid.reload();
	                            nui.alert("删除成功", "系统提示", function(action){
	                                });
	                            }else{
	                                grid.unmask();
	                                nui.alert("删除失败", "系统提示");
	                            }
						}
					});
				}
			});
	} else {
		nui.alert("请选中一条记录！");
	}
};
//恢复
function recovery() {
	var rows = grid.getSelecteds();
	if (rows.length > 0) {
		nui.confirm(
			"确定恢复选中记录？",
			"系统提示",
			function(action) {
				if (action == "ok") {
					rows[0].isdelete="0";
					var json = nui.encode({data:rows,entity:entityVal});
					if(type==1){
						json = nui.encode({data:rows,entityname:entityVal,type:"recovery"});
					}
					grid.loading("正在恢复中,请稍等...");
					$.ajax({
						url : recoveryUrl,
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
							var returnJson = nui.decode(text);
	                        if(returnJson.exception == null){
	                            grid.reload();
	                            nui.alert("恢复成功", "系统提示", function(action){
	                                });
	                            }else{
	                                grid.unmask();
	                                nui.alert("恢复失败", "系统提示");
	                            }
						}
					});
				}
			});
	} else {
		nui.alert("请选中一条记录！");
	}
}
    //附件初始化
		function setFile(e) {
			var fileRealName = e.record.fj;
			var fileId = e.record.fileid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + fileId + '" >' + fileRealName + '</a>';
			return html;
		}
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
</script>

</html>