<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-04-11 17:14:14
- Description:
    --%>
    <head>
        <title>
            验证项目查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
         <link rel="stylesheet" type="text/css" href="/itmp/css/themes/cuc/skin.css"/>
    <link rel="stylesheet" href="/itmp/css/themes/default/css/cuc.css" />
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/> 
    </head>
    <body style="width:98%;height:95%;">
       <!--  <div class="nui-panel" title="验证项目查询"  style="width:100%;height:15%;" showToolbar="false" showFooter="true"> -->
            <div id="form1">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.authorization.ProjectPersonnelMgt.YZXM">
          
            </div>
  
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table style="width:100%;">
                    <tr>
                        <td style="width:100%;">
                             <a id="qd" class="nui-button" onclick="onOk()">
					                确定
					            </a>
					            <a class="nui-button" onclick="onCancel()">
					                取消
					            </a>
                        </td>
                    </tr>
                </table>
            </div> 
            <div class="nui-fit">
                <div id="datagrid1" dataField="yzxms" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.dailyandoverhaul.authorization.ProjectPersonnelMgt.queryYZXMs.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageInfo="true"  allowCellEdit="true" allowCellSelect="true" 
                 editNextOnEnterKey="true" editNextRowCell="true">
                    <div property="columns">
                        <div type="checkcolumn">
                        </div>
                        <div field="dictid" headerAlign="center" allowSort="true" renderer="yzxmRenderer">
                            验证项目
                        </div>
                        <div field="dictname" headerAlign="center" allowSort="true" visible="false">
                            dictname
                        </div>
                    </div>
                </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");

            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
            
            function GetData() {
			    var rows = grid.getSelecteds();
			    return rows;
			}
			function onOk() {
			    CloseWindow("ok");
			}
			function onCancel() {
			    CloseWindow("cancel");
			}
			
			function CloseWindow(action) {
			    if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
			    else window.close();
			}
            /* //新增
            function add() {
                nui.open({
                    url: "YZXMForm.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
            } */
			//验证项目公共代码转换
		function yzxmRenderer(e){
			return nui.getDictText("YZXM",e.value);
		}
           /*  //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                        url: "YZXMForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 300,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{yzxm:row}};
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
                    } */

                  

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
                                        nui.get("qd").disable(); 
                                    }else{
                                        nui.get("qd").enable();
                                    }
                                }
                            </script>
                        </body>
                    </html>
