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
    <title>审查记录</title>
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
<body style="background-color: #f1f1f1; overflow: scroll;">
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
		            		            <input class="nui-hidden" name="criteria/_orderby[3]/_property" value="examinetime"> 
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
                        class="nui-button  btn btn-default btn-xs" menu="#popupMenu" name="ITMP_btnAdd" onclick="addRow()">新增</a>
                    
                    
                    <a id="update"
                       class="nui-button showCellTooltip  btn btn-default btn-xs" id="update" name="ITMP_btnEdit"
                       onclick="edit()"> 修改
                    </a> <a class="nui-button  btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp" id="out" >
                       打印
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
						required="true" renderer="query">
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
			 if (str.indexOf(",ITMP_JDGLY") < 0 &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0) {//普通人员
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
		var jdid=getCookie('jdid');
		nui.get('con_jdid').setValue(jdid);
		var fileName = "";
		var filePath = "";
		var grid = nui.get("datagrid1");
		nui.get("update").disable();
		nui.get("out").disable();
		nui.get("delete").disable();
// 		var formData = new nui.Form("#form1").getData(false, false);
//         grid.load(formData);
        var param;
	
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
	//页面跳转传输数据
	function setData(data){
		param=data;
		nui.get("relationType").setValue(data.pageType);
		var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);
	}
	 
	//修改
	function edit(){
	 var rows = grid.getSelecteds();
	 var uuid=rows[0].uuid;
	 var round=rows[0].round;
	 param.id=uuid;
	 param.round=round;
		nui.open({
            showMaxButton: true,
            url: "/itmp/authorization/Common/Examination.jsp",
            title: "授权撤销/暂停",
            width: "100%",
            height: "100%",
            onload: function () {
                var iframe = this.getIFrameEl();
                iframe.contentWindow.setupdataData(param);
                
            },
            ondestroy: function (action) {
                grid.reload();
            }
        });
	}
	//发起审查
	function addRow(){
		nui.open({
            showMaxButton: true,
            url: "/itmp/authorization/Common/Examination.jsp",
            title: "授权撤销/暂停",
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
						var entityname="com.cgn.itmp.dailyandoverhaul.authorization.Common.Examine";
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
						urlName:"com.cgn.itmp.dailyandoverhaul.authorization.Common.querycheck.biz.ext",//回收数据
						entityVal:"com.cgn.itmp.dailyandoverhaul.authorization.Common.Examine",
						removeUrl:"com.cgn.itmp.dailyandoverhaul.authorization.Common.examinerecycle.biz.ext",//删除
						recoveryUrl:"com.cgn.itmp.dailyandoverhaul.authorization.Common.examinerecycle.biz.ext",//恢复
						columnscode:[
							{type:"indexcolumn" },
							{type:"checkcolumn" },
							{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
							{field:"title",header:"审核标题", width:100, headerAlign:"center", allowSort:true},
							{field:'examiner',header:'审核人', width:100, headerAlign:"center", allowSort:true},
							{field:'examinetime',header:'审核时间', width:100, headerAlign:"center", allowSort:true, dateFormat:"yyyy-MM-dd"},
							{field:'round',header:'大修轮次', width:100, headerAlign:"center", allowSort:true,visible:false},
							{field:'jd',header:'基地', width:100, headerAlign:"center", allowSort:true,visible:false},
							{field:'relationType',header:'关联类型', width:100, headerAlign:"center", allowSort:true,visible:false},
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
		
		function btnQuery() {
        var gjz = $("#cond").val();
        if (gjz == "") {
            refresh();
            nui.get("update").disable();
        } else {
            var data = {
                matchFied: "title",
                dicFied: "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                jdInfo: 'jd@' + getCookie('jdid')
            };
            var query = nui.decode(getKeyWordQuery(data));
            grid.load(query);
            nui.get("update").disable();
        }

    }
		
		
		//导出word
		function output(){
			var row=grid.getSelecteds();
			
		  var dic=new Array();
          for(var j=0;j<param.columnscode.length;j++){
          	if("dic" in param.columnscode[j]){
           		var d={field:param.columnscode[j].field,dic:param.columnscode[j].dic};
           		dic.push(d);
           	}
          }
    
			var titlename=row[0].title;
			var list=new Array();
			
			var json=nui.encode({id:row[0].uuid,relationType:row[0].relationType,jd:jdid});
			
			nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.Common.queryList.biz.ext",
                type: 'POST',
                async: false,
                data: json,
                success: function (text){
                	list=text.data;
					for(var i=0;i<list.length;i++){
						if(list[i].sqyxq){
							list[i].sqyxq=list[i].sqyxq.slice(0,10);
						}else if(list[i].yxq){
							list[i].yxq=list[i].yxq.slice(0,10);
						}else if(list[i].yxrq){
							list[i].yxrq=list[i].yxrq.slice(0,10);
						}
						for(var j=0;j<dic.length;j++){
							if(list[i][dic[j].field]==null||list[i][dic[j].field]==""){
								continue;
							}
							list[i][dic[j].field]=nui.getDictText(dic[j].dic,list[i][dic[j].field]);
						}
					} 	
                }
               });
              var canshu={title:titlename,datalist:list};
              var outType=row[0].relationType;
              if(outType=="aut"){
              	json=nui.encode({modelname:"sqscjl.ftl",data:canshu,title:row[0].title});
              }else if(outType=="Ndt"){
              	json=nui.encode({modelname:"wsscjl.ftl",data:canshu,title:row[0].title});
              }else{
              	json=nui.encode({modelname:"tsscjl.ftl",data:canshu,title:row[0].title});
              }
              
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
	            if(rows.length > 1 ){
	            	nui.get("out").enable();
	            }
	        } else {
	            nui.get("update").enable();
	            nui.get("out").enable();
	        }
        }
    }
    	  
    
	
</script>
</body>
</html>
