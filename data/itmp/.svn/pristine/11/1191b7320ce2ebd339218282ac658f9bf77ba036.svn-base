<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/common.jsp"%>
<html>
<%--
- Author(s): chy
- Date: 2017-04-11 10:40:59
- Description:
    --%>
    <head>
        <title>
            CgnEmail查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/apply.js"></script>
		<script src="<%= request.getContextPath() %>/common/clip.js"></script>
		<script src="<%= request.getContextPath() %>/common/cuc.min.js"></script>
		<script src="<%=request.getContextPath()%>/scripts/jquery.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
    	<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
         <link href="<%= request.getContextPath() %>/common/layout/css/docs.min.css" rel="stylesheet">
    	 <link href="<%= request.getContextPath() %>/common/layout/css/cuc.css" rel="stylesheet">
    	 <link href="<%= request.getContextPath() %>/common/layout/css/apply.css" rel="stylesheet">
    	 <link href="<%= request.getContextPath() %>/common/layout/css/font-awesome.min.css" rel="stylesheet">
    	 <link href="<%= request.getContextPath() %>/coframe/taskcenter/media/tasklist.css" rel="stylesheet">
	
    	 
    	 <style type="text/css">
    	 .mini-textbox,.mini-buttonedit {
			height:auto;
		}
		.mini-textbox-border,.mini-buttonedit-border{
			height:34px;
			border-radius: 3px;    
			-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    		box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
   	 		-webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    		-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    		transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		}
		.mini-button-text{
			font-size: 12px;
			display: inline-block;
			padding: 0;
			line-height:1.42857143;
		}
		.mini-textbox-input{
			    display: block;
    			height: 36px;
    			line-height: 34px;
    			padding: 0px 0px !important;
    			font-size: 12px;
		}
		.search-input-1{
			    padding: 6px 0 6px 10px !important;
		}
		.adv-search {
				display: inline-block;
				padding: 8px;
				margin-top: 6px;
				font-weight: normal;
				color: #004a86;
				float: left;
		}
		.search-box .search-container .form-control, .search-box .form-inline .form-group, .search-box .form-inline .input-group {
    width: 74%;
}
		.form-control{
			padding :0;		
		}
		
		#form2{
			padding: 15px;		
		}
		
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
		
		/*xinzeng  yangshi*/
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
    <body style="background-color:#f1f1f1;overflow: hidden;">
		<div class="bs-docs-section">
			<div class="search-box" style="background:#fff">
			    <div class="navbar navbar-default query-form">
			        	<div class="container-fluid">
			            	<div class="collapse navbar-collapse">
			                	<div class="navbar-header">
			                    	<a class="navbar-brand" href="#" style="padding-top:0;padding-bottom:0;">
			                        	<div id="form1" class="nui-form navbar-left" align="center" style="height:20%">
										<input class="nui-hidden" name="criteria/_entity" value="com.cgn.components.coframe.framework.data.CgnEmail">
			                            	<div class="input-group">
			                              	<input class="nui-textbox form-control search-input-1" name="criteria/_expr[1]/emailname" onenter="onKeyEnter"  placeholder="任务描述" class="form-control"/>
			                        		<input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
			                        		<input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
			                              	<span class="input-group-btn" style="width:auto;">
			                                	<button class="btn btn-default" type="button" id="query" onclick="search1();" style="height: 34px;"><span class="fa fa-search"></span></button>
			                              	</span>
			                            	</div>
			                        	</div>
			                        	<span class="adv-search">高级搜索</span>
			                    	</a>
			                	</div>
			                	<ul class="nav navbar-nav navbar-right">
			                    	<li>
			                        	<a href="#" class="dw-toggle ">
			                            	<span class="fa fa-angle-up fa-angle-down"></span>
			                        	</a>
			                    	</li>
			                	</ul>
			            	</div>
			        	</div>
			    	</div>
			    	<div class="search-container folding-menu" style="overflow: hidden;display:none;" id="queryForm"> 
			    		<div id="form2" class="nui-form" align="center" style="height:26%">
						<input class="nui-hidden" name="criteria/_entity" value="com.cgn.components.coframe.framework.data.CgnEmail">
						
						<div class="row">
			            <div class="col-sm-4 form-inline">
			                <div class="form-group">
			                    <label>邮件名称:</label>
			                	<input class="nui-textbox form-control" name="criteria/_expr[1]/emailname" />
			                	<input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
			                	<input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
			                </div>
			            </div>
			            <div class="col-sm-4 form-inline">
			                <div class="form-group">
			                    <label>邮件标题:</label>
			                    <input class="nui-textbox form-control" name="criteria/_expr[2]/emailtitle" />
			                	<input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
			                	<input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
			                </div>
			            </div>
			        </div>
			        <div class="row">
			            <div class="col-sm-12">
			                <div class="form-group text-right">
			                    <a class="btn btn-default" onclick="search2()"><span class="fa fa-search"></span>查询</a>
			                    <a class="btn btn-second" onclick="reset()"><span class="fa fa-refresh"></span>重置</a>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
			</div>
		</div>
    	<div class="nui-fit" style="padding: 15px;padding-top: 2px; height: 450px;"">
    		<div class="navbar mini-toolbar" style="border:0px;">
					<div style="margin:8px 0px 8px 12px;">
					    <button type="button" id="btn_add" class="btn btn-default" onclick="add()">
                    		<i class="fa fa-plus-circle" ></i>
                       		 增加
                    	</button>
						<button type="button" id="update" class="btn btn-default" disabled="disabled" onclick="edit()">
                    		<i class="fa fa-edit"></i>
                        	编辑
                    	</button>
                    	<button type="button" id="btn_remove" class="btn btn-default" disabled="disabled" onclick="remove()">
                    		<i class="fa fa-trash-o"></i>
                        	删除
                    	</button>
                    	<!--<button type="button" id="btn_export" class="btn btn-default" disabled="disabled" onclick="exportDict()">
                    		<i class="fa fa-cloud-download"></i>
                        	导出示例
                    	</button>-->
					</div>           
				</div>
        <div 
                id="datagrid1"
                dataField="cgnemails"
                class="nui-datagrid"
                style="height:100%;"
                url="com.cgn.components.coframe.framework.cgnemailbiz.queryCgnEmails.biz.ext"
                pageSize="20" sizeList="[20,100,1000]"
                showPageInfo="true"
                multiSelect="true"
                onselectionchanged="selectionChanged"
                allowSortColumn="false">
				
            <div property="columns">
                <div type="checkcolumn" header='' width="50" headerAlign="center" align="center">
                </div>
                <div type="indexcolumn" headerAlign="left" allowSort="true" align="left">
                	序列
                </div>
                <div field="mailid" headerAlign="left" allowSort="true" visible="false" align="left">
                    邮件ID
                </div>
                <div field="emailname" headerAlign="left" allowSort="true" align="left" >
                    邮件名称
                </div>
                <div field="emailtitle" headerAlign="left" allowSort="true" align="left">
                    邮件标题
                </div>
                <div field="cteatetime" headerAlign="left" allowSort="true" align="left">
                    创建时间
                </div>
            </div>
        </div>
    </div>
<form id="dict_form" method="post" enctype="multipart/form-data">
</form>
<script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");

            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
			//按钮点击监听器
			function selectionChanged() {
				//var enabled = ("out" == e.selected.direction);
				var rows = grid.getSelecteds();
				if(rows){
					if(rows.length == 1){
						$("#update").prop("disabled","");
						$("#btn_remove").prop("disabled","");
					}else if(rows.length > 1){
						//修改禁止
						$("#update").prop("disabled","disabled");
						//删除恢复
						$("#btn_remove").prop("disabled","");
					}else{
						$("#update").prop("disabled","disabled");
						$("#btn_remove").prop("disabled","disabled");
					}
				}else{
					//两个都禁止
					$("#update").prop("disabled","disabled");
					$("#btn_remove").prop("disabled","disabled");
				}
			}
            //新增
            function add() {
                nui.open({
                    url: "<%= request.getContextPath() %>/coframe/framework/mail/CgnEmailForm.jsp",
                    title: "新增邮件模板", width: 700, height: 500,
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

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                        url: "<%= request.getContextPath() %>/coframe/framework/mail/CgnEmailForm.jsp",
                        title: "编辑邮件模板",
                        width: 700,
                        height: 500,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{cgnemail:row}};
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
                                    var json = nui.encode({cgnemails:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.components.coframe.framework.cgnemailbiz.deleteCgnEmails.biz.ext",
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
                                function search1() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }
                                function search2() {
                                    var form = new nui.Form("#form2");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    var form2 = new nui.Form("#form2");
                                    form.reset();
                                    form2.reset();
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    search1();
                                }
                                
                                function exportDict() {        
						    	        var form = document.getElementById("dict_form");
						    			form.action = "com.primeton.demo.exportDict.flow";
						    	        form.submit();
						    	}
						    	function onKeyEnter(e) {
										search1();
								}
								
								//高级搜索			
    							function btnText(query ,html){
       	 							var html = "";
        							if(query.css("display") == "none"){
            							html = "返回"
        							}else{
            							html = "高级搜索"
        							}
        							query.slideToggle()
        							return html ;
    							}
    							$(".adv-search").on("click",function(e){
        							e.preventDefault()
        							var folding = $(this).parents(".navbar").next(".folding-menu")
        							var html = btnText(folding )
        							$(this).html(html)
        							$(this).parents(".query-form").find(".dw-toggle .fa").toggleClass("fa-angle-down")
    								})
    							$(".dw-toggle").on("click",function(e){
        							e.preventDefault()
        							$(this).find(".fa").toggleClass("fa-angle-down")
        							var folding = $(this).parents(".navbar").next(".folding-menu")
        							var html = btnText(folding)
        							$(this).parents(".navbar-right").prev().find(".adv-search").html(html)
 								})
								
                            </script>
                        </body>
                    </html>
