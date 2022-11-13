<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
        String flag= request.getParameter("fildname");//到期提醒标识dqtx    升版提醒标识sbtx
        String fildname="到期提醒名称";
        if(flag.equals("sbtx")){
    		fildname="升版提醒名称";
		}
%>
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-15 15:50:17
- Description:
    --%>
<head>
    <title id="title">到期提醒</title>
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
</head>
<body style="background-color: #f1f1f1;width:98%;height:97%;">
	<div class="bs-docs-section" style="height: 100%;">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
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
									<a id="allQuery" style="display: none" class="btn btn-default" onclick="searchs()"> 查询 </a> 
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
							value="com.cgn.itmp.dailyandoverhaul.authorization.Common.Reminder">
						<!-- 排序字段 -->
						<input class="nui-hidden" id="isdelete" name="criteria/_expr[0]/isdelete"
                                   value="0"/> <input class="nui-hidden"
                                                      name="criteria/_expr[0]/_op" value="like"> <input
                                class="nui-hidden" name="criteria/_expr[0]/_likeRule"
                                value="end"> 
                                <input class="nui-hidden" id="relationtype" name="criteria/_expr[1]/relationtype" value=""/> 
                    	<input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
                       <input class="nui-hidden" id="con_jdid" name="criteria/_expr[2]/jd" /> 
		            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> 
		            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
		            <input class="nui-hidden" name="criteria/_orderby[3]/_property" value="initiationtime"> 
                                <input class="nui-hidden" name="criteria/_orderby[3]/_sort" value="desc">
					</div>
					
				</div>
			</div>
		</div>

            <script type="text/javascript"
                    src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
       
<div region="center" title="授权管理" style="width: 100%; height: 92%;"
     showToolbar="false" showFooter="false">
    <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;" name="ITMP_btn">
        <table style="width: 100%;">
            <tr>
                <td style="width: 100%;"><a
                        class="nui-button  btn btn-default btn-xs" menu="#popupMenu" name="ITMP_btnAdd" onclick="addRem()">新增</a>
                    <a id="update"
                       class="nui-button showCellTooltip  btn btn-default btn-xs"  name="ITMP_btnEdit"
                       onclick="edit()" id="update"> 修改
                    </a>
                     <a class="nui-button  btn btn-default btn-xs" onclick="updatedel()" name="ITMP_btnDel" id="delete">
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
        <div id="datagrid1" dataField="reminders" class="nui-datagrid"
             style="width: 100%; height: 100%;"
             url="com.cgn.itmp.dailyandoverhaul.authorization.Common.queryReminder.biz.ext"
             pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
             onselectionchanged="selectionChanged" allowCellValid="true"
             allowSortColumn="true" sortMode="client" oncellclick="onClick"
             allowAlternating="true"
             allowCellEdit="true" allowCellSelect="true"
             >

				<div property="columns">
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="title" id="remname" headerAlign="center" allowSort="true" width="70"
						required="true" renderer="query">
						<%=fildname%>
					</div>
					<div field="originator" headerAlign="center" align="center" allowSort="true" width="50"
						>
						发起人
					</div>
					<div field="initiationtime" headerAlign="center" align="center"  allowSort="true" dateFormat="yyyy-MM-dd">
						发起时间
					</div>
					<div field="married" trueValue="1" renderer="setState" headerAlign="center">是否开启状态</div>
<!-- 					<div type="checkboxcolumn" field="married" trueValue="1" falseValue="0" width="60" headerAlign="center">是否开启状态</div> -->
					<div field="state" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="advanceday" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="duration" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="uuid" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="reminder" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
						<div field="remindertext" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					<div field="jd" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					<div field="relationType" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
						<div field="remindertime" headerAlign="center" allowSort="true"
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
		 var str = '<%=userRoleCodeList%>';
			 if (str.indexOf(",ITMP_JDGLY") < 0  &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0) {//普通人员
			 	 if (nui.getbyName("ITMP_btnAdd") != undefined) {
				     nui.getbyName("ITMP_btnAdd").hide();
				 }
			 	 if (nui.getbyName("ITMP_btnEdit") != undefined) {
				     nui.getbyName("ITMP_btnEdit").hide();
				 }
			 	 if (nui.getbyName("ITMP_btnDel") != undefined) {
				     nui.getbyName("ITMP_btnDel").hide();
				 }
			 	 if (nui.getbyName("ITMP_btnRec") != undefined) {
				     nui.getbyName("ITMP_btnRec").hide();
				 }
			 }
			 if(str.indexOf(",ITMP_CJGLY") > 0){
			 	 if (nui.getbyName("ITMP_btnAdd") != undefined) {
				     nui.getbyName("ITMP_btnAdd").show();
				 }
			 	 if (nui.getbyName("ITMP_btnEdit") != undefined) {
				     nui.getbyName("ITMP_btnEdit").show();
				 }
			 	 if (nui.getbyName("ITMP_btnDel") != undefined) {
				     nui.getbyName("ITMP_btnDel").show();
				 }
			 	 if (nui.getbyName("ITMP_btnRec") != undefined) {
				     nui.getbyName("ITMP_btnRec").show();
				 }
		  }
		var relationtype="";
		var jdid=getCookie('jdid');
		var fileName = "";
		var filePath = "";
		var grid = nui.get("datagrid1");
		nui.get("update").disable();
		nui.get("delete").disable();
		nui.get('con_jdid').setValue(jdid);
		
        var param;
       	
		
	function query(e){
		
		var html = '<a  onclick="load(\'' + e.record.uuid+ '\',\''
				+ e.record.title+ '\',\''
				+ e.record.reminder+ '\',\''
				+ e.record.remindertext+ '\',\'' 
				+ e.record.advanceday+ '\',\'' 
				+ e.record.duration+ '\')" >' +e.record.title
            + '</a>';
            
            return html;
	}
		function btnQuery() {
        var gjz = $("#cond").val();
        if (gjz == "") {
            refresh();
            nui.get("update").disable();
        } else {
            var data = {
                matchFied: "title",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                jdInfo: 'jd@' + getCookie('jdid')
            };
            var query = nui.decode(getKeyWordQuery(data));
            query["criteria/_expr[10]/relationtype"] = relationtype;
            query["criteria/_expr[10]/_op"] = "=";
            grid.load(query);
            nui.get("update").disable();
        }

    }
// 		nui.get("title").setValue(data.title);
// 		nui.get("reminder").setValue(data.reminder);
// 		nui.get("reminder").setText(data.remindertext);
// 		nui.get("advanceday").setValue(data.advanceday);
// 		nui.get("duration").setValue(data.duration);
	function load(id,title,reminder,remindertext,advanceday,duration){
		param.title=title;
		param.reminder=reminder;
		param.remindertext=remindertext;
		param.advanceday=advanceday;
		param.duration=duration;
		param.id=id;
		nui.open({
            showMaxButton: true,
            url: "/itmp/authorization/Common/ReminderSee.jsp",
            title: "到期提醒详情",
           width: "90%", height: "80%",
            onload: function () {
                var iframe = this.getIFrameEl();
                iframe.contentWindow.setupdataData(param);
                
            },
            ondestroy: function (action) {
                grid.reload();
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
	//页面跳转传输数据
	function setData(data){
		relationtype = data.pageType;
		param=data;
		nui.get("relationtype").setValue(data.pageType);
		if(nui.get("relationtype").value=="program"){
			document.getElementById("title").innerHTML="升版提醒";
		}
		var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);
	}
	
	//修改
	function edit(){
	 var rows = grid.getSelected();
	 
	   if (rows) {
	   
			  	 param.id=rows.uuid;
				 param.title=rows.title;
				 param.reminder=rows.reminder;
				 param.remindertext=rows.remindertext;
				 param.advanceday=rows.advanceday;
				 param.duration=rows.duration;
				 param.remindertime=rows.remindertime;
				 var title="到期提醒";
				 if(nui.get("relationtype").value=="program"){
					title="升版提醒";		
				 }
				nui.open({
		            showMaxButton: true,
		            url: "/itmp/authorization/Common/Reminder.jsp",
		            title: title,
		           width: "100%", height: "100%",
		            onload: function () {
		                var iframe = this.getIFrameEl();
		                iframe.contentWindow.setupdataData(param);
		                
		            },
		            ondestroy: function (action) {
		                grid.reload();
		            }
		        });
     
            } else {
                nui.alert("请选中一条记录","提示");
            }
            
	 
	 
	}
	//发起到期提醒
	function addRem(){
		 var title="到期提醒";
		 if(nui.get("relationtype").value=="program"){
			title="升版提醒";		
		 }
		nui.open({
            showMaxButton: true,
            url: "/itmp/authorization/Common/Reminder.jsp",
            title: title,
            width: "100%",
            height: "100%",
            onload: function () {
                var iframe = this.getIFrameEl();
                iframe.contentWindow.setData(param);
            },
            ondestroy: function (action) {
                grid.reload();
            }
        });
	}
	
	
	//列表删除
	function updatedel(){
		var rows=grid.getSelecteds();
				if (rows.length > 0) {
				nui.confirm(
								"确定删除选中记录？",
								"系统提示",
								function(action) {
									if (action == "ok") {
		grid.loading("正在删除中,请稍等...");
		var entityname="com.cgn.itmp.dailyandoverhaul.authorization.Common.Reminder";
		var json=nui.encode({data:rows,entityname:entityname,type:"updatedel"});
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

	
	//回收站
		function recycle () {
			var tk="到期提醒名称";
	   		if(nui.get("relationtype").value=="program"){
	   			tk="升版提醒名称";		
	   		}
			nui.open({
			 	showMaxButton: true,
				url : "/itmp/common/recyclebin/recyclebin.jsp",
				title : "回收站",
				width : 1000,
				height : 570,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						recyclebinFlag:"examine",
						pageType : "exmine",
						urlName:"com.cgn.itmp.dailyandoverhaul.authorization.Common.queryReminder.biz.ext",//回收数据
						entityVal:"com.cgn.itmp.dailyandoverhaul.authorization.Common.Reminder",
						removeUrl:"com.cgn.itmp.dailyandoverhaul.authorization.Common.examinerecycle.biz.ext",//删除
						recoveryUrl:"com.cgn.itmp.dailyandoverhaul.authorization.Common.examinerecycle.biz.ext",//恢复
						columnscode:[
							{type:"indexcolumn" },
							{type:"checkcolumn" },
							{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
							{field:"title",header:tk, width:100, headerAlign:"center", allowSort:true},
							{field:'originator',header:'发起人', width:100, headerAlign:"center", allowSort:true},
							{field:'initiationtime',header:'发起时间', width:100, headerAlign:"center", allowSort:true, dateFormat:"yyyy-MM-dd"}							
						],
					};//传入页面的json数据
					iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前
					grid.reload();
				}
			});
		}
		function onAgentTypeChanged(e) {
			
		}
		function onClick() {
			
		}
			//重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        $('#cond').val("");
    }
	  //当选择列时
    function selectionChanged() {
        var rows = grid.getSelecteds();
        if(rows.length==0){
	        nui.get("update").disable();
        	nui.get("delete").disable();
        }else{
        	nui.get("delete").enable();
        	if (rows.length > 1 || grid.isEditing() ) {
	            nui.get("update").disable();
	        } else {
	            nui.get("update").enable();
	        }
        }
    }
    function setState(e){
    	var uuid = e.record.uuid;
    	var state = e.record.state;
    	
    	
    	var html = '';
    	if(state=="0"){
    		html = '<a class="nui-button  btn btn-default btn-xs" style="margin: 0 10px" id="changeStateopen"   onclick="changeState(\''+uuid+'\',1)" >启动</a><a class="nui-button  btn btn-default btn-xs" disabled="disabled" >关闭</a>';
    	}else if(state=="1"){
    		html = '<a class="nui-button  btn btn-default btn-xs" style="margin: 0 10px" id="changeStateopen" disabled="disabled"  >启动</a><a class="nui-button  btn btn-default btn-xs" onclick="changeState(\'' + uuid + '\',0)" >关闭</a>';
    	}
    	
		return html;
    }
    function changeState(id,state){
    	var data={};
    	data.uuid=id;
    	data.state=state;
    	
    	var json=nui.encode({data:data});
    	$.ajax({  
		    url:"com.cgn.itmp.dailyandoverhaul.authorization.Common.updatestats.biz.ext",
		    type:'POST',
		    data:json,
		    cache: false,
		    contentType:'text/json',
		    success:function(text){
		    	if(state=="1"){
		    	var tk="到期提醒已开启";
		   		if(nui.get("relationtype").value=="program"){
		   			tk="升版提醒已开启";		
		   		}
		    		nui.alert(tk, "系统提示", function(action){
                        if(action == "ok" || action == "close"){
                        	var formData = new nui.Form("#form1").getData(false, false);
            		        grid.load(formData);
                        }
                        });
			    	
		    	}else{
		    		var tk="到期提醒已关闭";
			   		if(nui.get("relationtype").value=="program"){
			   			tk="升版提醒已关闭";		
			   		}
		    		nui.alert(tk, "系统提示", function(action){
                        if(action == "ok" || action == "close"){
                        	var formData = new nui.Form("#form1").getData(false, false);
            		        grid.load(formData);
                        }
                        });
		    	}
		    	
	        }
        });
    }
      //重新刷新页面
    function refresh(){
        var form = new  nui.Form("#form1");
        var json = form.getData(false,false);
        grid.load(json);//grid查询
    }
</script>
</body>
</html>
