<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-17 10:00:48
- Description:热疲劳手动超声模板信息展示页面
    --%>
<head>
<title>热疲劳手动超声</title>
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
		<input class="nui-hidden" name="defectsshowdetailedinformation.uuid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">大修轮次:</td>
				<td colspan="1"><input class="nui-textbox" id="overhaul"
					name="defectsshowdetailedinformation.overhaulsequence" readOnly="readOnly" style="width: 100%" /></td>

				<td class="form_label">设备名称:</td>
				<td colspan="1"><input id="sbmc"
					 class="nui-textbox" readOnly="readOnly"
					name="defectsshowdetailedinformation.equipmentname"
					 style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">部件名称:</td>
				<td colspan="1"><input class="nui-textbox" id="bjmc" name="defectsshowdetailedinformation.componentname"
					 readOnly="readOnly" style="width: 100%" readOnly="readOnly" /></td>
				<td class="form_label">被检部位:</td>
				<td colspan="1">
					<input id="bjbw" readOnly="readOnly" style="width: 100%" name="defectsshowdetailedinformation.checklocation" class="nui-textbox" readOnly="readOnly" style="width: 50%" />
					</td>
			</tr>
			<tr>
				<td class="form_label">检查内容:</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.inspectioncontent" readOnly="readOnly" style="width: 100%" /></td>
				<td class="form_label">检查方法:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="YJJCFF"
					name="defectsshowdetailedinformation.inspectionmethod" readOnly="readOnly" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">缺陷显示编号:</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.defectdisplaynumber" readOnly="readOnly" style="width: 100%" /></td>
					<td class="form_label">缺陷类型</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.defecttype" readOnly="readOnly" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">波型</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.wavepattern" readOnly="readOnly" style="width: 100%" /></td>
				<td class="form_label">折射角（°）</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.refractionangle" readOnly="readOnly" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">频率（MHz)</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.frequency" readOnly="readOnly" style="width: 100%" /></td>
				<td class="form_label">Gr(25mm)(dB)</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.gr" readOnly="readOnly" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">Gc(dB)</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.gc" readOnly="readOnly" style="width: 100%" /></td>
				<td class="form_label">Hd-Gc(dB)</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.hdgc" readOnly="readOnly" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">缺陷长度（mm)</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.defectlength" readOnly="readOnly" style="width: 100%" /></td>
				<td class="form_label">缺陷方向</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectsshowdetailedinformation.defectdirection" readOnly="readOnly" style="width: 100%" /></td>
			</tr>
			</table>
			<fieldset id="baseInfo" style="width:100%;">
				<legend><span>探头位置</span></legend>
					<table style="width: 100%; height: 100%; table-layout: fixed;"
						class="nui-form-table">
				                <tr>
				                    <td class="form-label">Y(mm)：</td>
				                    <td >
				                        <input class="nui-textbox" style="width: 100%" name="defectsshowdetailedinformation.tty" readOnly="readOnly" style="width:80%;" />
				                    </td>
				                    <td class="form-label">X(mm)：</td>
				                    <td >
				                        <input class="nui-textbox" style="width: 100%" name="defectsshowdetailedinformation.ttx" readOnly="readOnly" style="width:80%;"/>
				                    </td>
				                </tr>
						</table>
				</fieldset>
				<fieldset id="baseInfo1" style="width:100%;">
				<legend><span>缺陷位置</span></legend>
			<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
	                <tr>
	                    <td class="form-label" >Y(mm)：</td>
	                    <td >
	                        <input class="nui-textbox" style="width: 100%" name="defectsshowdetailedinformation.defecty" readOnly="readOnly" />
	                    </td>
	                    <td class="form-label" >X(mm)：</td>
	                    <td >
	                        <input class="nui-textbox"  style="width: 100%" name="defectsshowdetailedinformation.defectx" readOnly="readOnly"/>
	                    </td>
	                    </tr>
	                    <tr>
	                    <td class="form-label" >d(mm)：</td>
	                    <td >
	                        <input class="nui-textbox"  style="width: 100%" name="defectsshowdetailedinformation.defectd" readOnly="readOnly"/>
	                    </td>
	                    <td class="form-label" >S(mm)：</td>
	                    <td >
	                        <input class="nui-textbox"  style="width: 100%" name="defectsshowdetailedinformation.defects" readOnly="readOnly"/>
	                    </td>
	                	</tr>
	              </table>
				</fieldset>
			<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">	
			<tr>
				
				<td class="form_label">是否超标缺陷</td>
				<td colspan="1"><input class="nui-combobox" readOnly="readOnly" dataField="jsonObject" id="sf" textField="name" url="" valueField="id" name="defectsshowdetailedinformation.influence" url="" style="width: 100%" /></td>
				
				
			</tr>
		</table>
		<div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                          
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button"   onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
	
		var pageType;
		
		var sfdata=[
		{"id":"","name":"请选择.."},
		{"id":"暂无","name":"暂无"},
		{"id":"是","name":"是"},
		{"id":"否","name":"否"}];
		nui.get("sf").load(sfdata);
		
		labelModel();
		 function labelModel() {
		 	var form= new nui.Form("#form1");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }

		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
			var json = infos.record;
			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit" || infos.pageType == "rplsdcs") {
				
				var form = new nui.Form("#form1");//将普通form转为nui的form
						
				form.setData(json);
				form.setChanged(false);
			}
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

		//取消
		function onCancel() {
			CloseWindow("cancel");
		}
	</script>
</body>
</html>
