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
            	焊工管理
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
</head>
<body style="background-color: #f1f1f1; overflow: scroll; width: 100%; height: 100%;">








   
<div class="bs-docs-section" style="height: 100%;">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label"><input type="text" id="cond" name="processInstDesc:%" class="form-control Keywordsearch" placeholder="关键字查询" tmplId="todolist" url=" "></td>
						<td class="form_label"></td>
						<td class="form_label"></td>
					</tr>
				</table>
					<div id="form1" class="nui-form display" align="center" >
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="welder/_entity" value="com.cgn.itmp.weldingmanagement.Welder.Welderall">
                <!-- 排序字段 -->
                 <table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
                    <tr>
                        <td class="form_label">
                            姓名:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder/_expr[1]/name"/>
                            <input class="nui-hidden" name="welder/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="welder/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            所属公司:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder/_expr[2]/company"/>
                            <input class="nui-hidden" name="welder/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="welder/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            员工号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder/_expr[3]/employeenumber"/>
                            <input class="nui-hidden" name="welder/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="welder/_expr[3]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            焊工代码:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder/_expr[4]/code"/>
                            <input class="nui-hidden" name="welder/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="welder/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            操作项目:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder/_expr[5]/items"/>
                            <input class="nui-hidden" name="welder/_expr[5]/_op" value="like">
                            <input class="nui-hidden" name="welder/_expr[5]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            操作证编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder/_expr[6]/operatingnumber"/>
                            <input class="nui-hidden" name="welder/_expr[6]/_op" value="like">
                            <input class="nui-hidden" name="welder/_expr[6]/_likeRule" value="all">
                        </td>
                    <td style="display:none;" colspan="0"><input class="nui-hidden"
									name="welder/_expr[7]/isdel" value="0" /> 
									<input class="nui-hidden" name="welder/_expr[7]/_op" value="like">
									<input class="nui-hidden" name="welder/_expr[7]/_likeRule"
									value="all">
									<input class="nui-hidden" id="con_jdid" name="welder/_expr[8]/jd" /> 
					            <input class="nui-hidden" name="welder/_expr[8]/_op" value="="> 
					            <input class="nui-hidden" name="welder/_expr[8]/_likeRule" value="end">
					            <input class="nui-hidden" id="con_jzid" name="welder/_expr[9]/jz" /> 
					            <input class="nui-hidden" name="welder/_expr[9]/_op" value="="> 
					            <input class="nui-hidden" name="welder/_expr[9]/_likeRule" value="end"></td>
                    </tr>
								</table>
					</div>
					<div property="footer" class="searchfooter" align="center">
					<a class="nui-button" onclick="btnQuery()"> 模糊查询 </a> 
						<a class="nui-button" onclick="search()"> 查询 </a> 
						<a class="nui-button" onclick="reset()"> 重置 </a> 
						<div onclick="showquery()" id="funquery" class="fa fa-chevron-down fa-1x">&nbsp;<a>显示查询条件</a></div>
					</div>
				</div>
			</div>
		</div>
         <div class=""  style="width:100%;" showToolbar="false" showFooter="false" >
                        <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
					<table style="width: 100%;">
						<tr>
							<td style="width: 100%;">
								<button class="btn btn-default" onclick="add()">
									<span class="fa fa-plus-circle"></span>&nbsp;
									<b:message key="btn-add" />
								</button>
								<button class="btn btn-default" onclick="edit()"
									disabled="disabled" id="editbtn">
									<span class="fa fa-pencil-square-o"></span>&nbsp;
									<b:message key="btn-edit" />
								</button>
								<button class="btn btn-default"
									type="button" onclick="output()">
									<span class="fa fa-download"></span>&nbsp;
									打印
								</button>
								<button class="btn btn-default" onclick="remove()"
									disabled="disabled" id="delebtn">
									<span class="fa fa-trash"></span>&nbsp;
									<b:message key="btn-delete" />
								</button>
								<button class="btn btn-default"
									type="button" onclick="recycle()">
									<span class="fa fa-recycle"></span>&nbsp;
									<b:message key="btn-recycle" />
								</button>
							</td>
						</tr>
					</table>
				</div>
				</div>
            <div class="nui-fit">
                <div id="datagrid1" dataField="welders" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.weldingmanagement.welderbiz.queryWelderall.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        
                        <div field="title" headerAlign="center" allowSort="true" >
                            审查记录名称
                        </div>
                        <div field="examiner" headerAlign="center" allowSort="true" >
                            审查人
                        </div>
                        <div field="examinetime" headerAlign="center" allowSort="true" >
                            审查时间
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false" >
                            删除标识
                                       </div>
			</div>
		</div>
	</div>
	</div>
        <script type="text/javascript">
            nui.parse();
            var data;
            var grid = nui.get("datagrid1");
            nui.get('con_jdid').setValue(getCookie('jdid'));
            nui.get('con_jzid').setValue(getCookie('jzid'));
            grid.load(formData);
            //附件初始化
            function setFile(e){
                	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
            	return html;
           }
           function setData(data){
                
           }
		function addTab(position,type,url) {
	         var tabs = parent.parent.nui.get("mainTabs");
	         var tab = { title: type + "审查记录", url: url, showCloseButton: true };
	         tab = tabs.addTab(tab);            
		     tabs.activeTab(tab);
	    }
	   	function output(){
	   		
	   	}

                            </script>
                        </body>
                    </html>
