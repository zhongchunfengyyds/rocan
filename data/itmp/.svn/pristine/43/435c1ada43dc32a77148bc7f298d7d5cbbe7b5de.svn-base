<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-16 16:22:13
- Description:
    --%>
      <%

    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dateTime = df.format(new Date());
    IUserObject cu = CommonUtil.getUserObject();
    String username = cu.getUserRealName();
%>
    <head>
        <title>
           单焊缝模板
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
        <style type="text/css">
        	#cbll .mini-checkboxlist-td{
	     		border: 0px!important;
	     	}
	     	#cbll table tr td{
	     		border: 0px!important;
	     		width: 20%;
	     	}
	     	.temp-table{
	     		height:65px;width: 96%; border: 0px;resize:none!important;
	     	}
        </style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <input name="uid" class="nui-hidden"/>
        <input name="qnum" class="nui-hidden"/>
         <input name="describe" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <div class="nui-hidden" name="quality.uuid">
            </div>
            <div class="nui-hidden" name="quality.isdel" value="0">
            </div>
            <input class="nui-hidden" name="quality.uuid"/>
            <table id="table" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">                
                     <!--  <input id="jd" class="nui-dictcombobox hidden" name="quality.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                        <input class="nui-dictcombobox hidden" name="quality.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id"/> 
                        <input class="nui-hidden" name="quality.rounds" required="true" requiredErrorText="大修轮次不能为空"/>-->
                <tr>
                	<td class="form_label" >
                   NDNP
                    </td>
                    <td colspan="4" style="text-align:center">
                        	焊接质量计划(WQP)
                        	 <!-- <input class="nui-textbox" style="width:100%" name="quality.name" required="true" requiredErrorText="必填项不能为空" emptyText="请输入" /> -->
                    </td>
                    <td class="form_label">
                   	焊接质量计划编号
                    </td>
                      <td colspan="1" style="width: 10%">
                        <input class="nui-textbox" style="width:100%" name="quality.qualitynumber" 
                        readonly="readonly" required="true" requiredErrorText="焊接质量计划编号不能为空" emptyText="请输入焊接质量计划编号"  />
                    </td>
                    <td class="form_label">
                  	主票号
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  onvalidation="hasIllegalChar(e,255,true,true)" style="width:100%" name="quality.ticketnumber" 
                        required="true" requiredErrorText="主票号不能为空" emptyText="请输入主票号" />
                    </td>
                    <td class="form_label">
                  	功能位置
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" name="quality.position" 
                        required="true"  onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="功能位置不能为空" emptyText="请输入功能位置" />
                    </td>
                   </tr>
                   <tr>
                	<td class="form_label">
                        被焊母材
                    </td>
                    
                        <td class="form_label">
                       	部件1
                    	</td>
                    	<td colspan="1">
                        	<input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%" name="quality.uppername"
                        	 required="true" requiredErrorText="部件1不能为空" emptyText="请输入部件1" />
                    	</td>
                    	
                    	<td class="form_label">
                        	部件2
                   		 </td>
                    	<td colspan="1">
                        <input class="nui-textbox" style="width:100%" 
                        name="quality.downname" onvalidation="hasIllegalChar(e,100,true,true)" required="true" requiredErrorText="部件2不能为空" emptyText="请输入部件2" />
                    </td>
                    
                    <td class="form_label">
                       图纸/版本
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%" name="quality.equiaxedgraph" 
                        required="true" requiredErrorText="图纸/版本不能为空" emptyText="请输入图纸/版本" />
                    </td>
                    
                    
                    <td class="form_label">
                        焊缝编码
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%" name="quality.weldnumber" required="true"
                         requiredErrorText="焊缝编码不能为空" emptyText="请输入焊缝编码" />
                    </td>
                     <td class="form_label">
                        接头形式
                    </td>
                    <td colspan="1">
                    <input id="formCombo" name="quality.form" class="nui-dictcombobox"   dictTypeId="JTXS" style="width:100%;"
                     required="true" requiredErrorText="接头形式不能为空" emptyText="请输入接头形式" />
                    </td>
                    </tr>
               <tr>
                    <td class="form_label">
                      接口尺寸
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" style="width:100%" name="quality.component1interfacesize" 
                        required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="接口尺寸不能为空" emptyText="请输入接口尺寸" />
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" style="width:100%" name="quality.component2interfacesize" 
                        required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="接口尺寸不能为空" emptyText="请输入接口尺寸" />
                    </td>
                      <td class="form_label">
                      焊接工艺卡编号/版本 
                    </td>
                    <td colspan="1">
                       <!--  <div name="quality.cardnumber_edtion" id="combobox1" class="nui-combobox" style="width:100%;" 
                         popupWidth="150" textField="name" valueField="id"
                          onvaluechanged="bhonvalueChanged" url=""  multiSelect="false" dataField="jsonObject" 
                          required="true" requiredErrorText="焊接工艺卡编号/版本不能为空" emptyText="请选择焊接工艺卡编号/版本"  >     
						</div> -->
						<input id="btnEdit1" class="nui-buttonedit" onbuttonclick="onProcessCardButtonEdit" 
						name="quality.cardnumber_edtion" required="true"  onblur="cardCheckValue" onvalidation="hasIllegalChar(e,100,true,true)"
						requiredErrorText="焊接工艺卡编号/版本不能为空" emptyText="请选择焊接工艺卡编号/版本" style="width:100%;"/>
                    </td>
                    <td class="form_label">
                      焊接方法
                    </td>
                    <td colspan="1">
                    	<!-- <div name="quality.welding_method" id="combobox2" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="false"  required="true" requiredErrorText="焊接方法不能为空" emptyText="请选择焊接方法" 
					     dataField="jsonObject" >    
						</div> -->
						
						<input class="nui-textbox" id="weldingMethod" name="quality.welding_method" 
						style="width:100%" onvalidation="hasIllegalChar(e,100,true,true)" readonly="readonly" required="true" requiredErrorText="焊接方法不能为空" emptyText="请选择焊接方法" />
                    </td>
                    <td class="form_label">
                      地理位置
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" name="quality.geographicalposition" 
                        required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="地理位置不能为空" emptyText="请输入地理位置" />
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                       接口厚度
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" style="width:100%" name="quality.component1interfacethickness" 
                        required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="部件1接口厚度不能为空" emptyText="请输入部件1接口厚度" />
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" style="width:100%" name="quality.component2interfacethickness" 
                        required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="部件2接口厚度不能为空" emptyText="请输入部件2接口厚度" />
                    </td>
                    <td class="form_label">
                       制造级别
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" name="quality.level" required="true" 
                        requiredErrorText="制造级别不能为空" onvalidation="hasIllegalChar(e,100,true,true)" emptyText="请输入制造级别" />
                    </td>
                    <td class="form_label">
                      焊接填充材料
                    </td>
                    <td colspan="1">
                    	<!-- <div name="quality.model_specifications" onvaluechanged="tconvalueChanged" id="combobox3" 
                    	class="nui-combobox" required="true" requiredErrorText="焊接填充材料不能为空" emptyText="请选择焊接填充材料"  style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="false"  
					     dataField="jsonObject" >     
						</div> -->
						<input id="modelid" type="text" class="nui-hidden">
						<input id="btnEdit2" class="nui-buttonedit" onbuttonclick="onModelButtonEdit"  onvalidation="hasIllegalChar(e,100,true,true)"
						name="quality.model_specifications" required="true" onblur="modelCheckValue"
						requiredErrorText="焊接填充材料不能为空" emptyText="请选择焊接填充材料" style="width:100%;"/>
                    </td>
                    <td class="form_label">
                       批号
                    </td>
                    <td colspan="1">
                    	<!-- <div name="quality.batchnumber" id="combobox4" class="nui-combobox" required="true" 
                    	requiredErrorText="批号不能为空" emptyText="请选择批号"  style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="false"  
					     dataField="jsonObject" >     
						</div> -->
						<input id="batchnumber" name="quality.batchnumber" class="nui-textbox" required="true"  onvalidation="hasIllegalChar(e,100,true,true)"
                    	requiredErrorText="批号不能为空" emptyText="请选择批号" readonly="readonly" style="width:100%;" />
                    </td>
                    
             	</tr>
             	<tr>
                    <td class="form_label">
                        母材材质
                    </td>
                    <td colspan="2">
                   			<input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%" name="quality.component1material"
                   			 required="true" requiredErrorText="部件1母材材质不能为空" emptyText="请输入部件1母材材质" />
                    </td>
                    <td colspan="2">
                   			<input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%" name="quality.component2material"
                   			 required="true" requiredErrorText="部件1母材材质不能为空" emptyText="请输入部件2母材材质" />
                    </td>
                    
                    <td class="form_label">
                         焊工 
                    </td>
                    <td colspan="1">
                    </td>
                    <td class="form_label">
                      焊工代码 
                    </td>
                    <td colspan="3">
                    </td>
             	</tr>
             	
             	<tr>
             		<td colspan="11">
	             		<div style="width: 99%;">
		             		<a class="mini-button" onclick="addtemp()" plain="true" >增加</a>
		             		<a class="mini-button" onclick="testq()" plain="true" >删除</a>
	             		（动态添加字段）
	             		</div>
	             		<div style="width: 100%">
		             		<table style="width: 100%" id="dynamicColumn">
		             			
		             		</table>
	             		</div>
             		</td>
         		</tr>
         		<tr>
         			<!-- 工序模板  -->
             	<tr>
             		<td colspan="1" class="form_label">
             			请选择工序模板：
             		</td>
             		<td colspan="10">
             			<div name="quality.workingprocedure" id="combobox5" class="nui-combobox" style="width:150px;"  popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="false" dataField="jsonObject" onvaluechanged="chooseTemp">     
						</div>
						<span id="processOpe">
		             		<a class="mini-button" onclick="tempTableRowAdd()" plain="true" >工序增加</a>
		             		<a class="mini-button" onclick="tempTableRowDel()" plain="true" >工序删除</a>
	             		</span>
             		</td>
             	</tr>
             	<tr id="template0">
                    <td class="form_label" colspan="1" style="padding:0px;">
                        	<table style="width:100%;height:100%;">
                        		<tr>
                        			<td style="width:50%;border:0px;">
                        			</td>
                        			<td style="width:50%;border:0px;text-align: center;border-left: 1px solid #cad9ea;">
                        				工序
                        			</td>
                        		</tr>
                        	</table>
                    </td>
                    <td class="form_label" colspan="2">
                        	工作步骤
                    </td>
                    <td class="form_label" colspan="1">
                        	文件编号
                    </td>
                    <td class="form_label" colspan="1">
                        	版本
                    </td>
                    <td class="form_label" colspan="1">
                    	<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
	                        <tr>
	                        	<td colspan="2" style="text-align:center">操作者</td>
	                        </tr>
	                        <tr>
	                        	<td style="text-align:center">执行人</td>
	                        	<td style="text-align:center">日期</td>
	                        </tr>
                        </table>
                    </td>
                    
                    <td class="form_label" colspan="3">
                    
                    	<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
	                        <tr>
	                        	<td style="text-align:center;width:50%;height:50%">QC1 承包商/执行部门</td>
	                        	<td style="text-align:center;width:50%;height:50%">QC2独立检查:焊接/NDT</td>
	                        </tr>
	                        <tr>
	                        	<td style="text-align:center">
									<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
										<tr>
										     <td style="text-align:center;padding: 0px;border-left-width: 0px;border-top-width: 00px;border-bottom-width: 0px;">控制点</td>
											<td style="text-align:center;padding: 0px;border-left-width: 0px;border-top-width: 00px;border-bottom-width: 0px;"">签名</td>
											<td style="text-align:center;padding: 0px;border: 0px;">日期</td>
										</tr>
									</table>
								</td>
								
	                        	<td style="text-align:center">
									<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
										<tr>
										    <td style="text-align:center;padding: 0px;border-left-width: 0px;border-top-width: 00px;border-bottom-width: 0px;">控制点</td>
											<td style="text-align:center;padding: 0px;border-left-width: 0px;border-top-width: 00px;border-bottom-width: 0px;"">签名</td>
											<td style="text-align:center;padding: 0px;border: 0px;">日期</td>
										</tr>
									</table>
								</td>
								
	                        </tr>
                        </table>
                    </td>
                    <td class="form_label" colspan="2">
                        	<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
									<tr>
									     <td style="text-align:center">
									     <div id="cbll" class="mini-checkboxlist" repeatItems="3" repeatLayout="table"
									        textField="text" valueField="id" value="" name="quality.name"
									        data="[{id:'QSR',text:'QSR'},{id:'QR',text:'QR'},{id:'NQR',text:'NQR'}]">
									    </div>
											<!-- QSR: <input class="nui-checkbox" name="quality.name" value="QSR" style="width:100%" > &nbsp;&nbsp;
											QR:  <input class="nui-checkbox" name="quality.name" value="QR" style="width:100%" > &nbsp;&nbsp; 
											NQR: <input class="nui-checkbox" name="quality.name" value="NQR" style="width:100%"> &nbsp;&nbsp; -->
										</td>
									</tr>
									<tr>
									     <td style="text-align:center">说明</td>
									</tr>
							</table>
                    </td>
             	</tr>
             	
             	<!-- 工序模板  END-->
             	
             	<tr>
             		<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
             			<tr>
             				<td style="text-align:left" colspan="2">
             				
             				编写:
             				</td>
             				<td style="text-align:left" colspan="1">
             				
             				审查:
             				</td>
             				<td style="text-align:left" colspan="1">
             				
             				复核:
             				</td>
             				<td style="text-align:left;width:10%" class="form_label">
             				
             				工作负责人:
             				</td>
             				<td style="text-align:left" colspan="1">
             				</td>
             			</tr>
             		</table>
             	</tr>
             	<input class="nui-hidden" id="jd" name="quality.jd"/>
             	<input class="nui-hidden" id="jz" name="quality.jz"/>
             	<input class="nui-hidden" name="quality.rounds"/>
             	<input class="nui-hidden" name="quality.createtime"/> 
             	<input class="nui-hidden" name="quality.major"/>
             	<input class="nui-hidden" name="quality.dynamicgeneration"/>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                        <div style="display: none;"> 
	                       	<input class="" name="applicant" id="applicant" value="<%=username %>" />
							<input class="" name="applytime" id="applytime" value="<%=dateTime%>" />
	                       </div>
                        	<a class="nui-button" id="draftBox" onclick="saveTempTableData()">保存至草稿箱</a>
                        	<span style="display:inline-block;width:25px;"> </span>
                            <a class="nui-button" id="nextStep" onclick="onOk()">下一步</a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" id="cancel" onclick="onCancel()">取消</a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
			//动态添加行(待完成)
			var jdid=getCookie('jdid');
			$("#processOpe").hide();
			var k=1;
            function addtemp(){
	            if(k >1 && ( $("#qualityname"+(k-1)).val() =="" || $("#qualityvalue"+(k-1)).val() =="" )){
	            	nui.alert("请输入添加行的字段名称或字段值！")
	            	return;
	            } 
            	if(k==5){
	            	nui.alert("最多附加4行!")
	            	return;
            	}
            	
				var dynamicColumn = $("#dynamicColumn");
				dynamicColumn.append("<tr>"+
		             				"<td class='form_label'>字段名称</td>"+
		             				"<td><input class='nui-textbox'  onvalidation='hasIllegalChar(e,255,false,true)' style='width:100%' id='qualityname"+k+"' name='quality.name"+k+"' /></td>"+
		             				"<td class='form_label'>字段值</td>"+
		             				"<td><input class='nui-textbox' onvalidation='hasIllegalChar(e,255,false,true)' style='width:100%' id='qualityvalue"+k+"' name='quality.value"+k+"' /></td>"+
		             				"</tr>");            	
            	
				k++;
            }
            
            //删除行
			function testq(){
				$("#dynamicColumn tr:last").remove();
				k--;
			}
			//WPS编号”和“版本设置焊接方法值
			function bhonvalueChanged(e){
				var value=e.value;
				var arr=value.split("/");
				var wpsnum=arr[0];
				var edtion=arr[1];
				if(wpsnum!=""&&edtion!=""){
				nui.get('combobox2').setAjaxType("POST");
	            nui.get('combobox2').load("com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getWeldingMethod.biz.ext?base="+jdid+"&card_number="+wpsnum+"&edition="+edtion);
				nui.get('combobox2').select(0);
				}
			}
			//焊接填充材料
			function tconvalueChanged(e){
					var value=e.value;
					var arr=value.split("+");
					if(arr!=""){
					var model=arr[0].substring(1,arr[0].length+1);
					var specifications=arr[1].substring(0,arr[1].length-1);
						if(model!=""&&specifications!=""){
						nui.get('combobox4').setAjaxType("POST");
	              		nui.get('combobox4').load("com.cgn.itmp.weldingmanagement.materialbiz.getMaterialBatchNumber.biz.ext?base="+jdid+"&model="+model+"&specifications="+specifications);
						nui.get('combobox4').select(0);
						}
					}
			}
			
			//焊接工艺卡判断是否有值
			function cardCheckValue(e){
				if(e.source.value == ''){
					$("#btnEdit1").find(".mini-errorIcon").css("display","block");
					$("#btnEdit1").find(".mini-buttonedit-border").css("margin-right","18px");
					$("#weldingMethod").find(".mini-errorIcon").css("display","block");
					$("#weldingMethod").find(".mini-textbox-border").css("margin-right","18px");
				}else{
					$("#btnEdit1").find(".mini-errorIcon").css("display","none");
	                $("#btnEdit1").find(".mini-buttonedit-border").css("margin-right","0px");
	                $("#weldingMethod").find(".mini-errorIcon").css("display","none");
	                $("#weldingMethod").find(".mini-textbox-border").css("margin-right","0px");
				}
			}
			
			//焊接工艺卡弹出选择框
			function onProcessCardButtonEdit(e) {
	            var btnEdit = this;
				var ids;
	            nui.open({
	            	showMaxButton : true,
	                url: "/itmp/weldingmanagement/Apply/weldingprocesscardSelectPage.jsp",                          
	                title: "选择焊接工艺卡",
	                width: 900,
	                height:400,
	                onload : function() {
							var iframe = this.getIFrameEl();
							if(typeof(e.source.value)=='undefined'){
								ids="";
							}else{
								ids=e.source.value;
							}
							iframe.contentWindow.SetData(ids.split("/")[0]);
						},
	                ondestroy: function (action) {
	                    if (action == "ok") {
	                        var iframe = this.getIFrameEl();
	                        var data = iframe.contentWindow.GetData();
	                        data = mini.clone(data);
	                        btnEdit.setValue(data.cardNumber+'/'+data.edition);
	                        btnEdit.setText(data.cardNumber+'/'+data.edition);
	                        nui.get("weldingMethod").setValue(data.weldingMethod);
	                        $("#btnEdit1").find(".mini-errorIcon").css("display","none");
	                        $("#btnEdit1").find(".mini-buttonedit-border").css("margin-right","0px");
	                        $("#weldingMethod").find(".mini-errorIcon").css("display","none");
	                		$("#weldingMethod").find(".mini-textbox-border").css("margin-right","0px");
	                   }
	                }
	            });            
	        }  
			
			//焊接填充材料判断是否有值
			function modelCheckValue(e){
				if(e.source.value == ''){
					$("#btnEdit2").find(".mini-errorIcon").css("display","block");
					$("#btnEdit2").find(".mini-buttonedit-border").css("margin-right","18px");
					$("#batchnumber").find(".mini-errorIcon").css("display","block");
					$("#batchnumber").find(".mini-textbox-border").css("margin-right","18px");
				}else{
					$("#btnEdit2").find(".mini-errorIcon").css("display","none");
	                $("#btnEdit2").find(".mini-buttonedit-border").css("margin-right","0px");
	                $("#batchnumber").find(".mini-errorIcon").css("display","none");
					$("#batchnumber").find(".mini-textbox-border").css("margin-right","0px");
				}
			}
			
			//焊接填充材料 - 弹出框
			function onModelButtonEdit(e){
				 var btnEdit = this;
				var ids;
	            nui.open({
	            	showMaxButton : true,
	                url: "/itmp/weldingmanagement/Apply/materiaSelectPage.jsp",                          
	                title: "选择焊接填充材料",
	                width: 900,
	                height:400,
	                onload : function() {
							var iframe = this.getIFrameEl();
							if(typeof(e.source.value)=='undefined'){
								ids="";
							}else{
								ids = nui.get("modelid").getValue();
							}
							iframe.contentWindow.SetData(ids);
						},
	                ondestroy: function (action) {
	                    if (action == "ok") {
	                        var iframe = this.getIFrameEl();
	                        var data = iframe.contentWindow.GetData();
	                        data = mini.clone(data);
	                        btnEdit.setValue(data.model+' '+data.specifications);
	                        btnEdit.setText(data.model+' '+data.specifications);
	                        nui.get("batchnumber").setValue(data.batchnumber);
	                        nui.get("modelid").setValue(data.uuid);
	                        $("#btnEdit2").find(".mini-errorIcon").css("display","none");
	                        $("#btnEdit2").find(".mini-buttonedit-border").css("margin-right","0px");
	                        $("#batchnumber").find(".mini-errorIcon").css("display","none");
							$("#batchnumber").find(".mini-textbox-border").css("margin-right","0px");
	                    }
	                }
	            });            
			}
			
            function saveData(){
               /*  var form = new nui.Form("#dataform1"); */
               /*  form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.weldingmanagement.qualitybiz.addQualityOneByApply.biz.ext"; */
                
               /*  var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.weldingmanagement.qualitybiz.updateQuality.biz.ext";
                } */
                
                /* form.validate();
                if(form.isValid()==false) return;
				var uid = nui.getbyName("uid").getValue();
				var qnum = nui.getbyName("qnum").getValue();
				
                var data = form.getData(false,true);
                var json = nui.encode({data:data.quality,entity:"com.cgn.itmp.weldingmanagement.Quality.Quality",uid:uid,qnum:qnum});
				
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){ */
                    		
                        /* }
                        }); */
                        
                        
                        
                        var tempTable = $("[id^=template]");
						var tempTableNumber = tempTable.length;
						if(tempTableNumber == 1){
							checkforword(null);
							return;
						}
						var weldingProcessStepss = [];
						for(var i = 1; i < tempTableNumber; i++){
						var id= parseInt(tempTable[i].id.replace(/[^0-9]/ig,""));
							weldingProcessStepss.push({
								orders : i,
								steps : $("#temp_content_"+id+"_1").val(), 
								filenumber : $("#temp_content_"+id+"_2").val(),
								version : $("#temp_content_"+id+"_3").val()
							});
						}
						var process = {};
						process.jd = jdid;
						process.isdel = '11';
						process.processnam = '用户自定义工序步骤';
						process.weldingProcessStepss = weldingProcessStepss;
						
						nui.get("draftBox").setEnabled(false);
						nui.get("nextStep").setEnabled(false);
						nui.get("cancel").setEnabled(false); 
						$.ajax({
							url : 'com.cgn.itmp.weldingmanagement.processesbiz.saveCustomProcess.biz.ext',
							type : 'POST',
							data : nui.encode({data : process}),
							cache : false,
							contentType : 'text/json',
							success : function(text) {
								var returnJson = nui.decode(text);
								if (returnJson.exception == null) {
									checkforword(returnJson.result);
									
								} else {
									nui.get("draftBox").setEnabled(true);
									nui.get("nextStep").setEnabled(true);
									nui.get("cancel").setEnabled(true); 
									nui.alert("保存失败", "系统提示", function(action) {
										if (action == "ok" || action == "close") {
											//CloseWindow("saveFailed");
										}
									});
								}
							},error: function (jqXHR, textStatus, errorThrown) {
												 nui.alert(jqXHR.responseText,'错误',function (action) {
												return null;
												});
											 }
						});
                        
                    }
					
					function checkforword(workingprocedure){
					//动态生成行数据获取
							
					       var form = new nui.Form("#dataform1");
                		   form.setChanged(false);
                		   form.validate();
						   if(form.isValid()==false){
								 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
								 nui.get("draftBox").setEnabled(true);
									nui.get("nextStep").setEnabled(true);
									nui.get("cancel").setEnabled(true); 
								 return;
							}
                		   
						   var data1 = form.getData(false,true);
						   if(k >= 2){
						   		for(var i = 1; i < k; i++){
						   			if($("#qualityname"+i).val() !="" && $("#qualityvalue"+i).val() !="" ){
						   				data1.quality["name"+i] = $("#qualityname"+i).val();
						   				data1.quality["value"+i] = $("#qualityvalue"+i).val();
						   			}
						   		}
						   }
						   var uid = nui.getbyName("uid").getValue();
							var qnum = nui.getbyName("qnum").getValue();
							data1.quality.describe = nui.getbyName("describe").getValue();
							
							 if(workingprocedure != null || typeof(workingprocedure) != 'undefined'){
								data1.quality.workingprocedure = workingprocedure;
							}
							
						nui.open({
			                    url: "/itmp/weldingmanagement/Apply/WeldingapplyCreateOneQuality.jsp",
			                    title: "创建质量计划-单焊接WQP", width: 1032, height: 470,
			                    onload: function () {//弹出页面加载完成
			                    var iframe = this.getIFrameEl();
			                    var data = {pageType:"addone",record:{quality:data1.quality},uid:uid,qnum:qnum};//传入页面的json数据
			                    	iframe.contentWindow.setFormData(data);
			                    },
			                    ondestroy: function (action) {//弹出页面关闭前
			                    	var iframe = this.getIFrameEl();
									var close=iframe.contentWindow.getData();
									if(close!=2){
										if(action != 'cancel' && action != 'close'){
											if(close == 1){
												CloseWindow("saveSuccess");
											}else{
												CloseWindow("cgx");
											}
										}
									}
									
			                	}
			                });
                  
					}
					
					function isIE(){
						if(!!window.ActiveXObject || 'ActiveXObject' in window){
							return true;
						}else{
							return false;
						}
					}
					
					function isIE11(){
						if((/Trident\/7\./).test(navigator.userAgent)){
							return true;
						}else{
							return false;
						}
					}
					
					//工序模板动态添加行
					function tempTableRowAdd(){
						var tempNumber = $("[id^=template]").length;
						if(tempNumber == 0){
							return;
						}
						var lastId = $("[id^=template]")[tempNumber-1].id;
						var num= parseInt(lastId.replace(/[^0-9]/ig,""));
						$("#"+lastId).after("<tr id='template"+(num+1)+"'>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<table style='width:100%;height:100%;'><tr>"+
				                    		"<td style='width:50%;border:0px;text-align: center;'><input type='checkbox' name='checkboxs' value='template"+(num+1)+"'/></td>"+
				                    	"<td style='width:50%;border:0px;text-align: center;border-left: 1px solid #cad9ea;'>"+(num+1)+"</td></tr></table></td>"+
				                    "<td colspan='2' style='height:65px;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(num+1)+"_1'></textarea></td>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(num+1)+"_2'></textarea></td>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(num+1)+"_3'></textarea></td>"+
				                    "<td class='form_label' colspan='1'>"+
				                    	"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
					                     "   <tr>"+
					                    "    	<td style='text-align:center'></td>"+
					                   "     	<td style='text-align:center'></td>"+
					                  "      </tr>"+
				                     "   </table>"+
				                    "</td>"+
				                    "<td class='form_label' colspan='3'>"+             
				                    	"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
					                        "<tr>"+
					                        	"<td style='text-align:center'>"+
													"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
													"	<tr>"+
													"	     <td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
													"		<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
													"		<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;border-right-width: 0px;padding: 0px'></td>"+
													"	</tr>"+
													"</table>"+
												"</td>"+
					                        	"<td style='text-align:center'>"+							
													"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
														"<tr>"+
														"      <td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
														"	<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
														"	<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;border-right-width: 0px;padding: 0px'></td>"+
													"	</tr>"+
													"</table>"+
												"</td>"+
					                       " </tr>"+
				                        "</table>"+
				                    "</td>"+
				                    "<td class='form_label' colspan='2'></td>"+
				             	"</tr>");
					}
					//工序模板动态删除行
					function tempTableRowDel(){
						var checkboxs = $("input[name='checkboxs']:checked");
						var len = checkboxs.length; 
						if(len == 0){
							nui.alert("请选择删除的记录");
							return;
						}
						
						for(var i = 0; i < len; i++){
							$("#"+checkboxs[i].value).remove();
						}
						sortSteps();
					}
					
					//工序步骤排序
					function sortSteps(){
						var temps = $("[id^=template]");
						if(temps.length == 1){
							return;
						}
						var stepsArr = [];
						for(var i = 1; i < temps.length; i++){
							var id = $("[id^=template]")[i].id;
							var lastNum = id.replace(/[^0-9]/ig,"");
							stepsArr.push({
								step : $("#temp_content_"+lastNum+"_1").val(),
								number: $("#temp_content_"+lastNum+"_2").val(),
								version: $("#temp_content_"+lastNum+"_3").val() 	
							})
						}
						
						if(temps.length > 1){
                    		for(var j = 1;j< temps.length; j++){
                    			if(isIE() || isIE11()){
                    				temps[j].removeNode(true);
                    			}else{
                    				temps[j].remove();
                    			}
                    		}
                    	} 
						
						var tempNumber = $("[id^=template]").length;
						if(tempNumber == 0){
							return;
						}
						var lastId = $("[id^=template]")[tempNumber-1].id;
						var num= parseInt(lastId.replace(/[^0-9]/ig,""));
						
						for(var j = 0; j < stepsArr.length; j++){
							$("#template"+num).after("<tr id='template"+(num+1)+"'>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<table style='width:100%;height:100%;'><tr>"+
				                    		"<td style='width:50%;border:0px;text-align: center;'><input type='checkbox' name='checkboxs' value='template"+(num+1)+"'/></td>"+
				                    	"<td style='width:50%;border:0px;text-align: center;border-left: 1px solid #cad9ea;'>"+(num+1)+"</td></tr></table></td>"+
				                    "<td colspan='2' style='height:65px;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(num+1)+"_1'>"+stepsArr[j].step+"</textarea></td>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(num+1)+"_2'>"+stepsArr[j].number+"</textarea></td>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(num+1)+"_3'>"+stepsArr[j].version+"</textarea></td>"+
				                    "<td class='form_label' colspan='1'>"+
				                    	"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
					                     "   <tr>"+
					                    "    	<td style='text-align:center'></td>"+
					                   "     	<td style='text-align:center'></td>"+
					                  "      </tr>"+
				                     "   </table>"+
				                    "</td>"+
				                    "<td class='form_label' colspan='3'>"+             
				                    	"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
					                        "<tr>"+
					                        	"<td style='text-align:center'>"+
													"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
													"	<tr>"+
													"	     <td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
													"		<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
													"		<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;border-right-width: 0px;padding: 0px'></td>"+
													"	</tr>"+
													"</table>"+
												"</td>"+
					                        	"<td style='text-align:center'>"+							
													"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
														"<tr>"+
														"      <td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
														"	<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
														"	<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;border-right-width: 0px;padding: 0px'></td>"+
													"	</tr>"+
													"</table>"+
												"</td>"+
					                       " </tr>"+
				                        "</table>"+
				                    "</td>"+
				                    "<td class='form_label' colspan='2'></td>"+
				             	"</tr>");
				             	num++;
						}
						
					}
				
					
					//工序模板数据带入
					function chooseTemp(e){
						$("#processOpe").show();
						var pid = e.value;
						$.ajax({
		                    url:"com.cgn.itmp.weldingmanagement.processesbiz.getProcessesStepsByPid.biz.ext",
		                    type:'POST',
		                    data:nui.encode({pid: pid}),
		                    async:true,
		                    contentType:'text/json',
		                    success:function(text){
		                    	var trs = $("[id^=template]");
		                    	if(trs.length > 1){
		                    		for(var j = 1;j< trs.length; j++){
		                    			if(isIE() || isIE11()){
		                    				trs[j].removeNode(true);
		                    			}else{
		                    				trs[j].remove();
		                    			}
		                    		}
		                    	} 
		                    		var steps = text.result;
		                    		/*
		                    			 工序模板改为可编辑表格
		                    		 */
		                    		for(var i = 0;i< steps.length; i++){
		                    			$("#template"+i).after("<tr id='template"+(i+1)+"'>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<table style='width:100%;height:100%;'><tr>"+
				                    		"<td style='width:50%;border:0px;text-align: center;'><input type='checkbox' name='checkboxs' value='template"+(i+1)+"'/></td>"+
				                    	"<td style='width:50%;border:0px;text-align: center;border-left: 1px solid #cad9ea;'>"+steps[i].orders+"</td></tr></table></td>"+
				                    "<td colspan='2' style='height:65px;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(i+1)+"_1'>"+steps[i].steps+"</textarea></td>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(i+1)+"_2'>"+(steps[i].filenumber==null?"":steps[i].filenumber)+"</textarea></td>"+
				                    "<td colspan='1' style='text-align:center;padding:0px;'>"+
				                    	"<textarea rows='4' class='temp-table' id='temp_content_"+(i+1)+"_3'>"+(steps[i].version==null?"":steps[i].version)+"</textarea></td>"+
				                    "<td class='form_label' colspan='1'>"+
				                    	"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
					                     "   <tr>"+
					                    "    	<td style='text-align:center'></td>"+
					                   "     	<td style='text-align:center'></td>"+
					                  "      </tr>"+
				                     "   </table>"+
				                    "</td>"+
				                    "<td class='form_label' colspan='3'>"+             
				                    	"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
					                        "<tr>"+
					                        	"<td style='text-align:center'>"+
													"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
													"	<tr>"+
													"	     <td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
													"		<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
													"		<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;border-right-width: 0px;padding: 0px'></td>"+
													"	</tr>"+
													"</table>"+
												"</td>"+
					                        	"<td style='text-align:center'>"+							
													"<table style='width:100%;height:100%;table-layout:fixed;' class='nui-form-table'>"+
														"<tr>"+
														"      <td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
														"	<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;padding: 0px'></td>"+
														"	<td style='text-align:center;border-top-width: 0px;border-bottom-width: 0px;border-left-width: 0px;border-right-width: 0px;padding: 0px'></td>"+
													"	</tr>"+
													"</table>"+
												"</td>"+
					                       " </tr>"+
				                        "</table>"+
				                    "</td>"+
				                    "<td class='form_label' colspan='2'></td>"+
				             	"</tr>");
		                    		}
		                        }
		                     });
					}
					
					//保存自定义工序数据
					function saveTempTableData(){
						var tempTable = $("[id^=template]");
						var tempTableNumber = tempTable.length;
						if(tempTableNumber == 1){
							saveToDraftBox(null);
							return;
						}
						var weldingProcessStepss = [];
						for(var i = 1; i < tempTableNumber; i++){
						var id= parseInt(tempTable[i].id.replace(/[^0-9]/ig,""));
							weldingProcessStepss.push({
								orders : i,
								steps : $("#temp_content_"+id+"_1").val(), 
								filenumber : $("#temp_content_"+id+"_2").val(),
								version : $("#temp_content_"+id+"_3").val()
							});
						}
						var process = {};
						process.jd = jdid;
						process.isdel = '11';
						process.processnam = '用户自定义工序步骤';
						process.weldingProcessStepss = weldingProcessStepss;
						
						nui.get("draftBox").setEnabled(false);
						nui.get("nextStep").setEnabled(false);
						nui.get("cancel").setEnabled(false); 
						$.ajax({
							url : 'com.cgn.itmp.weldingmanagement.processesbiz.saveCustomProcess.biz.ext',
							type : 'POST',
							data : nui.encode({data : process}),
							cache : false,
							contentType : 'text/json',
							success : function(text) {
								var returnJson = nui.decode(text);
								if (returnJson.exception == null) {
									saveToDraftBox(returnJson.result);
								} else {
									nui.get("draftBox").setEnabled(true);
									nui.get("nextStep").setEnabled(true);
									nui.get("cancel").setEnabled(true); 
									nui.alert("保存失败", "系统提示", function(action) {
										if (action == "ok" || action == "close") {
											//CloseWindow("saveFailed");
										}
									});
								}
							},error: function (jqXHR, textStatus, errorThrown) {
												 nui.alert(jqXHR.responseText,'错误',function (action) {
												return null;
												});
											 }
						});
					}
					
					
					//保存到草稿箱
					function saveToDraftBox(workingprocedure){
						//自定义工序保存返回uuid
						var form = new nui.Form("#dataform1");
                		   form.setChanged(false);
                		   /* form.validate();
						   if(form.isValid()==false){
								 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
								 return;
							} */
                		   
						   var data = form.getData(false,true);
						   if(k >= 2){
						   		for(var i = 1; i < k; i++){
						   			if($("#qualityname"+i).val() !="" && $("#qualityvalue"+i).val() !="" ){
						   				data.quality["name"+i] = $("#qualityname"+i).val();
						   				data.quality["value"+i] = $("#qualityvalue"+i).val();
						   			}
						   		}
						   }
                
				var uid = nui.getbyName("uid").getValue();
				var qnum = nui.getbyName("qnum").getValue();
                data.quality.describe = nui.getbyName("describe").getValue();
                data.quality.applicant = $("#applicant").val();
                data.quality.applytime = $("#applytime").val();
                data.quality.isdel = 1;
                
                if(workingprocedure != null || typeof(workingprocedure) != 'undefined'){
					data.quality.workingprocedure = workingprocedure;
				}
                
                var json = nui.encode({data:data.quality,entity:"com.cgn.itmp.weldingmanagement.Quality.Quality",uid:uid,qnum:qnum});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.qualitybiz.addQualityOneByApply.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	var returnJson = nui.decode(text);
                        if(returnJson.uuid != null && returnJson.uuid != ""){
	                   	 	openWorkFlow(returnJson.uuid,'');
                        }else{
                         	nui.get("draftBox").setEnabled(true);
								nui.get("nextStep").setEnabled(true);
								nui.get("cancel").setEnabled(true); 
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                }
                                });
                            }
                   	 	},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 nui.get("draftBox").setEnabled(true);
								nui.get("nextStep").setEnabled(true);
								nui.get("cancel").setEnabled(true); 
							});
						 }
                     });
                    }
			
					//启动工作流
					var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
					if(isadmin == 'true'){
						$("#draftBox").hide();
					}
					
					function openWorkFlow(uuid,finishFirstActivityId){
                    
	                    var allInfo = {};
	                    allInfo.uuid = uuid;
	                    //判断是否管理员
				        allInfo.isadmin = isadmin;
				        allInfo.finishFirstActivityId = finishFirstActivityId; 
				        allInfo.processInstName = "焊接申请_创建焊接质量计划(单焊缝WQP)_申请";
				        allInfo.processInstDesc = "焊接申请_创建焊接质量计划(单焊缝WQP)_申请";
				        //工作流视图url
				        allInfo.processDefName = "com.cgn.itmp.weldingmanagement.Weldingapply.CreateWeldingQualityPlan";
						var personInfo = {};
					   	if(finishFirstActivityId == ''){
					   		personInfo.wqpStatu = "DTJ";
					   	}else{
					   		personInfo.wqpStatu = "SCZ";
					   	}
					   	allInfo.personInfo = personInfo;
					   	json = nui.encode(allInfo);
					   	$.ajax({
							   	url:"com.cgn.itmp.weldingmanagement.qualitybiz.openWorkFlow.biz.ext",
								type : 'POST',
								data : json,
								cache : false,
								contentType : 'text/json',
								success : function(text) {
								nui.get("draftBox").setEnabled(true);
								nui.get("nextStep").setEnabled(true);
								nui.get("cancel").setEnabled(true); 
									var returnJson = nui.decode(text);
									if (returnJson.exception == null) {
										nui.alert("保存成功", "系统提示", function(action) {
											if (action == "ok" || action == "close") {
												CloseWindow("saveSuccess");
											}
										});
									} else {
										nui.alert("保存失败", "系统提示", function(action) {
											if (action == "ok" || action == "close") {
												CloseWindow("saveFailed");
											}
										});
									}
								}
							});
					}					
					
                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：addone表示单焊接创建wqp
                        //uid表示焊接申请的id，qnum表示焊接申请的WQP编号
                        nui.getbyName("pageType").setValue(infos.pageType);
						nui.getbyName("uid").setValue(infos.record.quality.uid);
						nui.getbyName("qnum").setValue(infos.record.quality.qualitynum);
						nui.getbyName("describe").setValue(infos.record.quality.describe);
                        //如果是点击编辑类型页面
                        if (infos.pageType == "addone") {
                        var loadingTip = new LoadingBox({str:"数据加载中...",left:"43%",top:"30%"});
                            var json = infos.record;
							var applyno=nui.encode({applyno:infos.record.quality.applyno});
							 $.ajax({
				                    url:"com.cgn.itmp.weldingmanagement.qualitybiz.getQualityNumber.biz.ext",
				                    type:'POST',
				                    data:applyno,
				                    async:true,
				                    contentType:'text/json',
				                    success:function(text){
				                        	json.quality.qualitynumber=text.qualitynum;
// 				                        	nui.get("formCombo").load(forms);
				                        	 var form = new nui.Form("#dataform1");//将普通form转为nui的form
					                            form.setData(json);
					                            form.setChanged(false);
					                            
					                             var jzid = parent.nui.get("jzid").getValue();
								        	var jdid = parent.nui.get("jdid").getValue();
								        	nui.get("jd").setValue(jdid);
								        	nui.get("jz").setValue(jzid);
								        	//nui.get('combobox1').setAjaxType("POST");
	              							//nui.get('combobox1').load("com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getWpsandEdition.biz.ext?base="+jdid);
	              							
	              							//nui.get('combobox3').setAjaxType("POST");
	              							//nui.get('combobox3').load("com.cgn.itmp.weldingmanagement.materialbiz.getMaterialsModelSpecifications.biz.ext?base="+jdid);
	              							
	              							nui.get('combobox5').setAjaxType("POST");
	              							nui.get('combobox5').load("com.cgn.itmp.weldingmanagement.processesbiz.getProcessesIds.biz.ext?jdid="+jdid);
				                        	loadingTip.destroy();
				                        }
				                     });
				                     
                        }
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
