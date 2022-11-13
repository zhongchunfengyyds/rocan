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
            	审查记录
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
</script>
<style type="text/css">
.mini-pager-reload{
	display: none;
}
</style>
<script src="<%= request.getContextPath()%>/js/jquery/jquery-1.9.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
	
</head>

<body style="background-color: #f1f1f1; overflow: scroll; height: 100%;"  >
<h2 id="title"></h2>
<div class="bs-docs-section" style="height:100%;">

	
		<div class="nui-fit" style="height:30%"   id="gridField">
                
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
//防止弹框
miniui_debugger = false;
function setData(data) {
var infos=data;
	pageType=data.pageType;
	entityVal=infos.entityVal;//数据实体
	var urlName = infos.urlName;//数据查询url
	var columnsVal = infos.columnscode;
	init(urlName,columnsVal);
	queryList(data);
}
function init(urlName,columnsVal) {
var cols=$.extend(true,[{}],columnsVal);
var a={field:'result',header:'审查结果', width:100, headerAlign:"center", allowSort:true,editor: { type: "textbox", minValue: 0, maxValue: 200, value: 25}};
 	//添加
	cols.push(a);
	a={field:'remark',header:'审查备注', width:100, headerAlign:"center", allowSort:true,editor: { type: "textbox", minValue: 0, maxValue: 200, value: 25}};
	cols.push(a);
	
	var field=(entityVal.substr(entityVal.lastIndexOf(".")+1)+"s").toLowerCase();
	//动态创建表格
	var grid =new nui.DataGrid();
	grid.set({
        url:"",
        style:"width:100%;height:100%;",
        id:"datagrid",
        columns: cols,
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
        dataField:"data",
        cellEdit: true
    });
    grid.render(document.getElementById("gridField"));
};


    //公共代码转换
    function xbRenderer(e) {
    if (e.value == "YGQ" || e.value == "YCX" || e.value == "YZT") {
            e.rowStyle = 'color:red';
        }
        return nui.getDictText(e.column.dic,e.value);
    }

  
  function queryList(data){
  var json=nui.encode({id:data.id,relationType:data.pageType,jd:jdid});
   nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.Common.queryList.biz.ext",
                type: 'POST',
                data: json,
                success: function (text){
                gird=nui.get("datagrid");
				gird.setData(text.data);          	
                }
               });
  }

 //设置附件连接
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
    //点击附件下载
    function load(fileId) {
        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="
            + fileId;
    }


		
</script>

</html>