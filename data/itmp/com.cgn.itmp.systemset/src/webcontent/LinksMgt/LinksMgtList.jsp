<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
 %><html>
<%--
- Author(s): Administrator
- Date: 2019-02-21 10:37:52
- Description:
    --%>
    <head>
        <title>
            常用网站
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
        <link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
	<link rel="stylesheet" type="text/css"
	href="/itmp/coframe/taskcenter/media/tasklist.css" />
    </head>
    <style>
    #linksmgtlist table td *{
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
    <body id="linksmgtlist" style="width:98%;height:100%;margin:0 auto;background-color: #f1f1f1;">
        <div class="nui-panel"   style="width:100%;height:0%;" showToolbar="false" showFooter="true">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.systemset.LinksMgt.LinksMgt">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="uuid">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <input class="nui-hidden" name="criteria/_orderby[2]/_property" value="xh">
                <input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="desc">
                   <input class="nui-hidden" name="criteria/_expr[1]/isdelete" value="0"/>
            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
            </div>
        </div>
     
        <div class="nui-panel" title="常用网站列表"   style="width:100%;height:95%;" showToolbar="false" showFooter="false" >
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
                <table style="width:100%;">
                    <tr>
                        <td style="width:100%;">
                           <a class="btn btn-defaultnui-button btn btn-default btn-xs" onclick="add()" name="ITMP_btnAdd">
                                新增
                            </a>
                            <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" name="ITMP_btnEdit"  onclick="edit()">
                               修改
                            </a>
                         <a class="nui-button btn btn-default btn-xs"  name="ITMP_btnDel"  onclick="remove()">
                               删除
                            </a>
                           <a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec">
                               回收站
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="nui-fit">
                <div id="datagrid1" dataField="entitys"
                 class="nui-datagrid"
                  style="width:100%;height:100%;"
                   url="com.cgn.itmp.systemset.LinksMgt.queryEntitys.biz.ext"
                    pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
                     onselectionchanged="selectionChanged" allowSortColumn="false" allowAlternating="true"> 
                    <div property="columns">
                     <div type="checkcolumn">
                        </div>
                      
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="xh" type="indexcolumn" headerAlign="center" allowSort="true" >
                            序号
                        </div>
                        <div field="type" headerAlign="center" allowSort="true" >
                            类型
                        </div>
                        <div field="name" headerAlign="center" renderer="ViewlinkRenderer" allowSort="true" >
                            名称
                        </div>
                        <div field="lj" headerAlign="center" allowSort="true" visible="false">
                            链接
                        </div>
                        <div field="crepeople" headerAlign="center" allowSort="true" >
                            修改者
                        </div>
                        <div field="time" headerAlign="center" allowSort="true" >
                            日期
                        </div>
                        <div field="delpeople" headerAlign="center" allowSort="true" visible="false">
                            删除人
                        </div>
                        <div field="deltime" headerAlign="center" allowSort="true" visible="false">
                            删除时间
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            //按钮权限控制
            accessControlButton('<%=userRoleCodeList %>',0);

            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

            //新增
            function add() {
                nui.open({showMaxButton : true,
                    url: "/itmp/systemset/LinksMgt/LinksMgtForm.jsp",
                    title: "新增记录", width: 600, height: 160,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
            }
				
				//超链接
            	function ViewlinkRenderer(e){
		    		var name=e.record.name;	
		    		var lj=e.record.lj;
		    		var	retHtml ="&nbsp;&nbsp;<a style='color:blue;' onclick='javascript: window.open(\""+lj+"\")' target='_Blank'>"+name+"</a>";						
		    		return retHtml;
				}
					
					//回收站
    				 function recycle() {                           
			                nui.open({
			                	showMaxButton : true,                   
			                    url: "/itmp/systemset/LinksMgt/LinksMgtRecycle.jsp",
			                    title: "回收站",
			                    width: 800,      
			                    height: 400,
			                    onload: function () {
			                        var iframe = this.getIFrameEl();
			                        var data = {pageType:"add"};//传入页面的json数据
					                    iframe.contentWindow.setFormData(data); 
			                        },
			                        ondestroy: function (action) {
			                            grid.reload();
			                        }
			                       });
			                   
			                }
            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                    	showMaxButton : true,
                        url: "/itmp/systemset/LinksMgt/LinksMgtForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 160,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{entity:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
                    }

                    //删除
                    function remove(){
                    
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({entitys:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.systemset.LinksMgt.ljdelete.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
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
                                    }else{
                                        nui.alert("请选中一条记录！");
                                    }
                                }

                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function search() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    search();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
                                    }
                                }
                            </script>
                        </body>
                    </html>
