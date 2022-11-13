<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/common.jsp"%>

<!-- 
  - Author(s): zhangqw (mailto:zhangqw@primeton.com)
  - Date: 2013-02-28 10:38:33
  - Description:选中菜单的子菜单列表，tab页中使用
-->
<head>
</head>
<body>
    <div class="nui-fit" style="padding:0px 0px 0px 0px;">
		<input id="currentActInstId" name="currentActInstId" class="nui-hidden" />
	    <div id="workitemgrid" class="nui-datagrid" style="width:100%;height:100%;" showPager="false"
	         url="com.cgn.components.bps.api.webservice.WorkItemManager.queryWorkItemByActivityinstid.biz.ext" 
	         allowResize="false"dataField="workItems.BPSWorkItemExpand"
	         >
		    <div property="columns">
		        <div field="partiName" width="70" headerAlign="center" allowSort="false">参与者</div>
		        <div field="startTime" width="100" headerAlign="center" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss" allowSort="false">到达时间</div> 
		        <div field="endTime"   width="100" headerAlign="center" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"allowSort="false">完成时间</div> 
		        <div field="takeTime"  width="100" headerAlign="center" allowSort="false">耗   时</div>  
		        <div field="opinions"  width="100" headerAlign="center" allowSort="false">处理意见</div>      
		    </div>
		</div>
	</div>
 <script type="text/javascript">
   	    nui.parse();
		var grid = nui.get("workitemgrid");
        function SetData(data) {
            //跨页面传递的数据对象，克隆后才可以安全使用
            data = nui.clone(data);
            nui.get("currentActInstId").setValue(data.currentActInstId);
            var data = {"currentActInstId":nui.get("currentActInstId").getValue()};
            grid.load(data);
        }
</script>
</body>
</html>