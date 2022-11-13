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
<title>焊接工艺卡 - 弹出框</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    <style type="text/css">
    html,body{
    	height: 97%;
    }
	.welderadd .mini-grid-columns-view *{
 		margin-left: -0px; 
	}
	.mini-grid-table tr td{
		text-align: center;
	}
    </style>
</head>
<body>
 <div style="width: 100%;height: 98%;">
 	<div class="nui-toolbar" style="text-align:left;line-height:30px;background: white!important;" borderStyle="border:0;">
          <label >焊接方法：</label>
          <input id="key" class="nui-textbox" style="width:150px;margin-right: 10px" onenter="onKeyEnter"/>
          <a class="nui-button" onclick="searchs()">查询</a>
          <span style="display:inline-block;width:10px;"></span>
          <a class="nui-button" onclick="reset()">重置</a>
    </div>
    <div class="nui-fit" >

        <div id="grid1" class="nui-datagrid welderadd" style="width:100%;height:100%;" 
        onrowdblclick="onRowDblClick" allowResize="true" url="com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getProcessCard.biz.ext"
         idField="card_number" showPager="false" dataField="jsonObject">
           <div property="columns">
					<div type="indexcolumn" headerAlign="center">序号</div>
					<div field="card_number" headerAlign="center" allowSort="true">
						WPS编号</div>
					<div field="edition" headerAlign="center" allowSort="true">
						版本</div>
					<div field="welding_method"  headerAlign="center" allowSort="true">
						焊接方法</div>
				</div>
        </div>
    </div>                
    <div class="nui-toolbar" style="text-align:center;background: white!important;" borderStyle="border:0;">
        <a class="nui-button" onclick="onOk()">确定</a>
        <span style="display:inline-block;width:10px;"></span>
        <a class="nui-button" onclick="onCancel()">关闭</a>
    </div>
 </div>

	<script type="text/javascript">
    	nui.parse();
    	var jdid=getCookie("jdid");
    	var grid = nui.get("grid1");
		var name=nui.get("key").getValue();
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
        var rows = grid.getSelected();
       /*  var ids = [], ids = [];
        for (var i = 0, l = rows.length; i < l; i++) {
            var row = rows[i];
            
            ids.push(row.card_number);
            texts.push(row.name);
        } */
        var data = {};
        data.cardNumber = rows.card_number;
        data.edition = rows.edition;
        data.weldingMethod = rows.welding_method;
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