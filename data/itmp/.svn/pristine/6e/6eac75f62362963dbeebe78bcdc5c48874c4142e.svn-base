<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
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
    <title>项目管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%=request.getContextPath()%>/common/common.js"
            type="text/javascript"></script>

    <script src="<%=request.getContextPath()%>/common/nui/nui.js"
            type="text/javascript"></script>

    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
          <style type="text/css">
          		.mini-error .mini-errorIcon{
          			top:4px!important;
          		}
          </style>
</head>
<body style="background-color: #f1f1f1;height:96%;width:98%">
	<div class="bs-docs-section" style="height: 100%;">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%;height: 100%;">
								<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()"> 模糊查询 </a>  
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
								</div>
							</td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
					<div id="form1" class="nui-form display" align="center" >
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage">
						<!-- 排序字段 -->
						<input class="nui-hidden" id="isdelete" name="criteria/_expr[0]/isdelete"
                                   value="0"/> <input class="nui-hidden"
                                                      name="criteria/_expr[0]/_op" value="like"> <input
                                class="nui-hidden" name="criteria/_expr[0]/_likeRule"
                                value="end"> 
                       <input class="nui-hidden" id="con_jdid" name="criteria/_expr[2]/jd" /> 
		            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> 
		            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
		            <input class="nui-hidden" name="criteria/_orderby[3]/_property" value="orderindex"> 
                                <input class="nui-hidden" name="criteria/_orderby[3]/_sort" value="desc">
					</div>
					
				</div>
			</div>
		</div>

            <script type="text/javascript"
                    src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
       
<div region="center" title="项目管理" style="width: 100%; height: 95%;"
     showToolbar="false" showFooter="false">
    <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;" name="ITMP_btn">
        <table style="width: 100%;">
            <tr>
                <td style="width: 100%;padding:5px 0;">
                <a class="nui-button  btn btn-default btn-xs" menu="#popupMenu" name="ITMP_btnAdd" id="add" onclick="addRow()">
               		新增
                </a>
                <a id="update"
                       class="nui-button showCellTooltip  btn btn-default btn-xs"  name="ITMP_btnEdit"
                       onclick="edit()"> 修改
                    </a>
                     <a class="nui-button  btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp" id="out" >
                       导出
                    </a> 
                     <a class="nui-button  btn btn-default btn-xs" onclick="updatedel()" name="ITMP_btnDel" id="delete" >
                        删除
                    </a> <a class="nui-button  btn btn-default btn-xs" name="ITMP_btnRec"
                            onclick="recycle()"> 回收站
                        <!-- 弹框页面进入回收站页面,同时条件查询isdelete字段 -->
                    </a> 
                    </td>
            </tr>
        </table>
    </div>

    <div class="nui-fit" style="width: 100%; height: 100%;">
        <div id="datagrid1" dataField="itemmanages" class="nui-datagrid"
             style="width: 100%; height: 100%;"
             url="com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.queryList.biz.ext"
             pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
             onselectionchanged="selectionChanged" allowCellValid="true"
             allowSortColumn="true" sortMode="client"
             oncellvalidation="onCellValidation" allowAlternating="true">

				<div property="columns" style="width: 100%;">
					<div type="indexcolumn" width="10px" >序号</div>
					<div type="checkcolumn" width="10px" ></div>
					<div field="jzname" headerAlign="center"  align="center" width="20px" allowSort="true" 
						>
						机组
					</div>
					<div field="overhaul" headerAlign="center" align="center" width="30px"  allowSort="true" >
						大修轮次
					</div>
					<div field="itemname" headerAlign="center" align="center" width="100px"  allowSort="true" >
						项目名称
					</div>
					<div field="detailed" headerAlign="center" align="center"   allowSort="true" renderer="setConnect">
						标准化项目管理清单
					</div>
					
					<div field="uuid" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="jz" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="processStatus" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<style>
		html,body{height: 100%;}
		table td div{
			text-align:center;
		}
	</style>
	<script type="text/javascript">
		nui.parse();
		accessControlButton('<%=userRoleCodeList %>',3);
		var jdid=getCookie('jdid');
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		var jzid=getCookie('jzid');
		nui.get('con_jdid').setValue(jdid);
		nui.get("update").disable();
        nui.get("delete").disable();
        nui.get("out").disable();
		
		var grid = nui.get("datagrid1");
		var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);

	
	function query(e){
		var html = '<a  onclick="load(\'' + e.record.uuid
            + '\')" >' +e.record.title
            + '</a>';
            return html;
	}
	function load(id){
		param.id=id;
		addTab("","审查表","/itmp/authorization/Common/queryList.jsp",param);
	}

	function addTab(position,type,url,data) {
         var tabs = parent.parent.nui.get("mainTabs");
         var tab = { title: type, url: url, showCloseButton: true};
         tab.onload = function (e) {
            var iframe = tabs.getTabIFrameEl(e.tab);
            iframe.contentWindow.setData(data);
          }
         tab = tabs.addTab(tab);            
	     tabs.activeTab(tab);
    }
	//预览页面附件显示
     function setConnect(e) {
     	var html = '<a  onclick="tiaozhuan(\'' + e.record.uuid
            + '\')"  >' + e.record.detailed
            + '</a>';
        return html;
     }
     
     function tiaozhuan(id){
     	
		var param;
		var data=grid.getData();
		for(var i=0;data.length;i++){
			if(data[i].uuid==id){
				param=data[i];
				break;
			}
		}
		var uuid=param.uuid;
		var json=nui.encode({id:uuid});
		$.ajax({  
		    url:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.getItem.biz.ext",
		    type:'POST',
		    data:json,
		    cache: false,
            async: false,
		    contentType:'text/json',
		    success:function(text){
		    var data=text.list;
		    for(var i=0;i<data.length;i++){
		    	if(data[i].elements){
         			data[i].elements=data[i].elements.replace(/\n/g, "</br>");
 				}
 				if(data[i].children){
			    	var children=data[i].children;
			    	for(var j=0;j<children.length;j++){
			    		var child=children[j];
			    		if(child.elements){
	         				child.elements=child.elements.replace(/\n/g, "</br>");
	     				}
	     				if(child.explain){
	         				child.explain=child.explain.replace(/\n/g, "</br>");
	     				}
			    	}
 				}
		    }
		    param.tree=data;
		    }
		});	
		nui.open({
            showMaxButton: true,
            url: "/itmp/overhaul/ItemManage/getItemmanage.jsp",
            title: "项目管理详情",
            width: '80%',
            height: '80%',
            onload: function () {
                var iframe = this.getIFrameEl();
                //直接从页面获取，不用去后台获取
                 iframe.contentWindow.setData(param);
            }
        });
     }
     function addTab(position,type,url,data) {
         var tabs = parent.parent.nui.get("mainTabs");
         var tab = { title: type, url: url, showCloseButton: true};
         tab.onload = function (e) {
            var iframe = tabs.getTabIFrameEl(e.tab);
            iframe.contentWindow.setData(data);
          }
         tab = tabs.addTab(tab);            
	     tabs.activeTab(tab);
    }
	  //当选择列时
    function selectionChanged() {
        var rows = grid.getSelecteds();
        if (rows.length > 1 || grid.isEditing() || rows.length == 0) {
            nui.get("update").disable();
            if(rows.length==0){
            	nui.get("delete").disable();
            	nui.get("update").disable();
            	nui.get("out").disable();
            }
            if(rows.length > 1){
            	nui.get("add").disable();
            }
            
        } else {
        	nui.get("out").enable();
        	nui.get("add").enable();
        	nui.get("delete").enable();
            nui.get("update").enable();
        }
    }
	//修改
	function edit(){
	 var rows = grid.getSelecteds();
	 var data=rows[0];
	 var uuid=rows[0].uuid;
	 var json=nui.encode({id:uuid});
	 //判断是否为流程中数据
	if(fordata()){
		return;
	}
	 $.ajax({  
		    url:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.getItem.biz.ext",
		    type:'POST',
		    data:json,
		    cache: false,
		    contentType:'text/json',
		    success:function(text){
		    data.tree=text.list;
		        nui.open({
		           showMaxButton: true,
		           url: "/itmp/overhaul/ItemManage/Itemmanage.jsp",
		           title: "修改项目管理",
		           width: 1000,
		           height: 600,
		           onload: function () {   
						var iframe = this.getIFrameEl();
						iframe.contentWindow.setData(data);
		           }, ondestroy: function (action) {
                                        grid.reload();
//                                         tree.reload();
                                    }
		        });
	    	}
	   });
	}
	//发起
	function addRow(){
		var rows = grid.getSelecteds();
		nui.open({
            showMaxButton: true,
            url: "/itmp/overhaul/ItemManage/Itemmanage.jsp",
            title: "新建项目管理",
            width: 1000,
            height: 600,
            onload: function () {  
            	var iframe = this.getIFrameEl();
            	if(rows.length>0){
					iframe.contentWindow.setorderindex(rows[0].orderindex);
            	}
            },
            ondestroy : function(action) {//弹出页面关闭前SSS
				var formData = new nui.Form("#form1").getData(false, false);
        		grid.load(formData);
			}
        });
        
	}
						//列表删除
						function updatedel(){
						var rows = grid.getSelecteds();
						
						if(isadmin=="false"){
						//判断是否为流程中数据
							if(fordata()){
								return;
							}
							nui.open({
                                    showMaxButton: true,
                                    url: "/itmp/overhaul/ItemManage/itemmanageDeleteStart.jsp",
                                    title: "删除",
                                    width: 500,
                                    height: 300,
                                    onload: function () {
                                        var iframe = this.getIFrameEl();
                                        var data = {
                                            record: {
                                                list: rows,
                                                processDefName: 'com.cgn.itmp.dailyandoverhaul.overhaul.deletework',
                                                'processInstName': '大修管理_项目管理_删除',
                                                'processInstDesc': '大修管理_项目管理_删除'
                                            }
                                        };
                                        //直接从页面获取，不用去后台获取
                                        iframe.contentWindow.setFormData(data);
                                    }, ondestroy: function (action) {
                                        grid.reload();
//                                         tree.reload();
                                    }
                                });
	
	}else{
	
	if (rows.length > 0) {
				nui.confirm(
								"确定删除选中记录？",
								"系统提示",
								function(action) {
									if (action == "ok") {
		grid.loading("正在删除中,请稍等...");
		var entityname="com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage";
		var json=nui.encode({data:rows,entityname:entityname,type:"updatedel",token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
		$.ajax({  
		    url:"com.cgn.itmp.dailyandoverhaul.authorization.Common.examinerecycle.biz.ext",
		    type:'POST',
		    data:json,
		    cache: false,
		    contentType:'text/json',
		    success:function(text){
		        var formData = new nui.Form("#form1").getData(false, false);
        		grid.load(formData);
	        }
        });
				}
								});
			} else {
				nui.alert("请选中一条记录！");
			}
			}
		}
	//回收站
		function recycle () {
			nui.open({
			 	showMaxButton: true,
				url : "/itmp/common/recyclebin/recyclebin.jsp",
				title : "回收站",
				width : 1000,
				height : 570,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						pageType : "exmine",
						recyclebinFlag:"item",
						isJdgly : true,
						urlName:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.queryList.biz.ext",//回收数据
						entityVal:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage",
						removeUrl:"com.cgn.itmp.dailyandoverhaul.authorization.Common.examinerecycle.biz.ext",//删除
						recoveryUrl:"com.cgn.itmp.dailyandoverhaul.authorization.Common.examinerecycle.biz.ext",//恢复
						columnscode:[
							{type:"indexcolumn" },
							{type:"checkcolumn" },
							{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
							{field:"jzname",header:"机组", width:100, headerAlign:"center", allowSort:true},
							{field:'overhaul',header:'大修轮次', width:100, headerAlign:"center", allowSort:true},
							{field:'itemname',header:'项目名称', width:100, headerAlign:"center", allowSort:true},
							{field:'detailed',header:'标准化项目管理清单', width:100, headerAlign:"center", allowSort:true},
							{field:'jd',header:'基地', width:100, headerAlign:"center", allowSort:true,visible:false}	,
							{field:'isdelete',header:'删除标识', width:100, headerAlign:"center", allowSort:true,visible:false}		
						],
					};//传入页面的json数据
					iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前
					grid.reload();
				}
			});
		}

		
		function output(){
			var row=grid.getSelecteds();
			var outtitle="项目管理导出数据";
			if(row.length==1){
				outtitle=row[0].detailed;
			}
			
			var json=nui.encode({params:row});
			var data;
			nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.getprintdata.biz.ext",
                type: 'POST',
                async: false,
                data: json,
                success: function (text){
             		data=text.data;
             		for(var i=0;data.datas.length;i++){
	             		for(var j=0;data.datas[i].parents.length;j++){
	             			var parent=data.datas[i].parents[j];
	             			if(parent.elements){
		             			parent.elements=parent.elements.replace(/\n/g, "<w:p></w:p>");
	             			}
	             			for(var n=0;parent.children.length;n++){
	             				var child=parent.children[n];
	             				if(child.elements){
		             				child.elements=child.elements.replace(/\n/g, "<w:p></w:p>");
	             				}
	             				if(child.explain){
		             				child.explain=child.explain.replace(/\n/g, "<w:p></w:p>");
	             				}
             				}
	             		}
             		}
                }
               });
               
               
              json=nui.encode({modelname:"xmgl.ftl",data:data,title:outtitle});
            	$.ajax({
                    url:"com.cgn.itmp.basecommon.Common.getword.biz.ext",
                    type:'POST',
                    data:json,
                    cache: false,
                    contentType:'text/json',
                    async: false,
                    success:function(text){
                    window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.filename.replace("\\", "/").split("/")[1] + "&projectPath=temp1&loadFileName=" + text.filename.replace("\\", "/").split("/")[1]);
// 						var elemIF = document.createElement("iframe");
<%--                         elemIF.src = "<%=request.getContextPath()%>/"+text.filename; --%>
//                         elemIF.style.display = "none";
//                         document.body.appendChild(elemIF);
                    }
            	});
			
		}
								//高级搜索按钮
			function showquery() {
				var div = $("#form1");
				div.slideToggle(500);
				$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
				if($("#scbt").text()=="高级查询"){
					$("#fuzzyQuery").hide();
					$("#allQuery").show();
					$("#scbt").text("隐藏查询条件");
				}else{
					$("#fuzzyQuery").show();
					$("#allQuery").hide();
					$("#scbt").text("高级查询");
				}
			};
			 //关键字查询
            function btnQuery(){
				var gjz=$("#cond").val();
		
				 if (gjz == "") {
				    refresh();
					nui.get("update").disable();
				}else{
					 var data = {
					 	 matchFied :"itemname,detailed",
						 wordVal : $("#cond").val(),
						 entity  : $("input[name='criteria/_entity']").val(),
						 entityName : 'criteria',
						 sfdel : true,
						 jdInfo:'jdid@'+ getCookie('jdid')
					 } 
					 
					 var query = nui.decode(getKeyWordQuery(data));
				
					 grid.load(query);
					 nui.get("update").disable();
				 }
			
			}
			      //重新刷新页面
            function refresh(){
                var form = new  nui.Form("#form1");
                var json = form.getData(false,false);
                grid.load(json);//grid查询
                nui.get("update").enable();
            }
                                
			 //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
        $('#cond').val("");
        nui.get('con_jdid').setValue(getCookie('jdid'));
    }
    
     //遍历所选数据
          function fordata(){
          	var data = grid.getSelecteds();
          	var list=new Array();
          	var focds="";
          	if(data){
          		for(var i=0;i<data.length;i++){
          			if(data[i].processStatus=="0"){
		          		focds+="项目名称["+data[i].itemname+"]正在[修改]流程中<br>";
          			}
          			if(data[i].processStatus=="2"){
		          		focds+="项目名称["+data[i].itemname+"]正在[删除]流程中<br>";
          			}
          		}
          	}
          	if(focds==""){
          		return false;
          	}else{
	          	nui.alert(focds+"请待审批结束后再进行操作", "提示");
          		return true;
          	}
          } 
	
</script>
</body>
</html>
