<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): jirukang
  - Date: 2019-12-03 13:46:40
  - Description:
-->
<head>
<title>工艺评定报告号选择</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    <style type="text/css">
    html,body{
    	height: 97%;
    }
    </style>
</head>
<body>
 <div style="width: 100%;height: 98%;">
 	<div class="nui-toolbar" style="text-align:center;line-height:30px;background: white!important;" borderStyle="border:0;">
          <label >工艺评定报告号：</label>
          <input id="key" class="nui-textbox" style="width:150px;" onenter="onKeyEnter"/>
          <a class="nui-button" onclick="searchs()">查询</a>
          <a class="nui-button" onclick="reset()">重置</a>
    </div>
    <div class="nui-fit" >

        <div id="grid1" class="nui-datagrid" style="width:100%;height:100%;" 
        onrowdblclick="onRowDblClick" allowResize="true" url="com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getProcessAssessRep.biz.ext"
         sortField="name" sortOrder="asc" idField="id" showPager="false" dataField="jsonObject"
            multiSelect="true" 
        >
            <div property="columns">
            	<div type="indexcolumn" headerAlign="center" width="30">序号</div>
                <div type="checkcolumn" headerAlign="center" ></div>
                <div field="id" width="120" headerAlign="center" allowSort="true" visible="false">ID</div>    
                <div field="name" width="100%" headerAlign="center" allowSort="true">工艺评定报告号</div>  
                <div field="edition" width="100%" headerAlign="center" allowSort="true">版本</div>  
                <div field="assessmentunit" width="120" headerAlign="center" allowSort="true">评定单位</div>  
                <div field="joint" width="100%" headerAlign="center" allowSort="true">接头形式</div>  
                <div field="method" width="100%" headerAlign="center" allowSort="true">焊接方法</div>  
                <div field="position" width="100%" headerAlign="center" allowSort="true">评定位置</div>  
                <div field="specifications" width="100%" headerAlign="center" allowSort="true">规格</div>  
<!--                 <div field="createtime" width="100" headerAlign="center" dateFormat="yyyy-MM-dd" allowSort="true">创建日期</div>                 -->
            </div>
        </div>
    </div>                
    <div class="nui-toolbar" style="text-align:center;background: white!important;" borderStyle="border:0;">
        <a class="nui-button" onclick="onOk()">确定</a>
        <span style="display:inline-block;width:25px;"></span>
        <a class="nui-button" onclick="onCancel()">关闭</a>
    </div>
 </div>

	<script type="text/javascript">
    	nui.parse();
    	var jdid=getCookie("jdid");
    	var grid = nui.get("grid1");
		var name=nui.get("key").getValue();
    //也可以动态设置列 grid.setColumns([]);
		var json={};
		json.base=jdid;
		json.name=nui.get("key").value;
    	grid.load(json);


    ////////////////////////////////////////////////////////////////////////////////

    grid.on("load", function (e) {

        if (firstLoad) {
            firstLoad = false;
            if (initIds) {
                selectRowsByIds(initIds);
            }
        }
    });

    var firstLoad = true;
    var initIds;                   //存放初始数据id，这个作为选中数据。

    function selectRowsByIds(ids) {
        if (ids) {
            var rows = [];
            for (var i = 0, l = ids.length; i < l; i++) {
                var o = grid.getRow(ids[i]);
                if (o) rows.push(o);
            }
            grid.selects(rows);
        }
    }

    function SetData(ids) {
        if (typeof ids == "string") {
            ids = ids.split(",");     //"1,2" => [1, 2]
        }
        initIds = ids;
    }

    function GetSelecteds() {
        var rows = grid.getSelecteds();
        return rows;
    }
    function GetData() {    
        var rows = grid.getSelecteds();
        var ids = [], texts = [];
        for (var i = 0, l = rows.length; i < l; i++) {
            var row = rows[i];
            ids.push(row.id);
            texts.push(row.name);
        }
        var data = {};
        data.id = ids.join(",");
        data.text = texts.join(",");
        return data;
    }

	 function onRowDblClick(e) {
        onOk();
    }
	
	function reset(){
		nui.get("key").setValue("");
		searchs();
	}
    function searchs() {
        var key = nui.get("key").getValue();
        	var json={};
			json.base=jdid;
			json.name=key;
        	grid.load(json);
        
    }
    function onKeyEnter(e) {
        searchs();
    }
    function CloseWindow(action) {
        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
        else window.close();
    }

    function onOk() {
        CloseWindow("ok");
    }
    function onCancel() {
        CloseWindow("cancel");
    }
    </script>
</body>
</html>