<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/common.jsp"%>
<html>
<!-- 
  - Author(s): xkl1112
  - Date: 2017-10-25 10:16:03
  - Description:商品新增页面
-->
<head>
<title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<style>
		.form-box .form-group{
			width:100%;
			margin-bottom:15px;
		}
		.form-box{
			background-color:#fff;
		}
	</style>
</head>
<body style="background-color:#f1f1f1;">
<div class="bs-docs-section">
<div class="form-box">
    <form action="" class="form-inline">
        <nav class="navbar navbar-default ">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
				    <a class="navbar-brand " href="#" >新增商品（<span class="star">*</span> 为必填）</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class=" folding-toggle">
                                <span class="fa fa-angle-up"></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>			
        <div class="form-demo-nei folding-menu" id="form1">
            <div style="overflow:auto;">
                <div class="lt-input">
                    <div class="form-group ">
                        <label for="exampleInputName1">名称 <span class="star">*</span></label>
                        <input name="product.name" class="nui-textbox" style="width:75%;"  id="name" emptyText="请填写名称"
                        required="true" requiredErrorText="请输入名称" onvalidation="onValidation" errorMode="none">
                        <span id="product.name_error" class="errorText"></span>
                    </div>
                    <div class="form-group ">
                        <label for="exampleInputName2">数量 <span class="star">*</span></label>
                        <input name="product.count" class="nui-textbox" style="width:75%;"  id="count"   maxLength=5 emptyText="请填写0-99999之间的数字"
                        required="true" vtype="range:0,99999;int" rangeErrorText="请输入正整数" intErrorText="请输入正整数"
                        requiredErrorText="请输入数量" onvalidation="onValidation" errorMode="none">
                        <span id="product.count_error" class="errorText"></span>
                    </div>
                </div>	  
                <div class="rt-input">
                    <div class="form-group">
                        <label for="exampleInputName3">价格(元) <span class="star">*</span></label>
                        <input name="product.price" class="nui-textbox" style="width:75%;" id="price" emptyText="请输入价格"
                        required="true" vtype="float;range:0,99999" requiredErrorText="请输入价格" floatErrorText="请输入数字" rangeErrorText="请输入正数"
                        onvalidation="onValidation" errorMode="none">
                        <span id="product.price_error" class="errorText"></span>
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputName2">产地 <span class="star">*</span></label>
                        <input name="product.place" class="nui-textbox" style="width:75%;"  id="place"   maxLength=15 emptyText="请填写生产地"
                        required="true" requiredErrorText="请输入产地" onvalidation="onValidation" errorMode="none">
                        <span id="product.place_error" class="errorText"></span>
                    </div>
                </div>
            </div>
            <p>
            	<button class="btn btn-default" type="button" onclick="saveProduct()"><span class="fa fa-floppy-o"></span>&nbsp;<b:message key="btn-save"/></button>
            	<button class="btn btn-second"  type="button" onclick="returnProductList()"><b:message key="btn-back"/></button>
            </p>
        </div>
    </form>
</div>
</div>
	<script type="text/javascript">
    	nui.parse();
    	//返回按钮
    	function returnProductList(){
    		window.location.href="productlist.jsp";
    	}
    	//输入框校验提示
    	function updateError(e) {
            var id = e.sender.name + "_error";
            var el = document.getElementById(id);
            if (el) {
            	if(e.errorText){
            		el.innerHTML = '<span class="fa fa-times"></span> <span class="sr-only">(error)</span>' + e.errorText;
            	}else{
					el.innerHTML = e.errorText;            	
            	}
            }
        }
        //输入框校验
        function onValidation(e) {                  
            updateError(e);
        }
        //保存
    	function saveProduct() {
			var form = new nui.Form("#form1");
			form.validate();
			if (form.isValid() == false) return;
			//提交数据
			var data = form.getData();
			var json = nui.encode(data);
			nui.ajax({
				url:'com.cgn.components.coframe.ui.core.productdemo.addProduct.biz.ext',
				type:"post",
				data:json,
				dataType:"json",
				contentType:"text/json",
				async:false,
				success:function(text){//新增成功
					if(text.flag == 1){
						new TipBox({type:'success',str:"新增成功",setTime:2000,callBack:function(){
							window.location.href="productlist.jsp";
        				}});
					}else{
						//新增失败
						new TipBox({type:'error',str:"新增失败",setTime:2000,callBack:function(){
        				}});
					}
				}
			}); 
		}
    </script>
</body>
</html>