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
            	焊材管理
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
</head>
<body style="background-color: #f1f1f1; overflow: scroll;">
	<div class="bs-docs-section">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.Machine.Machine">
                <!-- 排序字段 -->
                <table id="table1" class="table" style="height:100%">
                    <tr>
          
                        <td colspan="1">
                        <input class="nui-hidden" name="criteria/_expr[11]/isdel" value="0" /> 
						<input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
						<input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="all">
						</td>
                   
                    </tr>
						</table>
					</div>
				</div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="machines"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.machinebiz.queryMachines.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                                    <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            设备编号
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="equipmenttype" headerAlign="center" allowSort="true" >
                            设备型号
                        </div>
                        <div field="input" headerAlign="center" allowSort="true" >
                            输入电压
                        </div>
                        <div field="currentrange" headerAlign="center" allowSort="true" >
                            电流调节范围
                        </div>
                        <div field="manufacturer" headerAlign="center" allowSort="true" >
                            生产厂家
                        </div>
                        <div field="certificate" headerAlign="center" allowSort="true" >
                            生产合格证明书（请上传附件）
                        </div>
                        <div field="verification" headerAlign="center" allowSort="true" >
                            检定有效期
                        </div>
                        <div field="state" headerAlign="center" allowSort="true" >
                            状态
                        </div>
                        <div field="location" headerAlign="center" allowSort="true" >
                            所在位置
                        </div>
                    </div>
                </div>
            </div>
            
             <!--footer-->
        <div class="nui-panel"  style="width:100%;height:85%;" showToolbar="false" showFooter="false" >
            <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
					<table style="width: 100%;">
						<tr>
							<td style="width: 100%;">
								
								<button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="tankuang()">
		
									添加
								</button>
								<button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="shanchu()">
									
									删除
								</button>
								<button class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="qingkong()">
									
									清空
								</button>
								<button style="float:right" class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="ceshi()">
									确认
								</button>
								<button style="float:right" class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="tankuang()">
									关闭
								</button>
							</td>
						</tr>
					</table>
				</div>
                        <div class="nui-fit">
                <div 
                        id="datagrid2"
                        dataField="machines"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.machinebiz.queryMachines.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="false"
                        multiSelect="true"
                        onselectionchanged="ceshi"
                        >
                        
                    <div property="columns" >
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                                    <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            设备编号
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="equipmenttype" headerAlign="center" allowSort="true" >
                            设备型号
                        </div>
                        <div field="input" headerAlign="center" allowSort="true" >
                            输入电压
                        </div>
                        <div field="currentrange" headerAlign="center" allowSort="true" >
                            电流调节范围
                        </div>
                        <div field="manufacturer" headerAlign="center" allowSort="true" >
                            生产厂家
                        </div>
                        <div field="certificate" headerAlign="center" allowSort="true" >
                            生产合格证明书（请上传附件）
                        </div>
                        <div field="verification" headerAlign="center" allowSort="true" >
                            检定有效期
                        </div>
                        <div field="state" headerAlign="center" allowSort="true" >
                            状态
                        </div>
                        <div field="location" headerAlign="center" allowSort="true" >
                            所在位置
                        </div>
                         <div field="location" headerAlign="center" allowSort="true" >
                           借用单位    
                            <!-- <input class="nui-textbox"> -->
                        </div>
                                      <div field="location" headerAlign="center" allowSort="true" >
                            借用人
                        </div>
                    </div>
                </div>
            </div>

	<script type="text/javascript">
    	nui.parse();
            var grid = nui.get("datagrid1");
            var grid2 = nui.get("datagrid2");
			var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

			//添加
			function tankuang(){
				var rows = grid.getSelecteds();
				grid2.addRows(rows);
			}
			//删除
			function shanchu(){
				var rows = grid2.getSelecteds();
				grid2.removeRows(rows,true);
			}
			//清空
			function qingkong(){
				var data=grid2.getData();
				grid2.removeRows(data,true);
			}
			var editRow = null;
			//测试
			function ceshi(){
				var row=grid2.getData();
				grid.beginEditRow(row);
				editRow = row;
			}

    </script>
</body>
</html>