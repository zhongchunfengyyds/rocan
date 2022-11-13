<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-17 10:00:48
- Description:主螺栓超声模板信息实体录入页面
    --%>
<head>
<title>主螺栓超声</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
	
</script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="form1" style="padding-top: 5px;">
		<!-- hidden域 -->
<!-- 		<input id='sortfield' class="nui-hidden" name="defectsshowdetailedinformation.sortfield"/> -->
		<input class="nui-hidden" name="defectsshowdetailedinformation.uuid" />
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">大修轮次:</td>
				<td colspan="1"><input class="nui-textbox" id="overhaul"
					name="defectsshowdetailedinformation.overhaulsequence" emptyText="请输入大修轮次" requiredErrorText="大修轮次不能为空" required="required"  style="width: 100%" /></td>

				<td class="form_label">设备名称:</td>
				<td colspan="1"><input id="sbmc"
					 class="nui-textbox" readOnly="readOnly"
					name="defectsshowdetailedinformation.equipmentname"
					required="required" style="width: 100%" emptyText="选择被检部位自动回填" requiredErrorText="设备名称不能为空"/></td>
			</tr>
			<tr>
				<td class="form_label">部件名称:</td>
				<td colspan="1"><input class="nui-textbox" id="bjmc" name="defectsshowdetailedinformation.componentname"
					 readOnly="readOnly" style="width: 100%" emptyText="选择被检部位自动回填" required="required" emptyText="请填写部件名称" requiredErrorText="部件名称不能为空"/></td>
				<td class="form_label">被检部位:</td>
				<td colspan="1">
					<input id="bjbw" readOnly="readOnly" emptyText="请选择被检部位" name="defectsshowdetailedinformation.checklocation" class="nui-textbox" required="required" style="width: 50%" />
				  <a class="mini-button" onclick="openTree()">选择被检部位</a>
					</td>
			</tr>
			<tr>
				<td class="form_label">检查内容:</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.inspectioncontent" emptyText="请输入检查内容" requiredErrorText="检查内容不能为空" required="required" style="width: 100%" /></td>
				<td class="form_label">检查方法:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="YJJCFF" emptyText="请选择检查方法"
					name="defectsshowdetailedinformation.inspectionmethod" requiredErrorText="检查方法不能为空" required="required" style="width: 100%" /></td>

				<input class="nui-hidden"
					name="defectsshowdetailedinformation.stencilplate"/>
			</tr>
			<tr>
				<td class="form_label">缺陷显示编号:</td>
				<td colspan="1">
				<div id="cbl1" class="mini-checkboxlist" repeatItems="3" repeatLayout="table"
        		textField="text" valueField="id"   multiSelect="false" required="required" value="系统自动编号"
       			 url="" onvaluechanged="onvalueChanged" requiredErrorText="缺陷显示编号不能为空">
    			</div>
				<input class="nui-hidden" id="defectnum"
					name="defectsshowdetailedinformation.defectdisplaynumber" requiredErrorText="缺陷显示编号不能为空" required="required" style="width: 100%" /></td>
					<td class="form_label">受检螺栓标识</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入受检螺栓标识"
					name="defectsshowdetailedinformation.identificationmark" requiredErrorText="受检螺栓标识不能为空" required="required" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">缺陷类型</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入缺陷类型"
					name="defectsshowdetailedinformation.defecttype" requiredErrorText="缺陷类型不能为空" required="required" style="width: 100%" /></td>
				<td class="form_label">信号幅度Hd(dB)</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.signalamplitudehd"  style="width: 100%" /></td>
				
			</tr>
			<tr>
				<td class="form_label">X1</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.x1" style="width: 100%" /></td>
				<td class="form_label">Xmax</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.xmax" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">X2</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.x2" style="width: 100%" /></td>
				<td class="form_label">Ymax</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.ymax" style="width: 100%" /></td>
				
			</tr>
			<tr>
				<td class="form_label">Zmax</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.zmax"  style="width: 100%" /></td>
				<td class="form_label">观察结果</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.observationresults" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">是否超标缺陷</td>
				<td colspan="1"><input class='nui-dictcombobox' dictTypeId='ISORNO' nullItemText="请选择是否超标缺陷.." required="required" requiredErrorText="是否超标缺陷不能为空" name="defectsshowdetailedinformation.influence" required="required" style="width: 100%" /></td>
				<td class="form_label"></td>
				<td colspan="1"></td>
				</tr>
				<tr>
				<td class="form_label">备注</td>
				<td colspan="3"><input class="nui-textarea"
					name="defectsshowdetailedinformation.templeremark"  style="width: 100%" /></td>
				
				<td style="visibility: hidden; height: 1px; overflow: hidden;"
					colspan="1"><input class="nui-hidden"
					name="defectsshowdetailedinformation.isdel" value="0" />
					</td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button" id="savebt" onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button"  onclick="onCancel()">
							关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		var bjbw=nui.get("bjbw");//被检部位
		var sbmc=nui.get("sbmc");//设备名称
		var bjmc=nui.get("bjmc");//部件名称
		var cbl1=nui.get("cbl1");//编号选择类型
		var defectnum=nui.get("defectnum");//编号输入框
		var pageType;//操作类型
		
		//编号类型的数据
		var bhlxdata=[
  	  	{ "id": "系统自动编号", "text": "系统自动编号"},
  	  	{ "id": "历史编号", "text": "历史编号"},
		];
		nui.get("cbl1").load(bhlxdata);
		//选择编号类型后值改变事件
		function onvalueChanged(e){
			var value=e.value;
			if(value=="历史编号"){
				nui.open({
					showMaxButton: true,
					url:"/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/HistoryNumCheck.jsp",
					  title: "历史编号选择", width: 516, height:300,
					   onload: function () {//弹出页面加载完成
					   var iframe = this.getIFrameEl();
		                    var data = {stencilplate:"zlscs"};//传入页面的json数据
		                    iframe.contentWindow.setFormData(data);
			        },
			         ondestroy: function (action) {
			         		var iframe = this.getIFrameEl();
			         		var historynum=iframe.contentWindow.getData();
			         		if(historynum==""){
			         		nui.get("cbl1").setValue("系统自动编号");
			         		}else{
			         			defectnum.setValue(historynum);
			         			 
			         		}
			         		
			         	}
			         });
				}
			}
		
		//选择役检目录树被检部位
		function openTree(){
			nui.open({showMaxButton : true,
					url:"/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/NewTree.jsp",
			        title: "目录树", width: 500, height:500,
			        onload: function () {//弹出页面加载完成
			        },
			        ondestroy: function (action) {//弹出页面关闭前
			        	var iframe = this.getIFrameEl();
			        	var treeData=iframe.contentWindow.getData();
			        	 
			        	if(typeof(treeData.tree)!="undefined"){
			        		bjbw.setValue(treeData.tree.text);
			        		bjmc.setValue(treeData.separentdata);
			        		sbmc.setValue(treeData.parentdata);
			        	}
			        	
		    		}
		    	});
		
		}

		function saveData() {
			var form = new nui.Form("#form1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.addDefectsshowdetailedinformationByLocation.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.updateDefectsshowdetailedinformation.biz.ext";
			}
			
			form.validate();
			if (form.isValid() == false){ 
			nui.showTips({content: '表单校验不通过,请确认',state:'warning',x: 'center', y: 'center'});
				return;
			}
			
			nui.get("#savebt").setEnabled(false);//置灰色
			var data = form.getData(false, true);
			data.defectsshowdetailedinformation.jd=jdid;
			data.defectsshowdetailedinformation.jz=jzid;
			data.defectsshowdetailedinformation.handle="查看";
			data.defectsshowdetailedinformation.stencilplate="zlscs";
			var cbl=cbl1.getValue();//获取选择的类型值
			if(cbl=="系统自动编号"){
				//如果选择为系统自定编号，则后台查询所有大修的最大值编号+1返回
				$.ajax({
                        url:"com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getMaximumNumber.biz.ext",
                        type:'POST',
                        data:nui.encode({base:jdid,crew:jzid,stencilplate:data.defectsshowdetailedinformation.stencilplate}),
                        cache: false,
                        contentType:'text/json',
                        success:function(result){
						 
                        if(result.result!=0){
                       			data.defectsshowdetailedinformation.defectdisplaynumber=result.result;
                       			
								var json={};
								if(pageType == "zlscs"){
									json= nui.encode({"data":data.defectsshowdetailedinformation,"entity":"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation",
									"entityName":"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation"});
								}
								if(pageType == "edit"){
									json = nui.encode(data);
								}
                       			$.ajax({
										url : urlStr,
										type : 'POST',
										data : json,
										cache : false,
										contentType : 'text/json',
										success : function(text) {
											var returnJson = nui.decode(text);
											if (returnJson.exception == null) {
												CloseWindow("saveSuccess");
											} else {
											nui.get("#savebt").setEnabled(true);//恢复
												nui.alert("保存失败", "系统提示", function(action) {
													if (action == "ok" || action == "close") {
														//CloseWindow("saveFailed");
													}
												});
											}
										}
									});
                            }else{
                            	nui.alert("编号生成错误!")
                            }
                          },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									 nui.get("#savebt").setEnabled(true);//恢复
									});
								 }
                        });
			}else{
			
				var json={};
								if(pageType == "zlscs"){
									json= nui.encode({"data":data.defectsshowdetailedinformation,"entity":"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation",
									"entityName":"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation"});
								}
								if(pageType == "edit"){
									json = nui.encode(data);
								}
                       			$.ajax({
										url : urlStr,
										type : 'POST',
										data : json,
										cache : false,
										contentType : 'text/json',
										success : function(text) {
											var returnJson = nui.decode(text);
											if (returnJson.exception == null) {
												CloseWindow("saveSuccess");
											} else {
											nui.get("#savebt").setEnabled(true);//恢复
												nui.alert("保存失败", "系统提示", function(action) {
													if (action == "ok" || action == "close") {
														//CloseWindow("saveFailed");
													}
												});
											}
										},error: function (jqXHR, textStatus, errorThrown) {
											nui.get("#savebt").setEnabled(true);//恢复
											 nui.alert(jqXHR.responseText,'错误',function (action) {
											});}
									});
			}
		}

		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
			var json = infos.record;
			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);
			if(infos.pageType == "add"){
// 				nui.get('sortfield').setValue(json.defectsshowdetailedinformation.sortfield);
			}
			//如果是点击编辑类型页面
			if (infos.pageType == "edit" || infos.pageType == "zlscs") {
				/* if(json.defectsshowdetailedinformation.defectdisplaynumber!=""){
				    nui.get("cbl1").setValue("历史编号");
				} */
				nui.get('cbl1').setValue(json.defectsshowdetailedinformation.defectdisplaynumber);
				var form = new nui.Form("#form1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
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
