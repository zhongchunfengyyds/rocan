<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>	
<%@include file="/common/common.jsp"%>
<html>
<!-- 
  - Author(s): dafu
  - Date: 2017-04-25 09:25:01
  - Description:
-->
<head>
<title>电子签名</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<%--     <script src="<%= request.getContextPath() %>/common/apply.js"></script> --%>
<%-- 	<script src="<%= request.getContextPath() %>/common/clip.js"></script> --%>
<%-- 	<script src="<%= request.getContextPath() %>/common/cuc.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery.min.js"></script> --%>
<%--     <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script> --%>
<%--     <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script> --%>
<%--     <link href="<%= request.getContextPath() %>/common/layout/css/docs.min.css" rel="stylesheet"> --%>
<%--     <link href="<%= request.getContextPath() %>/common/layout/css/cuc.css" rel="stylesheet"> --%>
<%--     <link href="<%= request.getContextPath() %>/common/layout/css/apply.css" rel="stylesheet"> --%>
<%--     <link href="<%= request.getContextPath() %>/common/layout/css/font-awesome.min.css" rel="stylesheet"> --%>
    <style type="text/css">
    	.mini-grid-headerCell{
			border-right:none;
		}
		.mini-grid-cell {
			border-right:none;
			padding-top: 8px !important;
			padding-bottom: 8px !important;
		}
		.mini-treegrid{
			border-bottom: 1px solid #fff;
		}
		.mini-grid-border{
			border:none;
			border-bottom: 1px solid #fff;
		}
		.mini-grid-headerCell-inner{
			font-weight: 400;
			font-size: 14px;
			font-family: "microsoft yahei",arial;
			padding-top: 8px !important;
			padding-bottom: 8px !important;
		}
		.mini-tree-nodetext,.mini-grid-cell-inner{
		    font-weight: 400;
			font-size: 14px;
			font-family: "microsoft yahei",arial;
		}
		/*grid选择列样式修改*/
		html body .mini-grid-row-selected{
			background: #DBDDE2;
		}
		.ass-box{
			display: block;
    		height: auto;
		}
		.mini-pager{
			background-color: #f1f1f1;
		    border-bottom: 1px solid #ddd;
		}
    </style>
</head>
<body style="background-color:#f1f1f1; overflow: hidden;">
	<div class="nui-fit" style="padding: 15px;padding-top: 2px; height: 550px;"">
		<div class="navbar mini-toolbar" style="border:0px;">
			<div style="margin:8px 0px 8px 12px;">
			    <button type="button" id="btn_add" class="btn btn-default" onclick="add()">
            		<i class="fa fa-plus-circle" ></i>
               		 增加
            	</button>
            	<button type="button" id="btn_remove" class="btn btn-default" disabled="disabled" onclick="remove()">
            		<i class="fa fa-trash-o"></i>
                	删除
            	</button>
			</div>           
		</div>
		<div id="datagrid1" dataField="dzqm" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.components.coframe.framework.dzqm.querydzqmPage.biz.ext" 
                pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="false">
            <div property="columns" >
                <div type="checkcolumn" header='' width="50" headerAlign="center" align="center">
                </div>
                <div type="indexcolumn" headerAlign="left" allowSort="true" align="left">序列
                </div>
                <div field="dzqmid"   headerAlign="left" allowSort="true" visible="false" align="left">
                    ID
                </div>
                <div field="filename" headerAlign="left" allowSort="true"  align="left">
                    文件名称
                </div>
                <div field="size" headerAlign="left" allowSort="true" align="left">
                    文件大小
                </div>
                <div field="username" headerAlign="left" allowSort="true"  align="left">
                    创建人
                </div>
                <div field="createtime" headerAlign="left" allowSort="true"  dateFormat="yyyy-MM-dd HH:mm:ss"  align="left" >
                    创建时间
                </div>
                <div field="uri"  headerAlign="left" allowSort="true"  renderer="editdzqm" align="left" >
                    	操作
                </div>
            </div>
        </div>
	</div>
 
	<script type="text/javascript">
    	nui.parse();
    	
    	  var grid = nui.get("datagrid1");
          grid.load();
          
          function editdzqm(e){
        	 return   '<a href="javascript:showdzqm(\'' +e.value + '\')">查看</a> ';
          }
    	
    	function add(){
    		nui.open({
                url:"<%=request.getContextPath()%>/coframe/framework/dzqm/uptp.jsp",
                title: "上传电子图片",
                width: 500, height: 400,
                onload:function(){
                	//var iframe = this.getIFrameEl();
                    //var data = {parentNode:window.parentNode||{}};
                    //iframe.contentWindow.SetData(data);
                },
                ondestroy: function (action) {
                   grid.reload();
                }
            });
    	}
    	
    	//查看图片
    	function showdzqm(str){
    		nui.open({
                url:"<%=request.getContextPath()%>/coframe/framework/dzqm/dzqmview.jsp",
                title: "查看电子图片",
                width: 250, height: 110,
                onload:function(){
                	var iframe = this.getIFrameEl();
                    //var data = {parentNode:window.parentNode||{}};
                    iframe.contentWindow.SetData(str);
                },
                ondestroy: function (action) {
                   //grid.reload();
                }
            });
    	}
    	
    	   //删除
        function remove(){
            var rows = grid.getSelecteds();
            if(rows.length > 0){
                nui.confirm("确定删除选中记录？","系统提示",
                function(action){
                    if(action=="ok"){
                        var json = nui.encode({dzqm:rows});
                        grid.loading("正在删除中,请稍等...");
                        $.ajax({
                            url:"com.cgn.components.coframe.framework.dzqm.deldzqm.biz.ext",
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
    	function selectionChanged(){
    		var rows = grid.getSelecteds();
				if(rows){
					if(rows.length == 1){
						$("#btn_remove").prop("disabled","");
					}else if(rows.length > 1){
						$("#btn_remove").prop("disabled","");
					}else{
						$("#btn_remove").prop("disabled","disabled");
					}
				}else{
					//两个都禁止
					$("#btn_remove").prop("disabled","disabled");
				}
    	}
    </script>
</body>
</html>