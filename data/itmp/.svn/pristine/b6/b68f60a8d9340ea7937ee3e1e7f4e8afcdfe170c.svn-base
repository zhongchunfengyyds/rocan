<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	UserObject user = (UserObject) request.getSession().getAttribute("userObject");
	String userName = user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<%--
- Author(s): cuiK
- Date: 2019-01-04 16:40:58
- Description:
    --%>
    <head>
        <title>
           专用工具清单查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
     	<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"> </script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
    </head>
    <body  style="background-color:#f1f1f1;width:98%;height:100%;margin:0 auto;">
    <div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label"><input type="text" id="cond" name="processInstDesc:%" class="form-control Keywordsearch"
							 placeholder="关键字查询" tmplId="todolist" url=" "></td>
						<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()">
										模糊查询 </a> <a id="allQuery" style="display: none"
										class="btn btn-default" onclick="searchs()"> 查询 </a> <a
										class="btn btn-default" onclick="reset()"> 重置 </a>
								</div>
							</td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
					</tr>
				</table>
				<div id="form1" class="nui-form display" align="center" style="height: 10%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td>
								<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="uuid">
								<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
								<input class="nui-hidden" name="criteria/_expr[2]/isdelete" value="0" />
								<input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
								<input class="nui-hidden" id="con_jdid" name="criteria/_expr[3]/jd" value="" />
								<input class="nui-hidden" name="criteria/_expr[3]/_op" value="in">
								<input class="nui-hidden" id="con_jzid" name="criteria/_expr[4]/jz" value="" />
								<input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
							</td>
						</tr>

					</table>
				</div>
			</div>

		</div>
	</div>
</div>
    
   <%--  <div class="bs-docs-section" >
	<div id="form1" class="nui-form" align="center">
	<!-- 数据实体的名称 -->
	<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL">
	 	
	<div class="search-box">
	    <div class="navbar navbar-default query-form">
	        <div class="container-fluid">
	            <div class="collapse navbar-collapse">
	                <div class="navbar-header">
	                    <div class="navbar-brand" style="padding-top:0;padding-bottom:0;">
	                    	<div class="navbar-form navbar-left">
	                            <div class="input-group">
	                              <input type="text" id="cond" name="processInstDesc:%" class="form-control"  placeholder="关键字查询" tmplId="todolist" url="" >
	                            
	                              <!-- <input id="cond" class="nui-stextboxlist" tmplId="todolist"/> -->
	                              <span class="input-group-btn" style="width:auto;">
	                                <button class="btn btn-default" type="button" id="query" onclick="btnQuery();" style="height: 34px;"><span class="fa fa-search"></span></button>
	                              </span>
	                            </div>
	                        </div>
	                    	<!-- <span class="adv-search">高级搜索</span> -->
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
	            <div class="col-sm-12">
	                <div class="form-group text-right">
	               <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="uuid">
    				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">   
		            <input class="nui-hidden"  name="criteria/_expr[2]/isdelete" value="0"/>
					<input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
					<input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
					
					<input class="nui-hidden" id="con_jdid"  name="criteria/_expr[3]/jd" value=""/>
					<input class="nui-hidden" name="criteria/_expr[3]/_op" value="in">
					
					<input class="nui-hidden" id="con_jzid"  name="criteria/_expr[4]/jz" value=""/>
					<input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
					<input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
	                </div>
	            </div>
	        </div>
	    </div>
	    	    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
	    
	</div>
	</div>
	</div>   --%>      
        <div region="center"  style="width:100%;height:93%;" showToolbar="false" showFooter="false">
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
                <table style="width:100%;">
                    <tr>
                        <td style="width:100%;">
                                     <a class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu"  name="ITMP_btnAdd"  >新增</a>
					    <ul id="popupMenu" class="nui-menu" style="display:none;">
					        <li>
							 <li  name="ITMP_btnAddOne" onclick="addRow()">单条增加</li>
							 <li  name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li>
						   
					    </ul>
                            <a id="update" class="nui-button btn btn-default btn-xs"  onclick="edit()"  name="ITMP_btnEdit">
                               修改
                            </a>
                            <a class="nui-button btn btn-default btn-xs" onclick="remove()"  name="ITMP_btnDel">
                                删除
                            </a>
                                <a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp" >导出</a>
                               <a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec">
                                回收站
                            </a>
                          
                         <span id="saveOrCancel">
                         <a class="nui-button btn btn-warning btn-xs" id="save" onclick="saveData()" >保存</a>  
                         <a class="nui-button btn btn-default btn-xs" id="cancle" onclick="cancelSave()">取消</a> 
                         
                         </span>    
                      
                        </td>
                    </tr> 
                </table>
            </div>
            <div class="nui-fit">
				<div id="datagrid1" class="nui-datagrid" dataField="tcgndgglzygjqds"  allowAlternating="true"
					 style="width:100%;height:100%;"
					url="com.cgn.itmp.outlineandplan.base.SpecialToolManagement.queryTCgnDgglZygjqds.biz.ext"
					  allowResize="true" pageSize="20" sizeList="[20,100,1000]" 
				    allowCellEdit="false" allowCellSelect="true" multiSelect="true"
				    onselectionchanged="selectionChanged" editNextOnEnterKey="true" 
				    oncellbeginedit="OnCellBeginEdit" 
					allowAlternating="true"
					allowCellValid = "true" allowSortColumn="true"  sortMode="client"
                    oncellvalidation="onCellValidation"
					>
					<div property="columns">		
						<div type="checkcolumn"></div>
						<div field="uuid" allowResize="false" width="120" headerAlign="center" allowSort="true" visible="false">
							<input property="editor" class="nui-textbox" style="width: 100%;" />
						</div>
<!-- 						   <div  field="jz" allowResize="false" width="50" -->
<!-- 							headerAlign="center" allowSort="true" renderer="JZRenderer"> -->
<!-- 			适用机组<input id="jizu"  property="editor" class="nui-combobox" dataField="jsonObject"  -->
<!-- 							style="width: 100%;" textField="name" url="" multiSelect="true" valueField="id" emptyText="请选择" /> -->
<!-- 						  </div>   -->
						<div field="name" allowResize="false" width="300" headerAlign="center" allowSort="true">
			名称 
							<input property="editor" class="nui-textbox" name="tcgndgglzygjqd.name" onvalidation="hasIllegalChar(e,200,true,true)" required="true" requiredErrorText="请输入名称 " style="width: 100%;" />
							</div>
						<div field="istxh" allowResize="false" width="300" headerAlign="center" allowSort="true">
			IST序号
							  <input property="editor" class="nui-textbox" name="tcgndgglzygjqd.istxh" onvalidation="hasIllegalChar(e,200,true,true)" required="true" requiredErrorText="IST序号不能为空"  style="width: 100%;" />
							</div>
                          <div field="isdelete" headerAlign="center" width="250" allowSort="true"  visible="false">
                            是否删除
                            <input property="editor" class="nui-combobox" name="tcgndgglzygjqd.isdelete" value="0"style="width:100%;" />
                         </div>
                           <div field="scr" headerAlign="center" allowSort="true"  visible="false">
                            删除人
                            <input property="editor" class="nui-combobox" name="tcgndgglzygjqd.scr"  style="width:100%;" />
                        </div>
                       <div field="scsj" headerAlign="center" allowSort="true"  visible="false" dateFormat="yyyy-MM-dd HH:mm:ss">
                            删除时间
                            <input property="editor" class="nui-combobox" name="tcgndgglzygjqd.scsj"   style="width:100%;" />
                        </div>
                    </div>
                </div>
             </div>
         </div>
         
        <script type="text/javascript">
            nui.parse();
            window.alert = function() {
			    return false;
			}
			//按钮权限控制
			accessControlButton('<%=userRoleCodeList %>',1);

			var grid = nui.get("datagrid1");
			nui.get("save").hide();
			nui.get("cancle").hide();
			nui.get("update").disable();
			var jd=getCookie('jdid');
			var jz=getCookie('jzid');
			nui.get('con_jdid').setValue(jd);
			nui.get('con_jzid').setValue(jz);
			if(jd!=null && jd!=""){
				var formData = new nui.Form("#form1").getData(false,false);
            	grid.load(formData);
			
			}
	        var jzCombox = nui.get("jizu");
            function OnCellBeginEdit(e) {
// 	            var grid = e.sender;
// 	            var record = e.record;
	            var field = e.field, value = e.value;
	            var editor = e.editor;
	            if(field == "jz"){
	               jzCombox  = editor;
			       jzCombox.setValue("");
				   var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + getCookie('jdid');
				   jzCombox.setUrl(url); 
	            }
	        }
			
			function onCellValidation(e) {
					if(  e.field == "name" ||  e.field == "istxh"   ){
							 
							 if (e.value == null || e.value == "") {
			                    e.isValid = false;
			                    e.errorText = "字段不能为空";
	        				}
					
					}
				    
	     	   }
			     	   
			
           //关键字查询
            function btnQuery(){
            	var gjz=$("#cond").val();
				if(gjz==""){
					refresh();
					nui.get("update").disable();
				}else{
					 var data = {
					 	 matchFied :"name,istxh",
						 wordVal : $("#cond").val(),
						 entity  : $("input[name='criteria/_entity']").val(),
						 entityName : 'criteria',
						 sfdel : true,
						 jdInfo:'jd@'+getCookie('jdid'),
						 jzInfo:'jz@'+getCookie('jzid')
					 } 
					 var query = nui.decode(getKeyWordQuery(data));
					 grid.load(query);
					 nui.get("update").disable();
				 }
			
			}   
		
	        //批量添加
			function batchAdd(){
				 nui.open({showMaxButton : true,
	                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
	                    title: "新增记录", width: 600, height: 300,
	                    onload: function () {//弹出页面加载完成
	                    	var iframe = this.getIFrameEl();
		                    var data = {
		                    	pageType:"batchAdd",
		                    	tempFileName:"zyglqdImport.xlsx",
		                    	tempLoadName :"专用工具清单导入模板",
		                    	entitfName:"com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL"
		                    };//传入页面的json数据
		                     iframe.contentWindow.SetData(data);
	                    },
	                    ondestroy: function (action) {//弹出页面关闭前
	                    grid.reload();
	                }
	            });
			}
	        	//保存数据
			  function saveData(){
           	  	 grid.commitEdit();
			       grid.validateRow(editRow); 
	            if (grid.isValid() == false) {
	               grid.beginEditRow(editRow); 
	                nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;
	            }
	            
			 	var jsonObject = grid.getChanges();
		
				if(jsonObject == null || jsonObject.length <= 0){
			 		nui.showTips({content: '数据未更改',state: 'warning',x: 'center', y: 'center'});
            		grid.beginEditRow(editRow); 
					return;
				} 
				if(jsonObject[0]._state == 'added'){
					 jsonObject[0]['jd'] = jd;
					  jsonObject[0]['jz']=jz;
				
				}
				  var data = {
					  	jsonObject:jsonObject[0] 
					  };
        		   var json = nui.encode(data);
//         		   grid.loading("保存中，请稍后......");
		            nui.ajax({
		                url: "com.cgn.itmp.outlineandplan.base.SpecialToolManagement.addZygjqdOrEdit.biz.ext",
		                type: 'POST',
		                data: json,
		                success: function (data) {
		                	 var result = data.result;
		                	 if(result == 'false'){
		                	   nui.alert("保存失败,当前基地下IST已经存在", "系统提示");
			   				  grid.beginEditRow(editRow); 
		                	 }else{
		                	 	grid.reload();
	                		nui.get("update").disable();
	                		nui.get("save").hide();
							nui.get("cancle").hide();
							nui.get("popupMenu").enable();
		                	 }
		                
		                },
		                error: function (jqXHR, textStatus, errorThrown) {
		                   nui.alert(jqXHR.responseText,'错误',function (action) {
									 grid.beginEditRow(editRow); 
							});
		                }
		            });
					            
	            //根据基地机组 查询升版的数据量，用于生成版次
// 	             var total = 1;
	             
// 	             if(jsonObject[0]._state == 'added' || (jsonObject[0]._state == 'modified' &&  jsonObject[0].istxh != '')){
// 				   	total = 0;
// 				  }
// 				 var data = {};
// 				 var fields = ['jzid','istxh','isdelete'];
// 				 var values = [jz,jsonObject1[0].istxh,'0'];
// 				 data.entityType = "com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL";
// 				 data.fields = fields;
// 				 data.values = values;
// 				 var json = nui.encode(data);
// 			 	$.ajax({
// 				    url:"com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
// 				    type:'POST',
// 				    cache:false,
// 				    data:json,
// 				    contentType:'text/json',
// 				    success:function(data){
// 				   		var count = data.count;
				   		
// 			   			if(count   > total){
// 			   				  nui.alert("保存失败,当前基地下IST已经存在", "系统提示");
// 			   				  grid.beginEditRow(editRow); 
// 	                	}else{
// 	                		  var data = {
// 							  	jsonObject:jsonObject[0] 
// 							  };
// 	                		   var json = nui.encode(data);
// 	                		   grid.loading("保存中，请稍后......");
// 					            nui.ajax({
// 					                url: "com.cgn.itmp.outlineandplan.base.SpecialToolManagement.addZygjqdOrEdit.biz.ext",
// 					                type: 'POST',
// 					                data: json,
// 					                success: function (data) {
// 					                	grid.reload();
// 				                		nui.get("update").disable();
// 				                		nui.get("save").hide();
// 										nui.get("cancle").hide();
// 										nui.get("popupMenu").enable();
// 					                },
// 					                error: function (jqXHR, textStatus, errorThrown) {
// 					                    alert(jqXHR.responseText);
// 					                }
// 					            });
// 	                	}
// 				   	}
// 				});
	
	            
			}
			
			
			   function output(){
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 350, height:200,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['uuid','isdelete','jd','jz'],  //按顺序放置
                            filterField:['uuid','isdelete','scr','scsj','addtime','jzName'],
                            expTitle:"专用工具清单",
                            jdFieds: "jd",
                            jzFieds:"jz",
                            order:"uuid@asc"
                            //dicFieds : "jd&JD"
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
             }		
				//取消保存
		function cancelSave(){
					nui.confirm("是否取消此次操作，确认取消？", "确定？",
		            function (action) {            
		                if (action == "ok") {
		                  	nui.get("update").disable();
		                    grid.reload();
		                   	nui.get("save").hide();
		                   	nui.get("cancle").hide();
		                   	nui.get("popupMenu").enable();
		                }
		            }
       		 );
		}
         //回收站
        function recycle(){
            nui.open({
            		showMaxButton : true,
                    url: "/itmp/base/specialToolManagement/SpecialToolRecycle.jsp",
                    title: "回收站", width: 1000, height: 600,
                    onload: function () {//弹出页面加载完成
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    nui.get("save").hide();
					nui.get("cancle").hide();
					nui.get("update").disable();
					nui.get("popupMenu").enable();
                	grid.reload();
                }
                });
            
            }
           var editRow = null;
             
        	//新增
			function addRow() {
				var newRow = {
					name : " "
				};
				grid.addRow(newRow, 0);
				this.grid.select(0);
				grid.validateRow(newRow);   //加入新行，马上验证新行
				grid.beginEditRow(newRow); 
				nui.get("update").disable();
				nui.get("save").show();
				nui.get("cancle").show();
				nui.get("popupMenu").disable();
				 editRow = newRow;
			}
        //编辑
			function edit() {
				var row = grid.getSelected();
				if(row){
					grid.validateRow(row);   //验证
					grid.beginEditRow(row); 
					nui.get("save").show();
					nui.get("cancle").show();
					nui.get("popupMenu").disable();	
					editRow = row;
					return;
				}
				nui.alert("请选中一条记录！");
			}
                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tcgndgglzygjqds:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.base.SpecialToolManagement.ljDeleteTCgnDgglZygjqds.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                                grid.reload();
                                                nui.get("popupMenu").enable();
			                    				nui.get("update").disable();
			                                    nui.get("save").hide();
												nui.get("cancle").hide();
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
//                                     nui.get("menuButton").enable();
                                    nui.get("update").disable();
                                    nui.get("save").hide();
                                    nui.get("cancel").hide();
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").disable();
                                }

                                //重置查询条件
                                function reset(){
                                $("#cond").val('');
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
									nui.get('con_jdid').setValue(jd);
									nui.get('con_jzid').setValue(jz);
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                      if(rows.length>1  || grid.isEditing()||rows.length==0){
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
                                    }
                                }
				                
				               function JZRenderer(e){		
				               		return e.row.jzName;
// 						               var jzids =  e.row.jz.split(",");
// 						               	nui.ajax({
// 									                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznamesByid.biz.ext",
// 									                type: 'POST',
// 									                async: false,
// 									                data:"{jzids:'" + jzids + "'}",
// 									                success: function (text) {
// 									                	val  = text.jzName;
// 									                }
// 									            });	
// 										return val;
								}
             
                            </script>
                        </body>
                    </html>
