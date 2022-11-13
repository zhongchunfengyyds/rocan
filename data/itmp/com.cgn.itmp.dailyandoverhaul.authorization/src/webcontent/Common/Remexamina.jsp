<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-15 15:50:17
- Description:
    --%>
<head>
    <title>授权管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
               <script src="<%=request.getContextPath()%>/common/common.js"
            type="text/javascript"></script>

    <script src="<%=request.getContextPath()%>/common/nui/nui.js"
            type="text/javascript"></script>
    	  <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
<%--           <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/> --%>
          
 <style type="text/css">
          *{
          	font-family: Microsoft YaHei !important;
          }
          .mini-button-text {
			    line-height: 16px;
			    padding: 2px 8px 3px 8px;
			    line-height: 17px\9;
			    vertical-align: top;
			    display: inline-block;
			    color: white; 
    			line-height: 16px;
		    }
		    body a.mini-button-disabled, body a:hover.mini-button-disabled {
			    border: 1px solid #ccc !important;
			    padding: 0px;
			    color: #777 !important;
			    background: #F8F9FA url(images/button/disabled.png) repeat-x 0 0px !important;
			    cursor: default;
			}
			body .mini-toolbar a.mini-button-disabled, body .mini-toolbar a:hover.mini-button-disabled, body .mini-pager a.mini-button-disabled, body .mini-pager a:hover.mini-button-disabled {
			    background: transparent   !important;
			    border: 0;
			    padding: 1px;
			}
			body .mini-button-plain {
			    background: transparent  !important;
			    border: 0;
			    padding: 1px;
			}
			.mini-button-disabled {
			    /* background-color: #ffffff!important; */
			    border: 1px solid #bfbfbf!important;
			    opacity: 0.3;
			}
			</style>
</head>
<body style="background-color: #f1f1f1; overflow: scroll;">
	<div class="bs-docs-section" style="height: 100%;">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
								<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;float:left;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label">
						<input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
						<td class="form_label"></td>
						<td class="form_label"></td>
					</tr>
				</table>
					<div id="form1" class="nui-form display" align="center" >
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.dailyandoverhaul.authorization.Common.Examine">
						<!-- 排序字段 -->
						<input class="nui-hidden" id="isdelete" name="criteria/_expr[0]/isdelete"
                                   value="0"/> <input class="nui-hidden"
                                                      name="criteria/_expr[0]/_op" value="like"> <input
                                class="nui-hidden" name="criteria/_expr[0]/_likeRule"
                                value="end"> 
                                <input class="nui-hidden" id="relationType" name="criteria/_expr[1]/relationType" value=""/> 
                    	<input class="nui-hidden" name="criteria/_expr[1]/_op" value="like"> <input
                                class="nui-hidden" name="criteria/_expr[1]/_likeRule"
                                value="end">
                       <input class="nui-hidden" id="con_jdid" name="criteria/_expr[2]/jd" /> 
		            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> 
		            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
		            <input class="nui-hidden" id="title" name="criteria/_expr[3]/title" /> 
		            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like"> 
		            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end">
					</div>			
					<div property="footer" class="searchfooter" align="center" >
					<a class="nui-button btn btn-default" onclick="query()"> 模糊查询 </a> 
<!-- 						<a class="nui-button btn btn-default" onclick="search()"> 查询 </a>  -->
						<a class="nui-button btn btn-default" onclick="reset()"> 重置 </a> 
						
					</div>
				</div>
			</div>
		</div>

            <script type="text/javascript"
                    src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
       
<div region="center" title="授权管理" style="width: 100%; height: 85%;"
     showToolbar="false" showFooter="false">
    <div class="nui-fit" style="width: 100%; height: 100%;">
        <div id="datagrid1" dataField="examines" class="nui-datagrid"
             style="width: 100%; height: 100%;"
             url="com.cgn.itmp.dailyandoverhaul.authorization.Common.querycheck.biz.ext"
             pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
             onselectionchanged="selectionChanged" allowCellValid="true"
             allowSortColumn="true" sortMode="client" oncellclick="onClick"
             oncellvalidation="onCellValidation" allowAlternating="true">

				<div property="columns">
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="title" headerAlign="center" allowSort="true" width="70"
						required="true" >
						审核标题
					</div>
					<div field="examiner" headerAlign="center" align="center" allowSort="true" width="50"
						>
						审核人
					</div>
					<div field="examinetime" headerAlign="center" align="center"  allowSort="true" dateFormat="yyyy-MM-dd">
						审核时间
					</div>
					<div field="uuid" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="round" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
						<div field="jd" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
						<div field="isdelete" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
						<div field="relationType" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
				</div>
			</div>
			<div style="heigth:10%;text-align:center">
		<a class="nui-button"  onclick="add()">确定 </a> 
		<a class="nui-button " onclick="cancel()">关闭</a>
	</div>
		</div>
		
	</div>
	
	<style>
		html,body{height: 100%;}
		table td div{
			text-align:center;
		}
		 .mini-button-text {
			    line-height: 16px;
			    padding: 2px 8px 3px 8px;
			    line-height: 17px\9;
			    vertical-align: top;
			    display: inline-block;
			    color: white; 
    			line-height: 16px;
		    }
	</style>
	<script type="text/javascript">
		nui.parse();
		var jdid=getCookie('jdid');
		nui.get('con_jdid').setValue(jdid);
		
		var fileName = "";
		var filePath = "";
		var grid = nui.get("datagrid1");
		var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);
        var param;
        var id="";

	
	//页面跳转传输数据
	function setData(data){
		param=data;
		nui.get("relationType").setValue(data.pageType);
		var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);
	}
	  //当选择列时
    function selectionChanged() {
        var rows = grid.getSelecteds();
        if (rows.length > 1 || grid.isEditing() || rows.length == 0) {
            nui.get("update").disable();
        } else {
            nui.get("update").enable();
        }
    }
	
	function add(){
		var row = grid.getSelecteds();
	   	id=row[0].uuid;
		window.CloseOwnerWindow();
	}
	
	function getData(){
		return id;
	}
	
	function cancel(){
		window.CloseOwnerWindow();
	}
	
	function reset(){
		$("#cond").val("");
	}
	
	function query(){
		nui.get("title").value=$("#cond").val();
		
		var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);
	}
	
</script>
</body>
</html>
