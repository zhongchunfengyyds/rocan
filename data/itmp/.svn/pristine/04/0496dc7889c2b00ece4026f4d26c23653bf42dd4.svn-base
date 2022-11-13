<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-16 16:22:13
- Description:
    --%>
<head>
<title>单焊缝模板</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
</script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes/default/css/mdialog.css" />
<script src="<%=request.getContextPath()%>/scripts/mdialog.js"></script>
<style type="text/css">
	#cbll .mini-checkboxlist-td{
 		border: 0px!important;
 	}
 	#cbll table tr td{
 		border: 0px!important;
 		width: 20%;
 	}
 	
 	.asLabel .mini-textbox-border,
    .asLabel .mini-textbox-input,
    .asLabel .mini-buttonedit-border,
    .asLabel .mini-buttonedit-input,
    .asLabel .mini-textboxlist-border
    {
        border:0;background:none;cursor:default;
    }
    .asLabel .mini-buttonedit-button,
    .asLabel .mini-textboxlist-close
    {
        display:none;
    }
    .asLabel .mini-textboxlist-item
    {
        padding-right:8px;
    }    
</style>
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<input name="uid" class="nui-hidden" />
	<input name="qnum" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<div class="nui-hidden" name="quality.uuid"></div>
		<div class="nui-hidden" name="quality.isdel" value="0"></div>
		<input class="nui-hidden" name="quality.uuid" />
		<table id="table"
			style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<!--  <input id="jd" class="nui-dictcombobox hidden" name="quality.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
<input class="nui-dictcombobox hidden" name="quality.jz" required="true" requiredErrorText="机组不能为空" 
dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id"/> 
<input class="nui-hidden" name="quality.rounds" required="true" requiredErrorText="大修轮次不能为空"/>-->
			<tr>
				<td class="form_label">NDNP</td>
				<td colspan="4" style="text-align: center">焊接质量计划(WQP) 
				<!-- <input
					class="nui-textbox" readOnly="readOnly" style="width: 100%"
					name="quality.name" /> -->
				</td>
				<td class="form_label">焊接质量计划编号</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.qualitynumber" /></td>
				<td class="form_label">主票号</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.ticketnumber" /></td>
				<td class="form_label">功能位置</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.position" /></td>
			</tr>
			<tr>
				<td class="form_label">被焊母材</td>

				<td class="form_label">部件1</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.uppername" /></td>

				<td class="form_label">部件2</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.downname" /></td>

				<td class="form_label">图纸/版本</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.equiaxedgraph" /></td>


				<td class="form_label">焊缝编码</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.weldnumber" /></td>
				<td class="form_label">接头形式</td>
				<td colspan="1"><input id="formCombo" name="quality.form"
					readOnly="readOnly" class="nui-dictcombobox" dictTypeId="JTXS"
					style="width: 100%;"/></td>
			</tr>
			<tr>
				<td class="form_label">接口尺寸</td>
				<td colspan="2"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.component1interfacesize" /></td>
				<td colspan="2"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.component2interfacesize" /></td>
				<td class="form_label">焊接工艺卡编号/版本</td>
				<td colspan="1">
					<div name="quality.cardnumber_edtion"
						id="combobox1" class="nui-textbox" style="width: 100%;"></div>
				</td>
				<td class="form_label">焊接方法</td>
				<td colspan="1">
					<div name="quality.welding_method" 
						id="combobox2" class="nui-textbox" style="width: 100%;"></div>
				</td>
				<td class="form_label">地理位置</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.geographicalposition" /></td>
			</tr>
			<tr>
				<td class="form_label">接口厚度</td>
				<td colspan="2"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.component1interfacethickness" />
				</td>
				<td colspan="2"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.component2interfacethickness" />
				</td>
				<td class="form_label">制造级别</td>
				<td colspan="1"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.level" /></td>
				<td class="form_label">焊接填充材料</td>
				<td colspan="1">
					<div name="quality.model_specifications" readOnly="readOnly"
						id="combobox3" class="nui-textbox" style="width: 100%;"></div>
				</td>
				<td class="form_label">批号</td>
				<td colspan="1">
					<div name="quality.batchnumber" readOnly="readOnly"
						readOnly="readOnly" id="combobox4" class="nui-textbox"
						style="width: 100%;" >
					</div>
				</td>

			</tr>
			<tr>
				<td class="form_label">母材材质</td>
				<td colspan="2"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.component1material" /></td>
				<td colspan="2"><input class="nui-textbox" readOnly="readOnly"
					style="width: 100%" name="quality.component2material" /></td>

				<td class="form_label">焊工</td>
				<td colspan="1"></td>
				<td class="form_label">焊工代码</td>
				<td colspan="3"></td>
			</tr>
			<!-- <tr>
				<td colspan="11" style="padding-left: 20px;">
					添加字段:
				</td>
			</tr> -->
			<tr>
				<td colspan="11">
					<div style="width: 100%">
		             		<table style="width: 100%" id="dynamicColumn">
		             			
		             		</table>
	             	</div>
				</td>
			</tr>
			<tr>
				<td colspan="11" style="padding-left: 20px;">
					工序模板:
				</td>
			</tr>
			<tr id="template0">
				<td class="form_label" colspan="1">工序</td>
				<td class="form_label" colspan="2">工作步骤</td>
				 <td class="form_label" colspan="1">
                        	文件编号
                    </td>
                    <td class="form_label" colspan="1">
                        	版本
                    </td>
				<td class="form_label" colspan="1">
					<table style="width: 100%; height: 100%; table-layout: fixed;"
						class="nui-form-table">
						<tr>
							<td colspan="2" style="text-align: center">操作者</td>
						</tr>
						<tr>
							<td style="text-align: center">执行人</td>
							<td style="text-align: center">日期</td>
						</tr>
					</table>
				</td>
				<td class="form_label" colspan="3">

					<table style="width: 100%; height: 100%; table-layout: fixed;"
						class="nui-form-table">
						<tr>
							<td style="text-align: center; width: 50%; height: 50%">QC1
								承包商/执行部门</td>
							<td style="text-align: center; width: 50%; height: 50%">QC2独立检查:焊接/NDT</td>
						</tr>
						<tr>
							<td style="text-align: center">
								<table style="width: 100%; height: 100%; table-layout: fixed;"
									class="nui-form-table">
									<tr>
										<td
											style="text-align: center; padding: 0px; border-left-width: 0px; border-top-width: 00px; border-bottom-width: 0px;">控制点</td>
										<td
											style="text-align: center; padding: 0px; border-left-width: 0px; border-top-width: 00px; border-bottom-width: 0px;"">签名</td>
										<td style="text-align: center; padding: 0px; border: 0px;">日期</td>
									</tr>
								</table>
							</td>

							<td style="text-align: center">
								<table style="width: 100%; height: 100%; table-layout: fixed;"
									class="nui-form-table">
									<tr>
										<td
											style="text-align: center; padding: 0px; border-left-width: 0px; border-top-width: 00px; border-bottom-width: 0px;">控制点</td>
										<td
											style="text-align: center; padding: 0px; border-left-width: 0px; border-top-width: 00px; border-bottom-width: 0px;"">签名</td>
										<td style="text-align: center; padding: 0px; border: 0px;">日期</td>
									</tr>
								</table>
							</td>

						</tr>
					</table>
				</td>
				<td class="form_label" colspan="2">
					<table style="width: 100%; height: 100%; table-layout: fixed;"
						class="nui-form-table">
						<tr>
							<td style="text-align: center">
								<div id="cbll" class="mini-checkboxlist" repeatItems="3" repeatLayout="table"
									        textField="text" valueField="id" value="" name="quality.name" 
									        data="[{id:'QSR',text:'QSR'},{id:'QR',text:'QR'},{id:'NQR',text:'NQR'}]">
									    </div>
							</td>
						</tr>
						<tr>
							<td style="text-align: center">说明</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td colspan="11">
					<table style="width: 100%; height: 100%; table-layout: fixed;"
					class="nui-form-table">
					<tr>
						<td class="form_label">
							编写: </td>
							<td><input class="nui-textbox" readOnly="readOnly" name="quality.applicant" /></td>
						<td class="form_label">
							审查:</td>
							<td> <input class="nui-textbox" readOnly="readOnly" name="quality.examinant" /></td>
						<td class="form_label">
							复核: </td>
							<td><input class="nui-textbox" readOnly="readOnly" name="quality.reviewer" /></td>
						<td class="form_label">
							工作负责人:</td>
						<td style="text-align: center"></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td colspan="11" style="text-align: center;">
					<a class="nui-button" onclick="onCancel()">关闭</a>
				</td>
			</tr>
			<input class="nui-hidden" id="jd" name="quality.jd" />
			<input class="nui-hidden" id="jz" name="quality.jz" />
			<input class="nui-hidden" name="quality.rounds" />
			<input class="nui-hidden" name="quality.createtime" />
			<input class="nui-hidden" name="quality.major" />
			<input class="nui-hidden" name="quality.dynamicgeneration" />
		</table>
	</div>
	<script type="text/javascript">
		nui.parse();
		
		var jdid = getCookie("jdid");
		var obj = nui.get("cbll");
		obj.disable();
		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
			//保存list页面传递过来的页面类型：addone表示单焊接创建wqp
			//uid表示焊接申请的id，qnum表示焊接申请的WQP编号
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "editone") {
				var loadingTip = new LoadingBox({
					str : "数据加载中...",
					left : "43%",
					top : "30%"
				});
				var json = infos.record;
				/* var modelSpecifications = json.quality.model_specifications;
                if(modelSpecifications != null && modelSpecifications != "" && typeof(modelSpecifications) != 'undefined'){
                	//特殊字符转义
	              	modelSpecifications = modelSpecifications.replace("&#91;","【");
	               	modelSpecifications = modelSpecifications.replace("&#93;","】");
	                modelSpecifications = modelSpecifications.replace("&#43;","+");
                }
				json.quality.model_specifications = modelSpecifications; */
				//bhonvalueChanged(json.quality.cardnumber_edtion);
				//tconvalueChanged(modelSpecifications);
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
				var jdid = json.quality.jd;
				//nui.get('combobox1').setAjaxType("POST");
				//nui.get('combobox1').load("com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getWpsandEdition.biz.ext?base=" + jdid);
				//nui.get("combobox1").setEnabled();
				/* nui.get('combobox2').setAjaxType("POST");
				nui.get('combobox2').load("com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getWeldingMethod.biz.ext?base=" + jdid); */
				//nui.get("combobox2").setEnabled();
				//nui.get('combobox3').setAjaxType("POST");
				//nui.get('combobox3').load("com.cgn.itmp.weldingmanagement.materialbiz.getMaterialsModelSpecifications.biz.ext?base=" + jdid);
				//nui.get("combobox3").setEnabled();
				/* nui.get('combobox4').setAjaxType("POST");
				nui.get('combobox4').load("com.cgn.itmp.weldingmanagement.materialbiz.getMaterialBatchNumber.biz.ext?base=" + jdid); */
				//nui.get("combobox4").setEnabled();
				var dyColumn = "<tr>";
				var dynamicColumn = $("#dynamicColumn");
				if(json.quality.name1!= null && json.quality.name1 != ""){
					dyColumn += "<td class='form_label'>"+json.quality.name1+"</td><td>"+json.quality.value1+"</td>";
				}
				if(json.quality.name2!= null && json.quality.name2 != ""){
					dyColumn += "<td class='form_label'>"+json.quality.name2+"</td><td>"+json.quality.value2+"</td>";
				}
				if(json.quality.name3!= null && json.quality.name3 != ""){
					dyColumn += "<td class='form_label'>"+json.quality.name3+"</td><td>"+json.quality.value3+"</td>";
				}
				if(json.quality.name4!= null && json.quality.name4 != ""){
					dyColumn += "<td class='form_label'>"+json.quality.name4+"</td><td>"+json.quality.value4+"</td>";
				}
				dynamicColumn.append(dyColumn+"</tr>");
				loadTemplateData(json.quality.workingprocedure);
				labelModel();
				loadingTip.destroy();
			}
			nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
		}
		
		//文本只读模式
		function labelModel() {
            var form = new nui.Form("#dataform1");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }
		
		//WPS编号”和“版本设置焊接方法值
			function bhonvalueChanged(value){
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
			function tconvalueChanged(value){
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
		
		function loadTemplateData(pid){
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
		                    			trs[j].remove();
		                    		}
		                    	} 
		                    		var steps = text.result;
		                    		for(var i = 0;i< steps.length; i++){
		                    			$("#template"+i).after("<tr id='template"+(i+1)+"'>"+
				                    "<td colspan='1' style='text-align:center'>"+steps[i].orders+"</td>"+
				                    "<td colspan='2' style='text-align:center'>"+steps[i].steps+"</td>"+
				                  	"<td colspan='1' style='text-align:center'>"+(steps[i].filenumber==null?"":steps[i].filenumber)+"</td>"+
				                    "<td colspan='1' style='text-align:center'>"+(steps[i].version==null?"":steps[i].version)+"</td>"+
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
		                        },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
		                     });
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
			else
				window.close();
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
