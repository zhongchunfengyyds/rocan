<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-15 12:31:12
- Description:
    --%>
<head>
    <!-- <title>
        TdDxglJddict查询
    </title> -->
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css"/>
    <style>
    body table td *{
    	text-align: center;
    }
    .mini-panel-header{
    	background:none!important;
    	background-color:#f7f7f9!important;
    }
    .mini-panel .mini-panel-viewport {
    	background-color: #f1f1f1;
    }
    .mini-grid-rows-view{
    	background-color: white;
    }
    </style>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
</head>
<body style="width:98%;height:98%;margin:0 auto;">
<div class="nui-form" showToolbar="false" showFooter="true">
    <div id="form1" class="nui-form" align="center" style="height:100%">
        <!-- 数据实体的名称 -->
        <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.systemset.BaseMgt.BaseMgtSearch">
        <!-- 排序字段 -->
        <div id="table1">
             <div class="row" style="width:95%;margin:10px 0 0;">
            <div class="input-control" style="float:left;margin:0 50px 0 0;">
             <div class="form-group">
                <label>基地:</label>
                        <input class="nui-combobox" dataField="jsonObject" name="criteria/_expr[1]/id"
                               textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
                               valueField="id" emptyText="请选择"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
              </div>
            </div>
            <div class="input-control" style="float:right;">
                             <a class="nui-button btn btn-default btn-xs" onclick="search()">
				                查询
				            </a>
				            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
				                重置
				            </a>
             </div>
           </div>
        </div>      
            <input class="nui-hidden" name="criteria/_expr[2]/isdelete" value="0"/>
            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
        </div>
    </div>

<div class="nui-panel" style="background-color:#f1f1f1;width:100%;height:94%;" showToolbar="false" showFooter="false">
    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
        <table style="width:100%;">
            <tr>
                <td style="width:100%;">
                    <a class="nui-button btn btn-default btn-xs" onclick="add()">
                        新增
                    </a>
                    <a id="update" class="nui-button btn btn-default btn-xs" onclick="edit()">
                        修改
                    </a>
                    <a class="nui-button btn btn-default btn-xs" onclick="remove()">
                        删除
                    </a>
                    <a class="nui-button btn btn-default btn-xs" onclick="recycle()">
                       回收站
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <div class="nui-fit">
        <div id="datagrid1" dataField="tddxgljddicts" class="nui-datagrid" allowAlternating="true"
             style="width:100%;height:100%;" url="com.cgn.itmp.systemset.BaseMgt.queryTdDxglJddicts.biz.ext"
             pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true" onselectionchanged="selectionChanged"
             allowSortColumn="false">
            <div property="columns">
                <div type="indexcolumn">
                </div>
                <div type="checkcolumn">
                </div>
                <div field="id" headerAlign="center" allowSort="true" visible="false">
                    id
                </div>
                <div field="jdname" headerAlign="center" allowSort="true">
                    基地
                </div>
                   <div field="jzname" headerAlign="center" allowSort="true" >
                     基组
                 </div> 
                 <div field="jzname" headerAlign="center" allowSort="true" >
                     基组
                 </div> 
               <!-- <div field="type" headerAlign="center" allowSort="true">
                   蒸发器型号
                </div>-->
                <!--   <div field="ord" align="left" headerAlign="center"  headerAlign="center" allowSort="true" width="5%" >
                    排序
                 </div> -->
                <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                    isdelete
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    nui.parse();
    var grid = nui.get("datagrid1");
     doSearch();
	//根据角色查询数据
	function doSearch(){
		 
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		
		if(isadmin != "true"){
			var jdArray = getCookie('jdArray');
			var jdManagerArray=jdArray.split(",");
			var queryJ = "";
			for(var i =0;i<jdManagerArray.length;i++){
				if(i>0)queryJ+=",";
				queryJ += '"criteria/_or[1]/_expr['+ (i+3) +']/_op":"="';
				queryJ += ',"criteria/_or[1]/_expr['+ (i+3) +']/'+ "jdname" +  '":"'+jdManagerArray[i]+'"';
			}
			var json = new nui.Form("#form1").getData(false, false);
		    var jsonstr = nui.encode(json);
		    var str = jsonstr.substr(0,jsonstr.length-1);
		    if(queryJ != '')str += ","+queryJ;
		    str = nui.decode(str+"}");
		    grid.load(nui.decode(str));//grid查询
		}else{
		    var formData = new nui.Form("#form1").getData(false, false);
	  	    grid.load(formData);
		}
		
	}
	    
   // var formData = new nui.Form("#form1").getData(false, false);
  //  grid.load(formData);

    //新增
    function add() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/systemset/BaseMgt/BaseMgtForm.jsp",
            title: "新增记录", width: 700, height: 400,
            onload: function () {
            },
            ondestroy: function (action) {//弹出页面关闭前
                if (action == "saveSuccess") {
                   // grid.reload();
                     doSearch();
                }
            }
        });
    }

    //回收站页面
    function recycle() {
        nui.open({
            showMaxButton: true,//
            url: "/itmp/systemset/BaseMgt/BaseMgtRecycle.jsp",
            title: "回收站", width: 600, height: 400,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {pageType: "add"};//传入页面的json数据
                iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                //grid.reload();
                  doSearch();
            }
        });
    }

    //编辑
    function edit() {
        var row = grid.getSelected();
        if (row) {
            nui.open({
                showMaxButton: true,
                url: "/itmp/systemset/BaseMgt/BaseMgtEdit.jsp",
                title: "编辑数据",
                width: 700,
                height: 400,
                onload: function () {
                    var iframe = this.getIFrameEl();
                    var data = row;
                    //直接从页面获取，不用去后台获取
                    iframe.contentWindow.setData(data);
                },
                ondestroy: function (action) {
                    if (action == "saveSuccess") {
                       // grid.reload();
                         doSearch();
                    }
                }
            });
        } else {
            nui.alert("请选中一条记录", "提示");
        }
    }

    //删除
    function remove() {
        var rows = grid.getSelecteds();
        if (rows.length > 0) {
            nui.confirm("确定删除选中记录？", "系统提示",
                function (action) {
                    if (action == "ok") {
                        var json = nui.encode({tddxgljddicts: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                        grid.loading("正在删除中,请稍等...");
                        $.ajax({
                            url: "com.cgn.itmp.systemset.BaseMgt.ljDeleteTdDxglJddicts.biz.ext",
                            type: 'POST',
                            data: json,
                            cache: false,
                            contentType: 'text/json',
                            success: function (text) {
                                var returnJson = nui.decode(text);
                                if (returnJson.exception == null) {
                                    //grid.reload();
                                      doSearch();
                                    nui.alert("删除成功", "系统提示", function (action) {
                                    });
                                } else {
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
    }

    //重新刷新页面
    function refresh() {
<!--        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        grid.load(json);//grid查询-->
        doSearch();
        nui.get("update").enable();
    }

    //查询
    function search() {
      doSearch();
//         var form = new nui.Form("#form1");
//         var json = form.getData(false, false);
//         grid.load(json);//grid查询
    }

    //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
    }

    //enter键触发查询
    function onKeyEnter(e) {
        search();
    }

    //当选择列时
    function selectionChanged() {
        var rows = grid.getSelecteds();
        if (rows.length > 1 || rows.length == 0) {
            nui.get("update").disable();
        } else {
            nui.get("update").enable();
        }
    }
</script>
</body>
</html>
