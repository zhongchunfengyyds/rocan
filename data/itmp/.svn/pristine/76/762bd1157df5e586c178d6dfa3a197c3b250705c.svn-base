
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
          <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>

<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>


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
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <input class="nui-hidden" name="weldingapply.uuid"/>
             <input id="jd" class="nui-hidden" name="weldingapply.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
              
              <input class="nui-hidden" name="weldingapply.isdel"/>
              <input class="nui-hidden" id="fpath" name="weldingapply.filepath"/>
            <input class="nui-hidden" id="fname" name="weldingapply.filename"/>
			<input class="nui-hidden" id="fid" name="weldingapply.fildid"/>    
			
			   <input class="nui-hidden" id="equiaxedgraphfileid" name="weldingapply.equiaxedgraphfileid"/>  
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
					    <div id="combobox1" name="weldingapply.rounds"  onvalidation="hasIllegalChar(e,100,true,true)" value="" required="required" emptyText="请输入大修轮次" requiredErrorText="大修轮次不能为空" class="nui-textbox" style="width:100%;" >     
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
							url="com.cgn.itmp.weldingmanagement.weldingapplybiz.getticketnumber.biz.ext"  onvalidation="hasIllegalChar(e,100,true,true)"
							dataField="jsonObject" textField="ticketnumber" valueField="ticketnumber"
							style="width: 100%;"  onbeforeload="onBeforeLoadezpH" required="true" requiredErrorText="主票号不能为空" emptyText="请选择主票号"/>
                    </td>
					
                    
<!--                         <input class="nui-textbox" name="weldingapply.ticketnumber" style="width:100%;" required="true" requiredErrorText="必填项不能为空" emptyText="请输入" /> -->
               	</tr>
               	<tr>    
                    <td class="form_label">
                       	 描述:
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox"  onvalidation="hasIllegalChar(e,100,true,true)" name="weldingapply.describe" style="width:100%;" required="true" requiredErrorText="描述不能为空" emptyText="请输入描述" />
                    </td>
                    <td class="form_label">
                       	 功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.position" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%;" required="true" requiredErrorText="功能位置不能为空" emptyText="请输入功能位置" />
                    </td>
               		<td class="form_label">
                        	流程图:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" name="weldingapply.flowchart" style="width:100%;"/>
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
									<input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" name="weldingapply.equiaxedgraph" style="width:100%;"/>
							</td>

							<td class="form_label" style="height:48px;">
               				 焊缝号:
           					</td>
 							<td>
                				 	<input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" name="weldingapply.weldnumber" style="width:100%;" required="true" requiredErrorText="焊缝号不能为空" emptyText="请输入焊缝号" />
            					</td> 
								<td class="form_label">
                   				焊缝数量
               					</td>
               					<td colspan="1">
	                   				 	<input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" emptyText="请输入纯数字" style="width:100%;" vtype="float" floatErrorText="请输入数字"  name="weldingapply.numberwelds"/>
	               					</td>
               					 
               			
		       </tr>
                <tr>
                <td class="form_label" width=120>
               				 附件
           		</td>
				<td  colspan="1" style="text-align:center">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
						<div style="display: flex;">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" readonly="readonly" style="width:100%"  id="fildid" name="weldingapply.fildid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input id="fildid" class="" style="width:70px" type="file" name="weldingapply.fildid" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
				</td>
                <td class="form_label">
	                        	制造级别（核岛为RCCM级别、常规岛为电力级别）: 
	            </td>
                <td>
        			<input class="nui-textbox" name="weldingapply.level" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%;" required="true" requiredErrorText="制造级别不能为空" emptyText="请输入制造级别" /> 
 		        </td> 
 		        <td class="form_label">
			                       	 接头形式:
			                     </td>
	               					 <td colspan="1">
	               					 <input  name="weldingapply.form" onvalidation="hasIllegalChar(e,100,true,true)" required="true" requiredErrorText="接头形式不能为空" emptyText="请选择接头形式" class="nui-dictcombobox"   dictTypeId="JTXS"  style="width:100%;" />
				                     </td>
                </tr> 
               <tr>
               		<td class="form_label">
                   	上游设备或部件名称(部件1):
               		</td>
					<td colspan="2">
						<input class="nui-textbox" required="true" emptyText="请输入上游设备或部件名称(部件1)"  onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="上游设备或部件名称(部件1)不能为空" style="width:100%;" name="weldingapply.upper"/>
					</td>
								
					<td class="form_label">
                   	 下游设备或部件名称(部件2):
               		</td>
					<td  colspan="1" style="text-align:center">
						<input class="nui-textbox" style="width:100%;" name="weldingapply.down" required="true"onvalidation="hasIllegalChar(e,100,true,true)"  requiredErrorText="下游设备或部件名称(部件2)不能为空" emptyText="请输入下游设备或部件名称(部件2):" />
					</td>
                    <td class="form_label">
                       	 工作温度（℃）/压力（MPa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" style="width:100%;" name="weldingapply.temperature"/>
                    </td>
             </tr>
             <tr>
             
             
                    <td class="form_label">
                        部件1材质
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" style="width:100%;" onvalidation="hasIllegalChar(e,100,true,true)" name="weldingapply.component1material" required="true" requiredErrorText="部件1材质不能为空" emptyText="请输入部件1材质" />
                    </td>
                    
                    <td class="form_label">
                        部件2材质
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" style="width:100%;" onvalidation="hasIllegalChar(e,100,true,true)" name="weldingapply.component2material" required="true" requiredErrorText="部件2材质不能为空" emptyText="请输入部件2材质" />
                    </td>
                    
                    <td class="form_label">
                        是否为CCM设备:
                    </td>
                    <td colspan="1">
	                    <div id="cbl2" name="weldingapply.whetherccm" class="nui-checkboxlist" repeatItems="0" repeatLayout="table"
								textField="text" valueField="text" multiSelect="false" onload="onLoad" style="border:1px solid red;background: #FFFFE6;"
								url="/itmp/data/check.txt" dataField="checks" style="width:100%;" 
								required="true" requiredErrorText="是否为CCM设备不能为空" emptyText="请选择是否为CCM设备" >
						</div>
                    </td>
                    </tr>
                 <tr>
                    <td class="form_label">
                        部件1接口尺寸
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" name="weldingapply.component1interfacesize" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%;" required="true" requiredErrorText="部件1接口尺寸不能为空" emptyText="请输入部件1接口尺寸" />
                    </td>
                    <td class="form_label">
                        部件2接口尺寸
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component2interfacesize" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%;" required="true" requiredErrorText="部件2接口尺寸不能为空" emptyText="请输入部件2接口尺寸" />
                    </td>
                    
                     <td class="form_label">
                        地理位置
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" name="weldingapply.geographicalposition" style="width:100%;" required="true" requiredErrorText="地理位置不能为空" emptyText="请输入地理位置" />
                    </td>
                    </tr>
            <tr>
              <td class="form_label">
                        部件1接口厚度
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" name="weldingapply.component1interfacethickness" 
	                    style="width:100%;" required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="部件1接口厚度不能为空" emptyText="请输入部件1接口厚度" />
                    </td>
                    <td class="form_label">
                        部件2接口厚度
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component2interfacethickness" 
	                    style="width:100%;" required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="部件2接口厚度不能为空" emptyText="请输入部件2接口厚度" />
                    </td>      
                    
                    <td class="form_label">
                        是否属于重要敏感区域:
                    </td>
                    <td colspan="1">
	                    <div id="cbl1" name="weldingapply.geographical" class="nui-checkboxlist" repeatItems="0" repeatLayout="table"
	                     required="true" requiredErrorText="是否属于重要敏感区域不能为空" emptyText="请选择是否属于重要敏感区域" 
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
                        <input class="nui-textbox" id="contact" onvalidation="hasIllegalChar(e,false,true,true)" disabled="disabled" readonly="readonly" name="weldingapply.contact" style="width:100%;"/>
                    </td>
               </tr>
                    <tr>
                    	<td class="form_label">
		                        	专业
		                </td>
	                    <td colspan="2">
	                        <input id="zy" onvalidation="hasIllegalChar(e,100,true,true)" required="true" requiredErrorText="专业不能为空" emptyText="请输入专业"  onvaluechanged="onvalue3"  onkeyup="lxfs()"  class="nui-textbox" style="width:100%;"/>
	                    </td>
	                    
	                    <td class="form_label">
		                        	姓名
		                </td>
	                    <td colspan="1">
	                        <input id="xm" onvalidation="hasIllegalChar(e,100,true,true)" required="true" requiredErrorText="姓名不能为空" emptyText="请输入姓名"  onvaluechanged="onvalue3"  class="nui-textbox" style="width:100%;"/>
	                    </td>
	                    
	                    <td class="form_label">
		                        	电话
		                </td>
	                    <td colspan="1">
	                        <input id="mob" onvalidation="hasIllegalChar(e,100,true,true)" required="true" requiredErrorText="电话不能为空" emptyText="请输入电话"  onvaluechanged="onvalue3"  class="nui-textbox" style="width:100%;"/>
	                    </td>
                    </tr>
                    
                    <tr class="changeReasons" >
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input  class="nui-buttonedit" emptyText="请选择准备工程师" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
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
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button changeReasons" id="submit"  onclick="onOk('manualActivity')">
                                提交
                            </a>
                             <a class="nui-button" id="save"  style="display:none;"  onclick="onOk('manualActivity')">
         	 保存
                            </a>
                            
                            <span style="display:inline-block;width:25px;"></span>
                            <a class="nui-button changeReasons" id="submitcg" onclick="onOk('')">
                                保存草稿
                            </a>
                          	<span style="display:inline-block;width:25px;"></span>
                            
                            <a class="nui-button"  onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <script type="text/javascript">
            nui.parse();
            var equiaxedgraphfileid="";
            var grid = nui.get("datagrid1");
        	var jdid = parent.nui.get("jdid").getValue();
        	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
        	if(isadmin=="true"){
        		$(".changeReasons").hide();
        		$("#save").show();
        	}
        	
        	nui.get("jd").setValue(jdid);
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
        	 nui.get('combobox1').setValue("N"+new Date().getFullYear()+""+(new Date().getMonth()+1));
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
		//判断是否是手机号
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
        

			
            function saveData(finishFirstActivityId){
				var zy=nui.get("zy").getValue();
				var xm=nui.get("xm").getValue();
				var mob=nui.get("mob").getValue();
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                form.validate();
				if(finishFirstActivityId!=''){
                	if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
				}
                nui.get("#submit").setEnabled(false);
                nui.get("#submitcg").setEnabled(false);
                
                
                //保存
                /* var urlStr = "com.cgn.itmp.weldingmanagement.weldingapplybiz.addWeldingapply.biz.ext"; */
               var urlStr= "com.cgn.itmp.weldingmanagement.weldingapplybiz.addWeldingapplyByObj.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                
                
               
		       
		        var allInfo = {};
		        allInfo.isadmin=isadmin;
		        allInfo.processInstName = "焊接管理_焊接申请_新增";
		        allInfo.processInstDesc = "焊接管理_焊接申请_新增";
		        allInfo.modelFlag = "1";
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processDefName = "com.cgn.itmp.weldingmanagement.Weldingapply.impl.weldingapplyadd";
                var data = form.getData(false,true);
                 if(finishFirstActivityId!=''){
                 	data.weldingapply.isdel="0";
                 }else{
                 	data.weldingapply.isdel="3";
                 }
//                 if(data.weldingapply.isdel=="3"){
//                 	data.weldingapply.isdel="0";
//                 	 urlStr = "com.cgn.itmp.weldingmanagement.weldingapplybiz.updateWeldingapplyBycg.biz.ext";
//                 }
                
                
                data.weldingapply.contact=zy+","+xm+","+mob;
                data.weldingapply.jhry=nui.get("jhry").text;
                data.weldingapply.ccry=nui.get("ccry").value;
                data.weldingapply.fildid = nui.get("fildid").value;
				if(equiaxedgraphfileid==""){
				}else{
					data.weldingapply.equiaxedgraphfileid = equiaxedgraphfileid;
				}
				if(isadmin=="true"){
					data.weldingapply.status="YSP";
	            }else{
	            	if(finishFirstActivityId==""){
	            		data.weldingapply.status="DTJ";	
	            		data.weldingapply.isdel="3";
	            	}else{
	            		data.weldingapply.status="SPZ";	
	            	}
	            }
				allInfo.data = data.weldingapply;
				
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
                
                var json = nui.encode(allInfo);
// 				if(pageType=="add"||pageType=="add1"){
// 					alert("进入");
// 					json=nui.encode({data:data.weldingapply,entity:"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply"});
					 
// 				}
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                            CloseWindow("saveSuccess");
                        }else{
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    //CloseWindow("saveFailed");
                                	nui.get("tj").setEnabled(true);
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 nui.get("#submit").setEnabled(true);
                nui.get("#submitcg").setEnabled(true);
							});
						 }
                        });
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
                            for (var i=0;i<strs.length ;i++ ){
                            	nui.get("zy").setValue(strs[0]);
                            	nui.get("xm").setValue(strs[1]);
                            	nui.get("mob").setValue(strs[2]);
                            }
						}
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                        	nui.get("ticketnumber").setValue(data.record.weldingapply.ticketnumber);
					        nui.get("ticketnumber").setText(data.record.weldingapply.ticketnumber);
                        	if(isadmin=="false"){
                        	$(".changeReasons_yy").show();                        		
                        	}
                            var json = infos.record;
                            if(json.weldingapply.fileRealName!=null){
                             nui.get("fileName").setText(json.weldingapply.fileRealName);                            	
                            }
						 if(json.weldingapply.jzstatus=="日常(N)"){
                            nui.get("countryCombo").setValue("日常(N)");
        	 				nui.get('combobox1').setValue("N"+new Date().getFullYear()+""+(new Date().getMonth()+1));
        	 				nui.get('combobox1').setReadOnly(true);
                        }else if(json.weldingapply.jzstatus=="大修(O)"){
	                            nui.get("countryCombo").setValue("大修(O)");
                        }
	                        chec();
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                        }
                         //如果是点击申请添加带数据类型页面
                        if (infos.pageType == "add") {
                        	nui.get("ticketnumber").setValue(data.record.weldingapply.ticketnumber);
					        nui.get("ticketnumber").setText(data.record.weldingapply.ticketnumber);
                            var json = infos.record;
                             nui.get("equiaxedgraphfileid").setValue(json.weldingapply.equiaxedgraphfileid);
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            chec();
                        if(json.weldingapply.jzstatus=="日常(N)"){
                            nui.get("countryCombo").setValue("日常(N)");
        	 				nui.get('combobox1').setValue("N"+new Date().getFullYear()+""+(new Date().getMonth()+1));
                            nui.get('combobox1').setReadOnly(true);
                        }else if(json.weldingapply.jzstatus=="大修(O)"){
							nui.get("countryCombo").setValue("大修(O)");
                        }
                            form.setChanged(false);
                           
                        }
//                          if(infos.pageType == "add"||infos.pageType == "add1"){
//                         		 var form = new nui.Form("#dataform1");//将普通form转为nui的form
//                             form.setData(json);
//                         } 
						nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
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
					
                    //确定保存或更新
                    function onOk(finishFirstActivityId) {
                        saveData(finishFirstActivityId);
                    }

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
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
					//主票号
                      function onBeforeLoadezpH(e) {
					        e.data.jd = jdid;
					    }
    	
                </script>
            </body>
        </html>
