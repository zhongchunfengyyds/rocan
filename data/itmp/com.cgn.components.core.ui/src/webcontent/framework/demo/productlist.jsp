<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/common.jsp"%>
<html>
<!-- 
  - Author(s): xkl1112
  - Date: 2017-10-25 10:16:03
  - Description:商品列表页面
-->
<head>
<title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
    <style type="text/css">
    	.mini-fit{
			height: auto !important;
		}
    </style>
</head>
<body style="background-color:#f1f1f1;overflow: scroll;">
		<!-- 工具条 -->
		<div class="bs-docs-section">
			<div class="search-box">
				<div class="navbar navbar-default query-form">
					<div class="container-fluid">
						<div class="collapse navbar-collapse">
							<div class="navbar-header" id="nameSearch">
								<div class="navbar-brand" href="#" style="padding-top:0;padding-bottom:0;">
									<div class="navbar-form navbar-left">
										<div class="input-group">
											<input class="nui-textbox" style="width:100%;height:100%;" name="criteria._expr[0].name" emptyText="输入名称模糊查询">
											<input class="nui-hidden" name="criteria._expr[0]._op" value="like">
											<input class="nui-hidden" name="criteria._expr[0]._likeRule" value="all">
											<span class="input-group-btn" style="width:auto;">
                                <button class="btn btn-default" type="button" id="query" onclick="btnQuery();" style="height: 34px;"><span class="fa fa-search"></span></button>
											</span>
										</div>
									</div>
									<span class="adv-search">高级搜索</span>
								</div>
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
					<div class="row">
						<div class="col-sm-4 form-inline input-control input-width">
							<div class="form-group">
								<label>商品名称</label>
								<input class="nui-textbox" name="criteria._expr[0].name" labelField="true" emptyText="输入名称模糊查询">
								<input class="nui-hidden" name="criteria._expr[0]._op" value="like">
								<input class="nui-hidden" name="criteria._expr[0]._likeRule" value="all">
							</div>
						</div>
						<div class="col-sm-4 form-inline input-control input-width">
							<div class="form-group">
								<label>价格</label>
								<input class="nui-textbox" name="criteria._expr[1].price" labelField="true" label="" emptyText="输入价格等价查询">
								<input class="nui-hidden" name="criteria._expr[1]._op" value="=">
							</div>
						</div>
						<div class="col-sm-4 form-inline input-control input-width">
							<div class="form-group">
								<label>数量</label>
								<input class="nui-textbox" name="criteria._expr[2].count" labelField="true" label="" emptyText="输入数量等价查询">
								<input class="nui-hidden" name="criteria._expr[2]._op" value="=">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 form-inline input-control input-width">
							<div class="form-group">
								<label>产地</label>
								<input class="nui-textbox" name="criteria._expr[3].place" labelField="true" label="" emptyText="输入产地模糊查询">
								<input class="nui-hidden" name="criteria._expr[3]._op" value="like">
								<input class="nui-hidden" name="criteria._expr[3]._likeRule" value="all">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group text-right" style="margin-right:15px;">
								<button class="btn btn-default" type="button" onclick="btnQueryDetail()"><span class="fa fa-search"></span>&nbsp;<b:message key="btn-ok"/></button>
								<button class="btn btn-second" onclick="(new nui.Form('#queryForm')).reset()" type="button"><b:message key="btn-reset"/></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    
    
    <div class="search-container folding-menu" style="overflow: hidden;display:none;" id="queryForm"> 
        <div class="row">
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>商品名称</label>
                    <input class="nui-textbox" name="criteria._expr[0].name" labelField="true" emptyText="输入名称模糊查询">
                    <input class="nui-hidden" name="criteria._expr[0]._op" value="like">
                  	<input class="nui-hidden" name="criteria._expr[0]._likeRule" value="all">
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>价格</label>
                    <input class="nui-textbox" name="criteria._expr[1].price" labelField="true" label="" emptyText="输入价格等价查询">
                    <input class="nui-hidden" name="criteria._expr[1]._op" value="=">
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>数量</label>
                    <input class="nui-textbox" name="criteria._expr[2].count" labelField="true" label="" emptyText="输入数量等价查询">
                    <input class="nui-hidden" name="criteria._expr[2]._op" value="=">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>产地</label>
                    <input class="nui-textbox" name="criteria._expr[3].place" labelField="true" label="" emptyText="输入产地模糊查询">
                    <input class="nui-hidden" name="criteria._expr[3]._op" value="like">
                  	<input class="nui-hidden" name="criteria._expr[3]._likeRule" value="all">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="form-group text-right" style="margin-right:15px;">
                    <button class="btn btn-default" type="button" onclick="btnQueryDetail()"><span class="fa fa-search"></span>&nbsp;<b:message key="btn-ok"/></button>
                    <button class="btn btn-second" onclick="(new nui.Form('#queryForm')).reset()" type="button"><b:message key="btn-reset"/></button>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
	
	<div class="nui-fit" style="padding: 0px 15px 15px 15px;overflow: hidden;">
		<div class="navbar nui-toolbar" style="border:0px;">
			<div style="margin:8px 0px 8px 12px;">
			    <button class="btn btn-default" onclick="add()">
					<span class="fa fa-plus-circle"></span>&nbsp;<b:message key="btn-add"/>
				</button>
				<button class="btn btn-default" onclick="edit()" disabled="disabled" id="editbtn">
					<span class="fa fa-pencil-square-o"></span>&nbsp;<b:message key="btn-edit"/>
				</button>
				<button class="btn btn-default" onclick="remove()" disabled="disabled" id="delebtn">
					<span class="fa fa-trash"></span>&nbsp;<b:message key="btn-delete"/>
				</button>
			</div>           
		</div>
		<!-- 商品列表 -->
		<div id="productList"  height="auto" class="nui-datagrid"
			url="com.cgn.components.coframe.ui.core.productdemo.selectProduct.biz.ext"
			dataField="products" sortField="id" sortOrder="desc" pageSize="20" sizeList="[20,100,1000]" idFiled="id"
			multiSelect="true"
			onselectionchanged="onSelectionChanged">
		    <div property="columns">
		    	<div type="checkcolumn"></div>
		    	<div field="id" header='' width="50" headerAlign="left" allowSort="true" allowMove="false" visible="false"></div>
		        <div field="name" header='商品名称' width="" headerAlign="left" allowSort="true"></div>
		        <div field="price" header='价格'  width="40" headerAlign="left" allowSort="true"></div>
		        <div field="count" header='数量'  width="40" headerAlign="left" allowSort="true"></div>
		        <div field="place" header='产地'width="50" headerAlign="left" allowSort="true"></div>
		    </div>
		</div>
	</div>
</body>
<script type="text/javascript">
	nui.parse();
	var grid = nui.get("productList");
	grid.load();
	//控制修改和删除按钮
	function onSelectionChanged(){
		var rows = grid.getSelecteds();
		if(rows){
			if(rows.length == 1){
				//两个都恢复
				$("#editbtn").prop("disabled","");
				$("#delebtn").prop("disabled","");
			}else if(rows.length > 1){
				//修改禁止
				$("#editbtn").prop("disabled","disabled");
				//删除恢复
				$("#delebtn").prop("disabled","");
			}else{
				//两个都禁止
				$("#editbtn").prop("disabled","disabled");
				$("#delebtn").prop("disabled","disabled");
			}
		}else{
			//两个都禁止
			$("#editbtn").prop("disabled","disabled");
			$("#delebtn").prop("disabled","disabled");
		}
	}
	//仅按照名称搜索
	function btnQuery(){
		var form = new nui.Form("#nameSearch");
		var data = form.getData();
		grid.load(data);
	}
	//高级搜索
	function btnQueryDetail(){
		var form = new nui.Form("#queryForm");
		var data = form.getData();
		grid.load(data);
	}
	//新增按钮
	function add(){
		window.location.href="productinput.jsp";
	}
	//修改按钮
	function edit(){
		var rows = grid.getSelecteds();
		if(rows){
			if(rows.length == 1){
				var id = rows[0].id;
				window.location.href="productedit.jsp?id=" + id;
			}
		}
	}
	//删除按钮
	function remove(){
		var rows = grid.getSelecteds();
		var data = {products:rows};
		var json = nui.encode(data);
		if(rows.length>0){
			new ConfirmBox({
				title:'确定删除选中记录?',
				channel:"取消",
				edit:"确定",
				ok:function(){
					nui.ajax({
						url:"com.cgn.components.coframe.ui.core.productdemo.deleteProducts.biz.ext",
						type:"post",
						data:json,
						cache:false,
						contentType:"text/json",
						success:function(text){
							new TipBox({type:'success',str:"删除成功",setTime:2000,callBack:function(){
								grid.reload();
            				}});
						},
						error:function(){
							new TipBox({type:'error',str:"删除失败",setTime:2000,callBack:function(){
								grid.reload();
            				}});
						}
					});
				}
			});
		}
	}
	//高级搜索上下拉动时显示文字控制
    function btnText(query ,html){
        var html = "";
        if(query.css("display") == "none"){
            html = "返回";
        }else{
            html = "高级搜索";
        }
        query.slideToggle();
        return html ;
    }
    //高级搜索上下拉动效果
    $(".adv-search").bind("click",function(e){
        e.preventDefault();
        var folding = $(this).parents(".navbar").next(".folding-menu");
        var html = btnText(folding );
        $(this).html(html);
        $(this).parents(".query-form").find(".dw-toggle .fa").toggleClass("fa-angle-down");
    });
    //上下拉动效果
    $(".dw-toggle").bind("click",function(e){
        e.preventDefault();
        $(this).find(".fa").toggleClass("fa-angle-down");
        var folding = $(this).parents(".navbar").next(".folding-menu");
        var html = btnText(folding);
        $(this).parents(".navbar-right").prev().find(".adv-search").html(html);
    });
</script>
</html>