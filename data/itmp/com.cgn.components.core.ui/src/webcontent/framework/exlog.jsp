<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html>
<html>
<!-- 
  - Author(s): dafu
  - Date: 2017-04-27 17:50:36
  - Description:
-->
<head>
<title>系统异常查看</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    
</head>
   <body style="width:98%;height:95%;">
        <div class="nui-panel" title="异常查询" iconCls="icon-add" style="width:100%;height:15%;" showToolbar="false" showFooter="true">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.components.coframe.framework.data.CgnExlog">
                <!-- 排序字段 -->
                <table id="table1" class="table" style="height:100%">
                    <tr>
                        <td class="form_label">
                           操作人:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/username"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                           <!--footer-->
						        <div property="footer" align="center">
						            <a class="nui-button" onclick="search()">
						                查询
						            </a>
						            <a class="nui-button" onclick="reset()">
						                重置
						            </a>
						        </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        
        <div class="nui-panel" title="异常信息列表" iconCls="icon-add" style="width:100%;height:85%;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                 <div id="datagrid1" class="nui-datagrid" dataField="result" style="width:100%;height:100%;" idField="exlogid"
					  url="com.cgn.components.coframe.framework.exlogbiz.queryByExlogPag.biz.ext" 
					  sizeList=[5,10,15,20,50,100] multiSelect="true" pageSize="15" onselectionchanged="selectionChanged">
					    <div property="columns" >
					      <div type="indexcolumn"  headerAlign="center" >序列</div>
					      <div field="username" headerAlign="center">操作人</div>
					      <div field="logtitle" headerAlign="center">操作描述</div>
					      <div field="logdesc" headerAlign="center" renderer="renderEdittype"  width="30%">异常信息</div>
					      <div field="exclass" headerAlign="center" renderer="renderEdittype" width="30%">异常逻辑</div>
					      <div field="logtime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" showTime="true">操作时间</div>
					    </div>
					</div>
            </div>
        </div>
	<script type="text/javascript">
	  nui.parse();
      var grid = nui.get("datagrid1");

      var formData = new nui.Form("#form1").getData(false,false);
      grid.load(formData);
        
        function search(){
           var form = new nui.Form("#form1");
           var data = form.getData(false, false);
           grid.load(data);
        }
        
        //重新刷新页面
        function refresh(){
            var form = new  nui.Form("#form1");
            var json = form.getData(false,false);
            grid.load(json);//grid查询
            nui.get("update").enable();
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
        
	</script>
</body>
</html>