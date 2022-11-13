<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String modelFlag = request.getParameter("modelFlag");
SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dataTime = df.format(new Date());
IUserObject cu = CommonUtil.getUserObject();
String userid = cu.getUserId();
String username = cu.getUserRealName();
String entity = request.getParameter("entity");
String basename = request.getParameter("basename");
String crewname = request.getParameter("crewname");
String editionname = request.getParameter("editionname");
 %>
<html>
<%--
- Author(s): Sun
- Date: 2019-01-14 14:44:16
- Description:
    --%>
    <head>
        <title>
           升版
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/>
           <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
    </head>
    <body style="width:98%;height:91%;margin:0 auto;">
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="overhauldataform" style="padding-top:5px;">
        
        
         <input class="nui-hidden" name="processName" id="processName"/>
        	  <input class="nui-hidden" name="dggledition.id"/>
        	  <input class="nui-hidden" name="dggledition.processinstid"/>
        	  <input class="nui-hidden" name="dggledition.jdid" id="sbjdid"/>
        	  <input class="nui-hidden" name="dggledition.jzid" id="sbjzid"/>
        	    <input class="nui-hidden" name="dggledition.modelName" id="modelName"/>
    	      <input class="nui-hidden" name="entity" id="entity" value="com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity"/>
    	      <input class="nui-hidden" name="dggledition.processStatus" id="processStatus" value="1"/>
              <!-- 人员及原因信息 -->
              <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
              
              	<tr>
                    <td class="form_label"  align="center">
                        升版人:
                    </td>
                    <td colspan="2">
                        <input id="username" readonly="readonly" class="nui-textbox" style="text-align: center;" name="dggledition.creator"/>
                        <input class="nui-hidden" name="dggledition.modelFlag" id="modelFlag"/>
        	  			
                    </td>
                    <td class="form_label"  align="center">
                    </td>
                     <td colspan="2">
                    </td>    
               	</tr>
               	<tr>
               		<td class="form_label"  align="center">
                       当前版次:
                    </td>
                     <td colspan="2">
                        <input id="nownumber" readonly="readonly" class="nui-textbox" style="text-align: center;" name="dggledition.nownumber"/>
                    </td>  
                    <td class="form_label"  align="center">
                        升版为:
                    </td>
                     <td colspan="2">
                        <input required="true" class="nui-textbox" style="text-align: center;" name="dggledition.number"/>
                    </td>  
               	</tr>
               	<tr>
  
                	<td class="form_label"  align="center">
                        升版时间:
                    </td>
                    <td colspan="4">
                        <input id="date" readonly="readonly" class="nui-textbox" style="text-align: center;width: 100%;" name="dggledition.datetime"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label"  >
                        升版原因:
                    </td>
                    <td colspan="5" align="left">
                    <input class="nui-textarea"  style="text-align:left;width:100%;height:100px;" emptyText="请输入升版原因" required="true" requiredErrorText="请输入升版原因"  name="dggledition.reason"/>
                    </td>
                </tr>
         <tr id="jhry">
				<td class="form_label" style="width: 10%">校核人员</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
<!-- 			    	 <td colspan="5"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
                    
<!-- 				<td colspan="5"> -->
<!-- 					<input  required="true" property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true" requiredErrorText="请输入校核人员" style="width:98%"  -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!-- 				</td> -->
			
			</tr>
			     <tr id="csry">
				<td class="form_label" style="width: 10%">抄送人员</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:98%" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
	
			</tr>
              </table>
        </div>
        <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button btn btn-default btn-xs" id="btnSubmit" onclick="onOk()">
                               提交
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button btn btn-default btn-xs" onclick="onCancel()">
                               关闭
                            </a>
                        </td>
                    </tr>
                </table>
         </div>
        <script type="text/javascript">
            nui.parse();
            //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
            var json;
            //判断是否是管理员
//  			nui.get("isadmin").setValue(true);
			var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
			if (isadmin == 'true') { //如果是管理员
		        $('#jhry').hide();
		        $('#csry').hide();
		    }
 			var modelFlag = '<%=modelFlag %>';
 			var entity = '<%=entity %>';
 			var basename = '<%=basename %>';
 			var crewname = '<%=crewname %>';
 			var editionname = '<%=editionname %>';
 			nui.get("modelFlag").setValue(modelFlag);
 			
 		 	var title = getCookie('jdname')+'基地'+getCookie('jzname')+'机组';
 		 	var processName = "";
	 		if(modelFlag == '1'){
	 		  title += '规范法定大纲_大修执行条目升版';
	 		  processName = "规范法定大纲_大修执行条目升版";
	 		}else if(modelFlag == '2'){
	 		title += '规范法定大纲_日常执行条目升版';
	 		processName = "规范法定大纲_日常执行条目升版";
	 		}else if(modelFlag == '3'){
	 		title += '规范非法定总纲_大修执行条目升版';
	 		processName = "规范非法定总纲_大修执行条目升版";
	 		}else if(modelFlag == '4'){
	 		title += '规范非法定总纲_日常执行条目升版';
	 		processName = "规范非法定总纲_日常执行条目升版";
	 		}else if(modelFlag == '5'){
	 		title += '十年计划(核岛)_大修执行条目升版';
	 		processName = "十年计划(核岛)_大修执行条目升版";
	 		}else if(modelFlag == '6'){
	 		title += '十年计划(核岛)_日常执行条目升版';
	 		processName = "十年计划(核岛)_日常执行条目升版";
	 		}else if(modelFlag == '7'){
	 		title += '十年计划(常规岛及BOP)_大修执行条目升版';
	 		processName = "十年计划(常规岛及BOP)_大修执行条目升版";
	 		}else if(modelFlag == '8'){
	 		title += '十年计划(常规岛及BOP)_日常执行条目升版';
	 		processName = "十年计划(常规岛及BOP)_日常执行条目升版";
	 		}
	 		nui.get("modelName").setValue(title);
			nui.get("processName").setValue(processName);
 			var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
			nui.get("sbjdid").setValue(jdid);
			nui.get("sbjzid").setValue(jzid);
		

            $(function() {
            	//判断是否有待办
            	nui.get("username").setValue('<%=username %>');
				nui.get("date").setValue('<%=dataTime %>');
// 				$("^[name^='dggledition']").css('text-align','center');
				
				//根据基地机组 查询升版的数据量，用于生成版次
				 var data = {};
				 //var fields = ['modelFlag','jdid','jzid'];
				 //var values = [modelFlag,jdid,jzid];
				 //data.entityType = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
				 //data.fields = fields;
				 //data.values = values;
				 data.entity = entity;
				 data.basename = basename;
				 data.base = jdid;
				 data.crewname = crewname;
				 data.crew = jzid;
				 data.editionname = editionname;
				 var json = nui.encode(data);
			 	$.ajax({
				    url:"com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getEdition.biz.ext",
				    type:'POST',
				    cache:false,
				    data:json,
				    contentType:'text/json',
				    success:function(data){
				   		 var edition = data.edition;
				   		 nui.get("nownumber").setValue(edition);
			   			/*if(edition > 0){
	                		if(edition < 9){
	                			nui.get("number").setValue('0'+(parseInt(edition)+1));
	                		}else{
	                			nui.get("number").setValue(parseInt(edition)+1);
	                		}
	                	}else{
	                		nui.get("number").setValue('01');
	                	}*/
				   	}
				});
	
            });
            
            //提交审批
            function saveData(){
                var form = new nui.Form("#overhauldataform");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.createEdition.biz.ext";
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                 nui.get("btnSubmit").setEnabled(false);
                var data = form.getData(false,true);
                data.isadmin = isadmin;
                var jsondata = nui.encode(data);
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:jsondata,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
	                	if("1" == text.result || isadmin){
	                		nui.alert("升版提交成功", "提交提示", function(action){
                                if(action == "ok" || action == "close"){
                                    CloseWindow("saveSuccess");
                                }
                                });
	                	}else{
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(false);
							});
						}
                });
                
            }

        //关闭窗口
        function CloseWindow(action) {
            if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
            else window.close();
        }

        //确定保存或更新
        function onOk() {
            saveData();
        }

        //取消
        function onCancel() {
            CloseWindow("cancel");
        }
                </script>
            </body>
        </html>
