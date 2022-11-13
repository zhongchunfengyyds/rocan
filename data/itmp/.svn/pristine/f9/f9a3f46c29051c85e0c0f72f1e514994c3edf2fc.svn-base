<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-09-05 16:36:51
  - Description: 流程配置
-->
<head>
<title>流程配置</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">

<style type="text/css">
	
</style>
</head>
<body style="background-color:#f1f1f1;">

<div class="bs-docs-section" style="background-color:#F1F1F1">
<div class="detail-box">
	<div class="detail-nav">
	<div style="overflow:hidden;">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">流程列表</a>
		    </div>
			
		  </div>
		</nav>
        <div id="test-height-tree" class="detail-content" style="overflow-x:hidden;overflow-y:scroll;width:510px;height:700px">
            
        </div>
	</div>
	</div>
	<div class="box" style="padding-left:30%">		
		<div class="box-container">
			<iframe id="apply" name="apply" src="<%=request.getContextPath()%>/coframe/taskcenter/workflowconfigDetail.jsp?processDefName=" width="100%" height="100%" frameborder="0" style="position: absolute;"
				scrolling="no">
			</iframe>
		</div>
	</div>
	<div class="succ">
        <div class="submit-success" >
            <div class="sub-img">
                <img src="<%=request.getContextPath()%>/css/themes/default/images/sub/sub-succ-26.png" alt="" />
            </div>
            <p class="succ-text">提交成功！</p>
            <p class="small-succ"></p>
        </div>
    </div>
    <div id="mask" class="modal-backdrop fade in" style="display: none;text-align: center;vertical-align: middle;">
    	正在提交中...
    </div>
       
</div>
</div>

	<script type="text/javascript">
		nui.parse();
		
		var minHeight=document.body.clientHeight-110;
		document.getElementById("test-height-tree").style.height=minHeight+"px";
		
		function loadTreeData(){
			$.ajax({
				url : "com.cgn.components.coframe.taskcenter.BusinessCatalog.getCatalogTree2.biz.ext",
				type : "POST",
				data : null,
				dataType : "json",
				success : function(data) {
					if (data && data.list) {
						var list = data.list;
						var html = "";
						for(var i=0;i<list.length;i++){
							var item = list[i];
							//alert(item.id+":"+item.pid+":"+item.text);
							if(item.pid=='1'){
								var temp = "";
								temp += buildOneLevelHtml(item);
								//表示是否存在具体流程
								var flag = false;
								//获取二级
								var secList = getChild(list,item.id);
								for(var j=0;j<secList.length;j++){
									var thrChild = getChild(list,secList[j].id);
									if(thrChild!=null && thrChild.length && thrChild.length>0){
										flag = true;
										temp += buildSecLevelHtml(secList[j],thrChild);
									}
								}
								if(flag){
									html += temp;
								}
							}
						}
						
						$(".detail-content").html(html);
						addClickEvent();
					}
				}
			});
		}
		
		
		function buildOneLevelHtml(item){
			return '<a href="javascript:void(0);" class="btn-toggle-nav">'
			+'<span class="fa fa-angle-right fa-angle-down "></span>&nbsp;&nbsp;<span class="fa fa-folder-o"></span>&nbsp;&nbsp;'
			+item.text
			+'</a>';
		}
		
		function buildSecLevelHtml(item,thrList){
			return '<ul class="str-nav-list"><li>'
				+'<a href="#" class="btn-toggle-nav">'
				+'<span class="fa fa-angle-right fa-angle-down "></span>&nbsp;&nbsp;<span class="fa fa-folder-o"></span>&nbsp;&nbsp;'
				+item.text
				+'</a>'
				+buildThrLevelHtml(thrList)
				+'</li></ul>';
		}
		
		function buildThrLevelHtml(thrList){
			var html = '<ul class="str-nav-list"><li>';
			for(var i=0;i<thrList.length;i++){
				var item = thrList[i];
				html += '<a href="javascript:void(0);" onclick="detail(\''+item.defName+'\',this);"><span class="fa fa-folder"></span>'+item.text+'</a>';
			}
			html += '</li></ul>';
			return html;
		}
		
		function getChild(items,id){
			var childs = [];
			for(var i=0;i<items.length;i++){
				if(items[i].pid == id){
					if(items[i].text!=null){
						childs.push(items[i]);
					}
				}
			}
			return childs;
		}
		
		function addClickEvent(){
			$(".detail-nav .btn-toggle-nav").bind("click",function(){
			    //$(this).toggleClass("active");
				$(this).find(".fa").toggleClass("fa-angle-down");
				$(this).next(".str-nav-list").slideToggle();
			});
		}
		
		function detail(defName,el){
			//alert(defName);
			$(".str-nav-list").find("a").removeClass("active");
			$(el).toggleClass("active");
			
// 			setCookie("session_def_name",defName);
			
			nui.Cookie.set("session_def_name2",defName);
			
			$("#apply").attr("src", "<%=request.getContextPath()%>/coframe/taskcenter/workflowconfigDetail.jsp");
		}
		
		function setCookie(c_name,value,expiredays){
			var exdate = new Date();
			exdate.setDate(exdate.getDate()+expiredays);
			document.cookie = c_name +"="+escape(value)+((expiredays==null) ?"":";expires="+exdate.toString());
		}
		
		function showMask(){
			$(".modal-backdrop").show();
		}
		
		function hideMask(){
			$(".modal-backdrop").hide();
		}
		function showSucc(){
			$(".succ").show();
			setTimeout(function(){$(".succ").hide();},1000);
		}
		loadTreeData();
	</script>
</body>
</html>