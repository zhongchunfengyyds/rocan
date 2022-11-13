<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page pageEncoding="UTF-8"%>
<%@page import="com.eos.system.utility.StringUtil"%>
<%@include file="/common/common.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 
  - Author(s): 陈鹏
  - Date: 2013-11-28 10:21:23
  - Description:
-->
<head>
<title>业务字典配置</title>
<%--  <link href="<%= request.getContextPath() %>/common/layout/css/docs.min.css" rel="stylesheet"></link> --%>
<%--  <link href="<%= request.getContextPath() %>/common/layout/css/cuc.css" rel="stylesheet"></link> --%>
<%--  <link href="<%= request.getContextPath() %>/common/layout/css/apply.css" rel="stylesheet"></link> --%>
<%--  <link href="<%= request.getContextPath() %>/common/layout/css/font-awesome.min.css" rel="stylesheet"></link> --%>
<!--[if gt IE 6]>
<style type="text/css">
  	#dict_file {
  		width:200px !important;
  	}
</style>
<![endif]-->
<style type="text/css">
/*业务字典页面弹出框的title和header样式开始*/
/* .btn{ */
/*       width:80px;  */
/*       margin-left: 1px; */
/*       } */
.mini-panel-header
{
    width:auto;
    height:35px;
    overflow:hidden;
    background:#f7f7f7 ;
    color:#201F35;
    border-bottom:solid 1px #bbb;
    cursor:default;
    position:relative;
    zoom:1;
}
.mini-panel-footer
{
    background:#f7f7f7;
}
.mini-panel-header-inner
{	
    padding:3px;
    padding-bottom:2px;
    padding-top:8px;
    padding-left:8px;
}
.mini-panel .mini-panel-title
{
    padding-top:0px\9;
    float:left;
    line-height:16px;
    line-height:18px\9;
    font-weight:700;
    font-size:14px    
}
.mini-window .mini-panel-header
{
    background:#f7f7f7 ;    
}
.mini-window .mini-panel-footer
{
    background:#f7f7f7;
}
.mini-panel-header{
	    
}
.btn-xs, .btn-group-xs > .btn {
    padding: 1px 1px !important; 
    }
/*业务字典页面弹出框的title和header样式结束*/
td{    font-size: 12px;}
</style>
 <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
</head>
<body style="margin:0px;height:100%;">
 
<table border="0" style="width:100%;height:100%;">
<tr>
<td style="width:60%;height:100%;" valign="top">
	<div class="nui-fit">
	<div class="nui-panel mini-panel-header" title="业务字典类型" style="width:100%;height:100%;"
	    showToolbar="false" showCollapseButton="false" showFooter="false" allowResize="false">
	    
		<div class="search-condition" style="height:48px;" id= "form1">
		<form id="query_dict_type_form" method="post">
		<table border="0" style="width:100%; font-size:18px;" align="center" >
			<tr>
				<td align="right" >类型代码：</td>
				<td><input id="dicttypeid" name="dicttypeid" class="nui-textbox"  type="text"  style="width:100px;" onenter="onKeyEnter"/></td>
				<td align="right" >类型名称：</td>
				<td><input id="dicttypename" name="dicttypename" class="nui-textbox"  style="width:100px;" onenter="onKeyEnter"/></td>
				<td><button class="nui-button btn btn-default btn-xs" type="button" onclick="searchDictType()">查询</button></td>
				<td><button class="nui-button btn btn-default btn-xs" type="button" onclick="reset()">重置</button></td>
				
				
			</tr>
			<tr height="3px;"><td colspan="2"></td></tr>
		</table>
		</form>
		</div>
		
	  <div style="margin:10px 0px 0px 0px;">
	    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
	      <table style="width:100%;">
	        <tr>
	           <td style="width:100%;">
			<a class="btn btn-default btn-xs" plain="true" onclick="addDictType()" >添加</a>
			<button class="btn btn-default btn-xs" plain="true" onclick="addSubDictType()" disabled="disabled"  id="btn_addSubDictType">添加子类型</button>
	        <button class="btn btn-default btn-xs" plain="true" onclick="editDictType()" disabled="disabled"  id="btn_editDictType">修改</button>
            <button class="btn btn-default btn-xs" plain="true"  onclick="removeDictType()" disabled="disabled"  id="btn_removeDictType">删除</button>
			<a class="btn btn-default btn-xs" plain="true"  onclick="importDict();">导入</a>
			<a class="btn btn-default btn-xs" plain="true" onclick="exportDict();">导出</a>
			<a class="btn btn-default btn-xs" plain="true" onclick="refreshDictCache();">刷新缓存</a>
	           </td>
	        </tr>
	      </table>
	    </div>
	  </div>
	    
	  <div class="nui-fit">
	    <div id="dict_type_tg" class="nui-treegrid" showLoading="false" style="width:100%;height:100%;"
		    showPager="true" pageSize="20" sizeList="[20,100,1000]" sizeList="[10,20,50]" allowAlternating="true" multiSelect="true"
		    url="org.gocom.components.coframe.dict.DictManager.queryDictType.biz.ext" showLoading="false"
			onselectionchanged="onDictTypeSelected" ondrawnode="onDictTypeDrawNode" onload="onDictTypeLoad"
		    dataField="data" idField="dicttypeid" treeColumn="dicttypeid">
		    <div property="columns" width="20">
		        <div type="checkcolumn" ></div>
		        <div name="dicttypeid" field="dicttypeid" allowSort="true" width="50%">类型代码</div>
		        <div field="dicttypename" allowSort="true" width="50%">类型名称</div>
		    </div>
		</div>
	  </div>
		
	</div>
	</div>
</td>
<td style="height:100%;" rowspan="2" valign="top">
	<div class="nui-fit">
	<div class="nui-panel" title="业务字典项" style="width:100%;height:100%;"
	    showToolbar="true" showCollapseButton="false" showFooter="false" allowResize="false" >
		<div property="toolbar"  style="height: 31px; padding-top: 5px;" >
	        <a class="btn btn-default btn-xs" plain="true"  onclick="addDict()">添加</a>
			<button class="btn btn-default btn-xs" plain="true"  onclick="addSubDict()" disabled="disabled"  id="btn_addSubDict">添加子项</button>
	        <button class="btn btn-default btn-xs" plain="true" onclick="editDict()" disabled="disabled"  id="btn_editDict">修改</button>
            <button class="btn btn-default btn-xs" plain="true"  onclick="removeDict()" disabled="disabled"  id="btn_removeDict">删除</button>
	    </div>
	    
	    <div id="dict_tg" class="nui-treegrid" style="width:100%;height:100%;" autoLoad="false"
	    	 showPager="true" pageSize="15" sizeList="[15,25,50]" allowAlternating="true" multiSelect="true"
		    url="org.gocom.components.coframe.dict.DictManager.queryDict.biz.ext" onbeforeload="onBeforeTreeLoad" 
		    onselectionchanged="onDictSelected"  ondrawnode="onDictDrawNode" onnodeclick="onDictNodeClick"
		    dataField="data" idField="dictid" treeColumn="dictid">
		    <div property="columns">
		        <div type="checkcolumn" ></div>
		        <div name="dictid" field="dictid" allowSort="true" width="40%">字典项代码</div>
		        <div field="dictname" allowSort="true" width="45%">字典项名称</div>
		        <div field="sortno" allowSort="true" width="15%">排序</div>
		    </div>
		</div>
	    
	</div>
	</div>
</td>
</tr>
</table>

<div id="importWindow" class="nui-window" title="Window" style="width:650px;" 
    showModal="true" allowResize="true" allowDrag="true">    
    <div title="业务字典导入" >
    	<form id="import_dict_form" action="org.gocom.components.coframe.dict.impl.importDict.flow?_eosFlowAction=importDict" method="post" enctype="multipart/form-data">
        <table border="0" style="width:500px;height:100px;" align="center">
			<tr>
				<td width="35%" align="right">请选择您要导入的Excel文件:</td>
				<td><span id="uploadSpan">
				<input type="file" id="dict_file" name="dict_file" size="60" accept="application/vnd.ms-excel" style="width:300px;"/>
				<!--<button class="btn btn-default" type="file">选择文件</button>-->
				</span></td>
			</tr>
			<tr>
				<td colspan="2">注：导入时将根据主键匹配覆盖已存在的数据。</td>
			</tr>
			<tr align="center">
				<td colspan="2">
				<button class="btn btn-second" onclick="startUpload();">导入</span></button>
				<button class="btn btn-second" onclick="resetImport();">重置</span></button>
				<button class="btn btn-second" onclick="cancelImport();return false;">取消</span></button>
					<!-- a class="nui-button" onclick="startUpload();">导入</a>&nbsp; -->
					<!--  a class="nui-button" onclick="resetImport();">重置</a>&nbsp;-->
					<!-- a class="nui-button" onclick="cancelImport();">取消</a> -->
				</td>
			</tr>
        </table>
        </form>
    </div>
</div>

</body>
</html>

<script type="text/javascript">
	nui.parse();
	
	var dict_type_tg = nui.get("dict_type_tg");
	var dict_tg = nui.get("dict_tg");
	var seldicttypeid;
	var selectedDictType;//类型多选标志
	var selectedDict;	//子项多选标志
	var seldictid;
	var importWindow = nui.get("importWindow");
	
	function onKeyEnter(e) {
		searchDictType();
	}
	function searchDictType() {
        var dicttypeid = nui.get("dicttypeid").getValue();
        var dicttypename = nui.get("dicttypename").getValue();
        dict_type_tg.load({ id: dicttypeid, name: dicttypename});
        seldicttypeid = null;
        selectedDictType = null
        selectedDict = null;
        seldictid = null;
    }
    //重置查询条件
    function reset(){
        var form = new nui.Form("#query_dict_type_form");//将普通form转为nui的form
        form.reset();
    }
    function importDict() {
    	resetImport();        
       	importWindow.show();
    }
    function exportDict() {        
        var form = document.getElementById("query_dict_type_form");
		form.action = "org.gocom.components.coframe.dict.impl.exportDict.flow";
        form.submit();
    }
    function resetQuery() {
    	var form = new nui.Form("query_dict_type_form");
    	form.reset();
    }
    function refreshDictCache(){
    	nui.ajax({
			url: "org.gocom.components.coframe.dict.DictManager.refreshDictCache.biz.ext",
			type: "post",
			cache: false,
			contentType: 'text/json',
			success: function (json) {
				if(json.status == 'success'){
				nui.alert("刷新缓存成功！");
			}
			else nui.alert("刷新缓存失败！");
			},
			error: function () {
				nui.alert("刷新缓存失败！");
			}
		});
    }
    function onDictTypeSelected(e) {
        var grid = e.sender;
		
        dict_tg.clearData();
        seldicttypeid = null;
        selectedDictType = null;
        selectedDict = null;
        seldictid = null;
        
        var rows = grid.getSelecteds();
        if(rows.length>1){
        	var btn_addSubDictType = $("#btn_addSubDictType");
 			btn_addSubDictType.attr("disabled", true);
 			var btn_editDictType = $("#btn_editDictType");
 			btn_editDictType.attr("disabled", true);
 			var btn_removeDictType = $("#btn_removeDictType");
 			btn_removeDictType.attr("disabled", false);
            //nui.get("btn_addSubDictType").disable();
            //nui.get("btn_editDictType").disable();
            //nui.get("btn_removeDictType").enable();
            selectedDictType = 1;
        }else if(rows.length==1){
        	var btn_addSubDictType = $("#btn_addSubDictType");
 			btn_addSubDictType.attr("disabled", false);
 			var btn_editDictType = $("#btn_editDictType");
 			btn_editDictType.attr("disabled", false);
 			var btn_removeDictType = $("#btn_removeDictType");
 			btn_removeDictType.attr("disabled", false);
            //nui.get("btn_addSubDictType").enable();
            //nui.get("btn_editDictType").enable();
            //nui.get("btn_removeDictType").enable();
            
            var record = grid.getSelected();
	        dict_tg.load({ dicttypeid: record.dicttypeid });
	        seldicttypeid = record.dicttypeid;
	        selectedDictType = record.dicttypeid;
        }else{
        	var btn_addSubDictType = $("#btn_addSubDictType");
 			btn_addSubDictType.attr("disabled", true);
 			var btn_editDictType = $("#btn_editDictType");
 			btn_editDictType.attr("disabled", true);
 			var btn_removeDictType = $("#btn_removeDictType");
 			btn_removeDictType.attr("disabled", true);
            //nui.get("btn_addSubDictType").disable();
            //nui.get("btn_editDictType").disable();
            //nui.get("btn_removeDictType").disable();
        }
    }
	function onDictTypeDrawNode(e){//节点加载完清空参数，避免影响查询和翻页
		dict_type_tg._dataSource.loadParams.dicttypeid = null;
	}
	function onDictTypeLoad(e){//加载第一个类型的字典项
		nui.parse();		
		seldicttypeid = null;
		selectedDictType = null;
		selectedDict = null;
        seldictid = null;
		if(e.data[0] != null) {
			var grid = e.sender;
			if (grid.getSelecteds().length==0 )
				grid.select(grid.getRow(0));
		}else
			nui.get("dict_tg").clearData();
	}
	function checkDictTypeSelected() {
		if(seldicttypeid == null){
			nui.alert("请先选择一条业务字典类型记录！");
			return false;
		}
		else return true;
	}
    function addDictType() {
		nui.open({
			url: "<%=contextPath%>/coframe/dict/edit_dict_type.jsp",
			title: "添加字典类型", width: 400, height: 280,
			onload: function () {
				var iframe = this.getIFrameEl();
				var data = {action:"add"};
				iframe.contentWindow.loadForm(data);
			},
			ondestroy: function (action) {
				if (action=="ok")
				dict_type_tg.reload();
			}
		});
    }
    function addSubDictType() {
		if(checkDictTypeSelected()){
			nui.open({
				url: "<%=contextPath%>/coframe/dict/edit_dict_type.jsp",
				title: "添加子类型", width: 400, height: 280,
				onload: function () {
					var iframe = this.getIFrameEl();
					var parent = dict_type_tg.getSelected();
					var data = {rank:parent.rank, parentid:parent.dicttypeid, seqno:parent.seqno};
					data.action = 'add';
					iframe.contentWindow.loadForm(data);
				},
				ondestroy: function (action) {
					if (action=="ok")
					dict_type_tg.reload();
				}
			});
		}
    }
    function editDictType() {
    	var rows = dict_type_tg.getSelecteds();
    	if(rows && rows.length!=1){
    		alert("请先选择一条业务字典项记录！");
    		return;
    	}
    	if(checkDictTypeSelected()){
			nui.open({
				url: "<%=contextPath%>/coframe/dict/edit_dict_type.jsp",
				title: "修改字典类型", width: 400, height: 280,
				onload: function () {
					var iframe = this.getIFrameEl();
					var data = nui.clone(dict_type_tg.getSelected());
					data.action = 'edit';
					iframe.contentWindow.loadForm(data);
				},
				ondestroy: function (action) {
					if (action=="ok")
					dict_type_tg.reload();
				}
			});
		}
    }
    //
    function checkDictTypeSelected4Remove(){
    	if(selectedDictType == null){
			nui.alert("请先选择一条业务字典类型记录！");
			return false;
		}
		else return true;
    }
    function removeDictType() {
	    if(checkDictTypeSelected4Remove()){
	    	var rows = dict_type_tg.getSelecteds();
	    	
	    	nui.confirm("所有关联的业务字典类型和业务字典项都将被删除，确认删除业务字典类型？","", function(action){
	    		if(action == 'ok'){
					nui.ajax({
						url: "org.gocom.components.coframe.dict.DictManager.removeDictType.biz.ext",
						type: "post",
						data: nui.encode({data:rows}),
						cache: false,
						contentType: 'text/json',
						success: function (json) {
							if(json.status == 'success'){
								selectedDictType = null;
								dict_tg.clearData();
								dict_type_tg.reload();			
								nui.alert("删除成功！");					
							}
							else nui.alert("删除失败！");
						},
						error: function () {
							nui.alert("删除失败！");
						}
					});
				}
			});
	    }
    }
    
    function onDictSelected(e) {
        var grid = e.sender;
        
        seldictid = null;
        selectedDict = null;
        
        var rows = grid.getSelecteds();
        var rows_2 = dict_type_tg.getSelecteds();
        if(rows.length>1){
            //nui.get("btn_addSubDict").disable();
            var btn_editDict = $("#btn_editDict");
 			btn_editDict.attr("disabled", true);
 			var btn_removeDict = $("#btn_removeDict");
 			btn_removeDict.attr("disabled", false);
 			var btn_addSubDict = $("#btn_addSubDict");
 			btn_addSubDict.attr("disabled", true);
            //nui.get("btn_editDict").disable();
            //nui.get("btn_removeDict").enable();
            selectedDict = 1;
        }else if(rows.length==1){
            //nui.get("btn_addSubDict").enable();
            var btn_editDict = $("#btn_editDict");
 			btn_editDict.attr("disabled", false);
 			var btn_removeDict = $("#btn_removeDict");
 			btn_removeDict.attr("disabled", false);
 			var btn_addSubDict = $("#btn_addSubDict");
 			btn_addSubDict.attr("disabled",false);
            //nui.get("btn_editDict").enable();
            //nui.get("btn_removeDict").enable();
            //alert(nui.encode(dict_type_tg.getSelecteds()));//ok，可以获取----------------------------------------
            seldictid = grid.getSelected().dictid;
            selectedDict = grid.getSelected().dictid;
        }else{
            //nui.get("btn_addSubDict").disable();
            var btn_editDict = $("#btn_editDict");
 			btn_editDict.attr("disabled", true);
 			var btn_removeDict = $("#btn_removeDict");
 			btn_removeDict.attr("disabled", true);
 			var btn_addSubDict = $("#btn_addSubDict");
 			btn_addSubDict.attr("disabled",true);
            //nui.get("btn_editDict").disable();
            //nui.get("btn_removeDict").disable();
        }
          
    }
    function onDictDrawNode(e) {//节点加载完清空参数，避免影响查询和翻页
	    dict_tg._dataSource.loadParams.dictid = null;
	    dict_tg._dataSource.loadParams.parenttypeid = null;
    }
    function onDictNodeClick(e) {
	    dict_tg._dataSource.loadParams.parenttypeid = e.node.eosDictType.dicttypeid;
    }
	function onBeforeTreeLoad (e) {
    	if (e.node&&e.node.eosDictType) 
			dict_tg._dataSource.loadParams.parenttypeid = e.node.eosDictType.dicttypeid.toString();
	}
    
    
    function checkDictSelected() {
		if(seldictid == null){
			nui.alert("请先选择一条业务字典项记录！");
			return false;
		}
		else return true;
	}
    function addDict() {
    	if(checkDictTypeSelected()){
			nui.open({
				url: "<%=contextPath%>/coframe/dict/edit_dict.jsp",
			title: "添加字典项", width: 400, height: 380,
				onload: function () {
					var iframe = this.getIFrameEl();
			
					var data = {action:"add"};
					data.eosDictType = dict_type_tg.getSelected();
					//iframe.contentWindow.loadFormDictType(data_type);
					iframe.contentWindow.loadForm(data);
				},
				ondestroy: function (action) {
					if (action=="ok")
					dict_tg.reload();
				}
			});
		}
    }
    function addSubDict() {
		if(checkDictSelected()){
			nui.open({
				url: "<%=contextPath%>/coframe/dict/edit_dict.jsp",
				title: "添加子项", width: 400, height: 380,
				onload: function () {
					var iframe = this.getIFrameEl();
					var parent = dict_tg.getSelected();
					var data = {rank:parent.rank, parentid:parent.dictid, seqno:parent.seqno};
					data.action = 'add';
					data.parentdicttypeid = parent.eosDictType.dicttypeid;
					iframe.contentWindow.loadForm(data);
				},
				ondestroy: function (action) {
					if (action=="ok")
					dict_tg.reload();
				}
			});
		}
    }
    function editDict() {
    	if(checkDictSelected()){
			nui.open({
				url: "<%=contextPath%>/coframe/dict/edit_dict.jsp",
				title: "修改字典项", width: 400, height: 380,
				onload: function () {
					var iframe = this.getIFrameEl();
					var data = nui.clone(dict_tg.getSelected());
					data.action = 'edit';
					iframe.contentWindow.loadForm(data);
				},
				ondestroy: function (action) {
					if (action=="ok")
					dict_tg.reload();
				}
			});
		}
    }
    //检查字典项多选的方法
    function checkDictSelected4Remove(){
    	if(selectedDict == null){
			nui.alert("请先选择一条业务字典项记录！");
			return false;
		}
		else return true;
    }
    function removeDict() {
	    if(checkDictSelected4Remove()){
	    	var rows = dict_tg.getSelecteds();

	    	nui.confirm("所有关联的业务字典项都将被删除，确认删除业务字典项？","", function(action){
	    		if(action == 'ok'){
					nui.ajax({
						url: "org.gocom.components.coframe.dict.DictManager.removeDict.biz.ext",
						type: "post",
						data: nui.encode({data:rows}),
						cache: false,
						contentType: 'text/json',
						success: function (json) {
							if(json.status == 'success'){
								selectedDict = null;
								dict_tg.reload();
								nui.alert("删除成功！");	
							}
							else nui.alert("删除失败！");
						},
						error: function () {
							nui.alert("删除失败！");
						}
					});
				}
			});
	    }
    }
	
	function startUpload() {
        var form = $("#import_dict_form");
        var file = $("#dict_file").val();
        
        if (file == "") {
			nui.alert("请选择文件！");
			return;
		}
		var reg = /.xls$/;
		if (!reg.test(file))
		{
			nui.alert('请选择Excel格式(*.xls)文件！');
			return;
		}
		form.submit();
    }
    function resetImport() {
		var html=document.getElementById('uploadSpan').innerHTML; 
		document.getElementById('uploadSpan').innerHTML=html; 
    }
    /* var importfile = true; */
    function cancelImport() {
    	/* e.preventDefault(); */
    	/* importfile = false; */
    	importWindow.hide();
    	/* return false; */
    	/* alert(importfile); */
    }
    
    var retcode = '<%= StringUtil.htmlFilter(request.getAttribute("retCode")==null?"":request.getAttribute("retCode").toString()) %>';
	    if(retcode != ""){
	        if(retcode == -1){
	        	nui.alert('导入失败！');
	        }else{
	        	nui.alert('导入成功！');
	        }
	    }
</script>