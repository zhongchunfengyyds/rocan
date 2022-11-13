<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page pageEncoding="UTF-8"%>
<!-- %@include file="/coframe/dict/common.jsp"%> -->
<%@include file="/coframe/tools/skins/common.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 
  - Author(s): 陈鹏
  - Date: 2013-12-14 14:48:59
  - Description:
-->
 <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
<body>
<div class="nui-fit" style="padding-top:5px;">
	<form id="dict_type_form" method="post">
		<input class="nui-hidden" name="rank"/>
		<input class="nui-hidden" name="seqno"/>
		<input class="nui-hidden" name="action"/>		
		<table class="nui-form-table" style="width:100%;height:100%;table-layout:fixed;"><!-- 标记1 -->
		<tr style="height:45px; margin-top:3px;line-height:45px">
			<th class="nui-form-label"><label for="parentid$text">上级类型代码：</label></th>
			<td><input id="parentid" name="parentid" class="nui-textbox nui-form-input" readonly="true" /></td>
		</tr>
		<tr class="odd" style="height:45px;line-height:45px">
			<th class="nui-form-label"><label for="dicttypeid$text">类型代码：</label></th>
			<td><input id="dicttypeid" name="dicttypeid" vtype="maxLength:128" required="true" class="nui-textbox nui-form-input"/></td>
		</tr>
		<tr style="height:45px; line-height:45px">
			<th class="nui-form-label"><label for="dicttypename$text">类型名称：</label></th>
			<td><input id="dicttypename" name="dicttypename" vtype="maxLength:255" required="true" class="nui-textbox nui-form-input"/></td>
		</tr>
		</table>
	</form>
</div>
<div class="nui-toolbar" style="text-align:center;height:40px;background:#f7f7f7;" borderStyle="border:0;">
    <button class="btn btn-default" onclick="saveForm()">保存</button>
    <!-- a class="nui-button" iconCls="icon-save" onclick="saveForm();">保存</a>  -->
    <span style="display:inline-block;width:25px;"></span>
    <!--  a class="nui-button" iconCls="icon-close" onclick="closeWindow('cancel');">关闭</a>-->
    <button class="btn btn-second btn-default" onclick="closeWindow('cancel');">关闭</button>
</div>
</body>
</html>

<script type="text/javascript">
	nui.parse();
	
	var form = new nui.Form("dict_type_form");

	function loadForm(data) {
		data = nui.clone(data);
		form.setData(data);
		form.setChanged(false);
		
		if(data.action == 'edit'){
			nui.get('dicttypeid').setReadOnly(true);
		}
	}
	
	function saveForm() {
		form.validate();
		if (form.isValid() == false) return;

		$.ajax({
			url: "org.gocom.components.coframe.dict.DictManager.saveDictType.biz.ext",
			type: 'post',
			data: nui.encode({data:form.getData()}),
			cache: false,
			contentType:'text/json',
			success: function (json) {
				if(json.status == 'success'){
					closeWindow('ok');
				}
				else if(json.status == 'exist') nui.alert("记录已存在！");
				else nui.alert("保存失败！");
				
			},
			error: function (jqXHR, textStatus, errorThrown) {
				nui.alert("保存失败！");
				closeWindow('ok');
			}
		});
	}
    
	function closeWindow(action) {            
		if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
		else window.close();
	}

$("input[readonly]").keydown(function(e) {
              e.preventDefault();
         });
</script>