<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dataTime = df.format(new Date());
    IUserObject cu = CommonUtil.getUserObject();
    String userid = cu.getUserId();
    String username = cu.getUserRealName();

%>
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-15 15:37:50
- Description:
    --%>
    <head>
        <title>
           焊接申请 - 新增 
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">

        </script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
          <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
<script src="<%=request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <style type="text/css">
         	.mini-grid-table tr:first-child td{
				height: 0;
			}
			.mini-grid-cell-nowrap{
				text-align: center;
			}
			.mini-checkboxlist-td{
				border:none!important;
			}
			.mini-checkboxlist table tbody tr td{
				border:none!important;
			}
        </style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
        	<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
			<input class="nui-hidden" name="jhry" id="jhry"/>
			<input class="nui-hidden" name="ccry" id="ccry"/>
			<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
			<input class="nui-hidden" id="actInstId" name="actInstId" value="<b:write property='actInstId'/>"/>
	    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
	    	<input id="modelFlag" class="nui-hidden"  value="<b:write property='modelFlag'/>" name="modelFlag"/>
	    	<div id="form1">
            <!-- hidden域 -->
            <input class="nui-hidden" name="weldingapply.uuid"/>
             <input id="jd" class="nui-hidden" name="weldingapply.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
              
              <input class="nui-hidden" name="weldingapply.isdel"/>
              <input class="nui-hidden" id="fpath" name="weldingapply.filepath"/>
            <input class="nui-hidden" id="fname" name="weldingapply.filename"/>
			
			<input class="nui-hidden" id="applicant" name="weldingapply.applicant"/>
			
			   <input class="nui-hidden" id="fileid" name="weldingapply.equiaxedgraphfileid"/>  
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 
<tr>
                 <td class="form_label" width=200>
                        	  请选择机组状态:
                      </td>
                 	<td colspan="2" width=350">
                     <input id="countryCombo" name="weldingapply.jzstatus" value="大修(O)"  class="nui-dictcombobox"  dictTypeId="JZZT" style="width:100%;"
	    	   				onvaluechanged="onCountryChanged" requiredErrorText="机组状态不能为空" required="required" />
	    	   		</td>
	    	   		<td class="form_label" style="width:180px;">
                        	 WA状态:
                      </td>
                 	<td colspan="1">
                    <input  name="weldingapply.status" class="nui-dictcombobox" readOnly="readOnly" value="DTJ" dictTypeId="Apply_status" style="width:100%;" required="required" requiredErrorText="WA状态不能为空"/>
	    	   		</td>
                 </tr>
                 <tr>
                      <td class="form_label">
                        	大修轮次:
                      </td>
                      <td colspan="2">
					    <div id="combobox1" name="weldingapply.rounds" value="N" required="required" emptyText="请输入大修轮次" requiredErrorText="大修轮次不能为空" class="nui-textbox" style="width:100%;" >     
						</div>
                      </td>
                    <td class="form_label">
                        	WA编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" emptyText="保存后自动编码" readonly="readonly" style="width:100%;" name="weldingapply.applyno"/>
                    </td>
                    <td class="form_label">
                        	主票号:
                    </td>
                    <td colspan="1">
                    	<input property="editor" id="ticketnumber" name="weldingapply.ticketnumber"
							class="nui-autocomplete" allowInput="true"
							url="com.cgn.itmp.weldingmanagement.weldingapplybiz.getticketnumber.biz.ext"
							dataField="jsonObject" textField="ticketnumber" valueField="ticketnumber"
							style="width: 100%;"  onbeforeload="onBeforeLoadezpH" required="true" requiredErrorText="主票号不能为空" emptyText="请选择主票号"/>
                    </td>
               	</tr>
               	<tr>    
                    <td class="form_label">
                       	 描述:
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" name="weldingapply.describe" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/>
                    </td>
                    <td class="form_label">
                       	 功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.position" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/>
                    </td>
               		<td class="form_label">
                        	流程图:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.flowchart" style="width:100%;"/>
                    </td>
              </tr>
              
              <tr>      
                <td class="form_label" rowspan="2">
                    	等轴图（版本）或设备图（版本）:
                </td>
            				<td colspan="1" class="form_label" width=120>
               				 名称/版本
           					 </td>
							<td colspan="1">
									<input class="nui-textbox" name="weldingapply.equiaxedgraph" style="width:100%;"/>
							</td>

							<td class="form_label" style="height:48px;">
               				 焊缝号:
           					</td>
 							<td>
                				 	<input class="nui-textbox" name="weldingapply.weldnumber" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/>
            					</td> 
								<td class="form_label">
                   				焊缝数量
               					</td>
               					<td colspan="1">
	                   				 	<input class="nui-textbox" style="width:100%;" vtype="float" floatErrorText="请输入数字"  name="weldingapply.numberwelds"/>
	               					</td>
               					 
               			
		       </tr>
                <tr>
                <td class="form_label" width=120>
               				 附件
           		</td>
				<td id="fileHref" style="display:none;">
                     
                    </td>
                  
				<td  colspan="1" style="text-align:center"id="fileNoHref">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
						<div style="display: flex;">
							<input class="nui-textbox" readonly="readonly" style="width:100%"  id="zfj" name="weldingapply.fildid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input id="zfj" class="" style="width:70px" type="file" name="weldingapply.fildid" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
				</td>
                <td class="form_label">
	                        	制造级别（核岛为RCCM级别、常规岛为电力级别）: 
	            </td>
                <td>
        			<input class="nui-textbox" name="weldingapply.level" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/> 
 		        </td> 
 		        <td class="form_label">
			                       	 接头形式:
			                     </td>
	               					 <td colspan="1">
	               					 <input  name="weldingapply.form" required="true" requiredErrorText="接头形式不能为空" emptyText="请选择接头形式" class="nui-dictcombobox"   dictTypeId="JTXS"  style="width:100%;" />
				                     </td>
                </tr> 
               <tr>
               		<td class="form_label">
                   	上游设备或部件名称(部件1):
               		</td>
					<td colspan="2">
						<input class="nui-textbox" emptyText=""  required="true" requiredErrorText="必填项不能为空" requiredErrorText="上游设备或部件名称不能为空" style="width:100%;" name="weldingapply.upper"/>
					</td>
								
					<td class="form_label">
                   	 下游设备或部件名称(部件2):
               		</td>
					<td  colspan="1" style="text-align:center">
						<input class="nui-textbox" style="width:100%;" name="weldingapply.down" required="true" requiredErrorText="必填项不能为空"/>
					</td>
                    <td class="form_label">
                       	 工作温度（℃）/压力（MPa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;" name="weldingapply.temperature"/>
                    </td>
             </tr>
             <tr>
             
             
                    <td class="form_label">
                        部件1材质
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" style="width:100%;" name="weldingapply.component1material" required="true" requiredErrorText="必填项不能为空"/>
                    </td>
                    
                    <td class="form_label">
                        部件2材质
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" style="width:100%;" name="weldingapply.component2material" required="true" requiredErrorText="必填项不能为空"/>
                    </td>
                    
                    <td class="form_label">
                        是否为CCM设备:
                    </td>
                    <td colspan="1">
	                    <div id="cbl1" name="weldingapply.whetherccm" class="nui-checkboxlist" repeatItems="0" repeatLayout="table"
								textField="text" valueField="text" multiSelect="false" onload="onLoad" style="border:1px solid red;background: #FFFFE6;"
								url="/itmp/data/check.txt" dataField="checks" style="width:100%;" required="true" requiredErrorText="必填项不能为空">
						</div>
                    </td>
                    </tr>
                 <tr>
                    <td class="form_label">
                        部件1接口尺寸
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" name="weldingapply.component1interfacesize" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/>
                    </td>
                    <td class="form_label">
                        部件2接口尺寸
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component2interfacesize" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/>
                    </td>
                    
                     <td class="form_label">
                        地理位置
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.geographicalposition" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/>
                    </td>
                    </tr>
            <tr>
              <td class="form_label">
                        部件1接口厚度
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" name="weldingapply.component1interfacethickness" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/>
                    </td>
                    <td class="form_label">
                        部件2接口厚度
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component2interfacethickness" style="width:100%;" required="true" requiredErrorText="必填项不能为空"/>
                    </td>      
                    
                    <td class="form_label">
                        是否属于重要敏感区域:
                    </td>
                    <td colspan="1">
	                    <div id="cbl1" name="weldingapply.geographical" class="nui-checkboxlist" repeatItems="0" repeatLayout="table" required="true" requiredErrorText="必填项不能为空"
								textField="text" valueField="text" multiSelect="false" onload="onLoad" style="border:1px solid red;background: #FFFFE6;"
								url="/itmp/data/check.txt" dataField="checks" >
						</div>
                    </td>
                    </tr>
              
                
                <tr>
                    <td class="form_label">
                        联系人/联系方式:
                    </td>
                    <td colspan="6">
                        <input class="nui-textbox" enabled="false" id="contact" disabled="disabled" readonly="readonly" name="weldingapply.contact" style="width:100%;"/>
                    </td>
               </tr>
                    <tr>
                    	<td class="form_label">
		                        	专业
		                </td>
	                    <td colspan="2">
	                        <input id="zy" required="true" requiredErrorText="必填项不能为空" onvaluechanged="onvalue3" οnkeyup="lxfs()"  class="nui-textbox" style="width:100%;"/>
	                    </td>
	                    
	                    <td class="form_label">
		                        	姓名
		                </td>
	                    <td colspan="1">
	                        <input id="xm" required="true" requiredErrorText="必填项不能为空" onvaluechanged="onvalue3"  class="nui-textbox" style="width:100%;"/>
	                    </td>
	                    
	                    <td class="form_label">
		                        	电话
		                </td>
	                    <td colspan="1">
	                        <input id="mob" required="true" requiredErrorText="必填项不能为空" onvaluechanged="onvalue3"  class="nui-textbox" style="width:100%;"/>
	                    </td>
                    </tr>
                    <tr class="changeReasons" >
						<td class="form_label">校核人员</td>
						 <td colspan="3">
	                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
	                    </td>
<!-- 				<td colspan="4"> -->
<!-- 					<div style="flex-direction: row;display: flex;"> -->
<!-- 						<button id="btnEdit1" class="nui-button" onClick="onButtonEdit">校核人</button> -->
<!-- 						<span id="result"></span> -->
<!-- 						<div id="template" style="display: none;"> -->
<!-- 							<div class="emp" > -->
<!-- 								<span class="emp-id" style="display: none;"></span> -->
<!-- 								<span class="emp-name" style="padding:3px 3px;"></span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</td> -->
				
					<td class="form_label" colspan="1"
						style="width: 16% !important; text-align: center">选择抄送人员:</td>
					<td colspan="2"><input property="editor" id="ccry" multi="true"
						name="copyperson" class="nui-textboxlist" dataField="list"
						style="width: 100%; height: 100%;"
						url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
						valueField="empcode" textField="empcodename" ScrollBar="Vertical"
						searchField="keyword" /></td>
				</tr>
                   <!--  <td class="form_label">
                        申请单状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.status"/>
                    </td> -->
                <!-- </tr> -->
            </table>
            </div>
             </div>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
                               提交
                            </a>
                          	<span style="display:inline-block;width:25px;"></span>
                          	 <a class="nui-button" onclick="onDelete()" id="btnDelete">
                        作废
                    </a>
                    
                    <a class="nui-button" onclick="onRevoke()" id="btnRevoke" >
                        撤销
                    </a>	
                    <span style="display:inline-block;width:25px;"></span>
                    <a class="nui-button" id="oldclose"  onclick="onCancel()">
                                关闭
                    </a>
					<!--                              -->
                     <a class="nui-button" id="newclose"  onclick="CloseWindow('cancel')">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        

        <script type="text/javascript">
            nui.parse();
            var equiaxedgraphfileid="";
            var grid = nui.get("datagrid1");
        	var jdid = "";
        	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
        	var processInstId =nui.get("processInstId").getValue();
    		var modelFlag=nui.get("modelFlag").getValue();
    		var editable=nui.get('editable').value;
    		nui.get("#btnSubmit").hide();
   			nui.get("#btnDelete").hide();
   			nui.get("#btnRevoke").hide();
   			nui.get("#newclose").hide();
   			getWeldingapply();
   			if(editable=='false'){
    			nui.get("btnSubmit").hide();
//     			nui.get(grid_0).allowCellEdit=false;
    			var form = new nui.Form("#dataform1");
            	form.setChanged(false); 
                form.setEnabled(false);
                $('.changeReasons').hide();
                nui.get("#btnSubmit").hide();
		   		nui.get("#btnDelete").hide();
		   		SetHref();
    		}
    		
    		
    		

//         	nui.get("jd").setValue(jdid);
//         	var formData = new nui.Form("#form1").getData(false,false);
        	  var countrys = [
	            { id: "大修(O)", name: "大修(O)" },
	            { id: "日常(N)", name: "日常(N)" }
	        ];
	          var forms=[
	          { id: "", name: "请选择.." },
	          { id: "对接", name: "对接" },
	          { id: "角接", name: "角接" },
	          { id: "T形接", name: "T形接"},
	          { id: "搭接", name: "搭接" }
	       ];
	            
//         	 nui.get("countryCombo").load(countrys);
//         	 nui.get("formCombo").load(forms);
        	
        	 //草稿备注回显
        	 function getWeldingapply(){
        				var  entityType="com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply";
        				var json=nui.encode({processInstId:processInstId,entityType:entityType});
        				$.ajax({
        					url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",
        					type : 'POST',
        					data : json,
        					async:false,
        					cache : false,
        					contentType : 'text/json',
        					success : function(text) {
        						var weldingapply =text.data;
        						nui.get("ticketnumber").setValue(weldingapply.ticketnumber);
					       		nui.get("ticketnumber").setText(weldingapply.ticketnumber);
        						jdid=weldingapply.jd;
        						var temple={weldingapply:weldingapply};
        						var form = new nui.Form("#form1");//将普通form转为nui的form
        						form.setData(temple);
        						if(temple.weldingapply.status=="SPZ"){
        							nui.get("#btnSubmit").hide();
                   					nui.get("#btnDelete").hide();
                   					nui.get("#btnRevoke").show();
                   					if(modelFlag=="2"){
	                   					nui.get("#oldclose").hide();
	                   					nui.get("#newclose").show();
	                   					$(".changeReasons").hide();
                   					}
        							
        						}else{
        						    nui.get("#btnSubmit").show();
                   					nui.get("#btnDelete").show();
                   					if(modelFlag=="2"){
	                   					nui.get("#oldclose").hide();
	                   					nui.get("#newclose").show();	
                   					}
        						}
        						
        						if('<%=username %>' != nui.getbyName('weldingapply.applicant').getValue() ){
							         $('#btnSubmit').hide();
							         $('#btnDelete').hide();
							         $('.changeReasons').hide();
							         nui.get("#newclose").hide();
							         nui.get("#btnRevoke").hide();
							         $('#csry').hide();
							         var form = new nui.Form("#dataform1");
					            	 form.setChanged(false); 
					                 form.setEnabled(false);
					                 if(modelFlag=="2"){
	                   					nui.get("#oldclose").hide();
	                   					nui.get("#newclose").show();	
                   					}
                   					SetHref();
							    }
        						
        							var str=temple.weldingapply.contact;
        							var strs=new Array();
        							strs=str.split(",");
        	                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
        	                            for (i=0;i<strs.length ;i++ ){
        	                            	nui.get("zy").setValue(strs[0]);
        	                            	nui.get("xm").setValue(strs[1]);
        	                            	nui.get("mob").setValue(strs[2]);
        	                            }
        							}
        					
        				});
        			}
        			//提交申请
        	 function onSubmit(){
 				var form = new nui.Form("#form1");
 	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
 	    		form.validate();
 	    		
 	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
 	            nui.get("#btnSubmit").setEnabled(false);
 	            nui.get("#btnDelete").setEnabled(false);
 	            nui.get("#newclose").setEnabled(false);
 	            var data = form.getData(false,true);
 	            data.weldingapply.status="SPZ";
 	            data.weldingapply.isdel="0";
 	            data.delete_entity = data.weldingapply;
 	           	data.entityType="com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply";
 	            data.jhry = nui.get("jhry").text;
 				data.ccry = nui.get("ccry").value;
 				data.processInstId= nui.get("processInstId").value;
 				if(modelFlag=="1"){
 					data.workItemId= nui.get("workItemId").value; 				
 				}else{
 					data.workItemId= getworkItemId(nui.get("processInstId").value);
 				}
 				
 	            var json = nui.encode(data);
 	            nui.get("#btnSubmit").setEnabled(false);
 	    		$.ajax({
                     url:urlStr,
                     type:'POST',
                     data:json,
                     cache:false,
                     contentType:'text/json',
                     success:function(text){
                     
                         var returnJson = nui.decode(text);
                         if(returnJson.exception == null){
                        	 nui.alert("提交成功", "系统提示", function(action){
                                 if(action == "ok" || action == "close"){
	                                 if(modelFlag=="1"){
	                                     onCancel();
	                                 }else{
	                                 	 CloseWindow('cancel');
	                                 }
                                 }
                                 });
                         }else{
                         nui.get("#btnSubmit").setEnabled(true);
                             nui.alert("提交失败", "系统提示", function(action){
                                 if(action == "ok" || action == "close"){
                                    if(modelFlag=="1"){
	                                     onCancel();
	                                 }else{
	                                 	  CloseWindow('cancel');
	                                 }
                                 }
                                 });
                             }
                         },error: function (jqXHR, textStatus, errorThrown) {
 							 nui.alert(jqXHR.responseText,'错误',function (action) {
 									nui.get("#btnSubmit").setEnabled(true);
 							});
 						 }
 	          });
 		}
        	//作废
        	
        	
     		function onDelete(){
            nui.confirm("确定要作废流程？","提示",
               function(action){
                  if(action=="ok"){
                 nui.get("#btnSubmit").setEnabled(false);
                    nui.get("#btnDelete").setEnabled(false);
                     var json = {};
                      json.processInstId = nui.getbyName('processInstId').getValue();
                      if(modelFlag=="1"){
		 					json.workItemId= nui.get("workItemId").value; 				
		 				}else{
		 					json.workItemId= getworkItemId(nui.getbyName('processInstId').getValue());
		 				}
     		        	json.entityType="com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply";
	     		      var jsondata = nui.encode(json);
	     		      
             
	     		      $.ajax({
                      url:"com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
                      type:'POST',
                      data:jsondata,
                      cache:false,
                      contentType:'text/json',
                      success:function(data){
	                      var form = new nui.Form("#form1");
	                      var data = form.getData(false,true);
	                      var json = nui.encode({data:[data.weldingapply],entity:"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply"});
	                      
	             		  $.ajax({
		                      url:"com.cgn.itmp.weldingmanagement.common.updatedel.biz.ext",
		                      type:'POST',
		                      data:json,
		                      cache:false,
		                      contentType:'text/json',
		                      success:function(data){
		                         
			                    }
			                 });
                          var message = "流程作废成功";
	                      nui.alert(message,"成功",function(){
	                      if(modelFlag=="1"){
                             onCancel();
                         }else{
                         	 CloseWindow('cancel');
                         }
                     });
                     
 				
                     
                    }
                 });
                 }
               });
           }
        	 
        	 
        	 //填完最后一个电话
        	 function onvalue3(e){
        	 	var zy=nui.get("zy").getValue();
				var xm=nui.get("xm").getValue();
				var mob=nui.get("mob").getValue();
        	 	if(zy!=""&&xm!=""&&mob!=""){
        	 		nui.get("contact").setValue(zy+","+xm+","+mob);
        	 	}
        	 
        	 }
        	 function onCountryChanged(){
        	 	var combo=nui.get("countryCombo").getValue();
        	 	if(combo=="大修(O)"){
        	 	
//         	 	setTimeout(function () {
	            	chec();
// 	            }, 100)
        	 }else{
        	 nui.get('combobox1').setReadOnly(true);
        	 nui.get('combobox1').setValue("N");
		        	 }
        	 }
        	 function chec(){
        	 		nui.get('combobox1').setValue("");
					nui.get('combobox1').setReadOnly(false);
        	}
        	/* $(function(){
					nui.get('combobox1').setAjaxType("POST");
	              nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
		
		}); */
		
		function onPhoneValidation(e) {
            if (e.isValid) {
                var pattern = /\d*/;
                if (e.value.length<11||e.value.length>11||pattern.test(e.value)==false) {
                    e.errorText = "必须为11位手机号码";
                    e.isValid = false;
                }
            }
        }
        
        	      //附件初始化
            function setFile(e){
                var fileNewName = e.record.fileNewName;
                var fileRealName = e.record.fileRealName;
      			var filepath = e.record.filePath;
      			var fileId = e.record.fildid;
      			
     			if(fileRealName == null || fileRealName == 'null'){
     				return "";
     			}
                	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
                	return html;
                }
                      //点击附件下载
function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}

			


                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        
						if(infos.record!=null){
						var str=infos.record.weldingapply.contact;
						var strs=new Array();
						strs=str.split(",");
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                            for (i=0;i<strs.length ;i++ ){
                            	nui.get("zy").setValue(strs[0]);
                            	nui.get("xm").setValue(strs[1]);
                            	nui.get("mob").setValue(strs[2]);
                            }
						}
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                        $(".changeReasons").hide();
                            var json = infos.record;
                             nui.get("fileName").setText(json.weldingapply.fileRealName);
						 if(json.weldingapply.rounds=="N"){
                            nui.get("countryCombo").setValue("日常(N)");
        	 				nui.get('combobox1').setValue("N");
                            	
                            }else if(json.weldingapply.rounds.substring(0,1) == "H"){

	                            chec();
	                            nui.get("countryCombo").setValue("大修(O)");
                            
                            }
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                        }
                         //如果是点击申请添加带数据类型页面
                        if (infos.pageType == "add") {
                            var json = infos.record;
                             nui.get("fileName").setText(json.weldingapply.fileRealName);
                           if(json.weldingapply.rounds=="N"){
                            nui.get("countryCombo").setValue("日常(N)");
        	 				nui.get('combobox1').setValue("N");
                            	
                            }else if(json.weldingapply.rounds.substring(0,1) == "H"){

	                            chec();
	                            nui.get("countryCombo").setValue("大修(O)");
                            
                            }
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form        
                            form.setData(json);
                            
                            form.setChanged(false);
                           
                        }
                       /*  if(infos.pageType == "add"||infos.pageType == "add1"){
                        
                        		grid.load(formData);
                        } */
                    }

                    //关闭窗口
                    function CloseWindow(action) {
                        if (action == "close" && form.isChanged()) {
                            if (confirm("数据被修改了，是否先保存？")) {
                                saveData();
                            }
                        }
                        if (window.CloseOwnerWindow)
                        return window.CloseOwnerWindow(action);
                        else window.close();
                    }
					
					 //上传附件操作
	            	function onfileselect(){
						startUpload();
					}
					function startUpload(e) {
					
				        var fileupload = nui.get("fileName");
				        fileupload.startUpload();
				    }
				    //上传成功时，回写附件的name、id
				  function onUploadSuccess(e){
					var appIconName = e.file.name;

					var appIconPath = nui.decode(e.serverData).ret.filePath;
					
					//var appIconData = nui.decode(e.serverData).ret.fileValue;
					nui.get("fpath").setValue(appIconPath);
					nui.get("fname").setValue(appIconName);
				}
					
                    //确定保存或更s
                    function onOk(finishFirstActivityId) {
                        saveData(finishFirstActivityId);
                    }

                    //取消
                    function onCancel() {
                    	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
        	    		self.parent.location.reload();
        	    		
        				return;
                    }
                    //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                        nui.get("CGbtn").disable();
                                    }else{
                                        nui.get("CGbtn").enable();
                                    }
                                }
                                
    	function fileSub(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
					success : function(data) {
					 
						if (data.code == 1) {
							nui.get("fildid").setValue(data.list[0].name);
							nui.get("equiaxedgraphfileid").setValue(data.list[0].uri);
							equiaxedgraphfileid = data.list[0].uri;
							showimage(data.list[0].uri);
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} else {
				nui.alert("请上传图片");
				return false;
			}
		} 
		 //撤回
     		function onRevoke(){
              	var form = new nui.Form("#dataform1");;
        		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
        		form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                var data = form.getData(false,true);
                data.processInstId=processInstId;
                data.backid="manualActivity";
                data.workItemId=getworkItemId(processInstId);
                data.spyj="撤销";
           
                 //修改焊接申请得流程状态

                var weldingapply={uuid:data.weldingapply.uuid,status:"DTJ",isdel:"3"};
                var json =nui.encode({data:weldingapply,entity:"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply"});
                //修改焊接申请得流程状态
                $.ajax({
					url : "com.cgn.itmp.weldingmanagement.common.updateentity.biz.ext",
					type : 'POST',
					data : json,
					cache : false,
					contentType : 'text/json',
					success : function(text) {
					}
				});
                json = nui.encode(data);
               
                nui.get("btnRevoke").setEnabled(false);
        		$.ajax({
                        url:urlStr,
                        type:'POST',
                        data:json,
                        cache:false,
                        contentType:'text/json',
                        success:function(text){
                            var returnJson = nui.decode(text);
                            if(returnJson.exception == null){
                            	nui.alert("撤销成功", "系统提示", function(action){
                                    if(action == "ok" || action == "close"){
                                        CloseWindow('cancel');
                                    }
                                });
                            }else{
                                nui.alert("撤销失败", "系统提示", function(action){
                                    if(action == "ok" || action == "close"){
                                       CloseWindow('cancel');
                                    }
                                });
                                }
                            },error: function (jqXHR, textStatus, errorThrown) {
    							 nui.alert(jqXHR.responseText,'错误',function (action) {
    									nui.get("#btnBack").setEnabled(true);
    							});
    						 }
                            });
        		}
        		function getworkItemId(processInstId){
	        		var json =nui.encode({processInstId:processInstId,getOther:true});
	        		var workItemId="";
	        		$.ajax({
						url : "com.cgn.itmp.basecommon.WorkFlowCommon.queryProcInstanceCurrentState.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						async:false,
						contentType : 'text/json',
						success : function(text) {
							workItemId=text.data.currentWorkItems.BPSWorkItemExpand[0].workItemID;
						}
					});
					return workItemId;
				}
				 function SetHref(){
				  	 $('#fileHref').show();
	      			 $('#fileNoHref').hide();
			   		 var div = document.getElementById('fileHref');
			   		 var fileName = nui.get("zfj").getValue();
			   		 var fileId = nui.get("fileid").value;
			   		 div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileName + '\')" >' + fileName + '</a>';
			   		 
			   	}
			   	//主票号
                      function onBeforeLoadezpH(e) {
					        e.data.jd = jdid;
					    }
    	
    	
                </script>
            </body>
        </html>
