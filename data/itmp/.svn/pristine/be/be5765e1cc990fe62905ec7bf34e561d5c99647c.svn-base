<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): littlebear
  - Date: 2019-08-05 17:45:14
  - Description:
-->
<head>
<title>新增/修改</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
</head>

<body style="width: 98%; height: 97%; position: relative;">
	<div id="form1" style="padding-top: 5px;">
		<table id="table1"
			style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">


		</table>

		<div
			style="position: absolute; left: 50%; transform: translate(-50%, 0); bottom: 0; text-align: center">
			<a class="nui-button" onclick="remove()"> 保存 </a> <a
				class="nui-button" onclick="closeWindow('cancel')"> 关闭 </a>
		</div>
	</div>
</body>
<script>
	nui.parse();
	var jdid = getCookie('jdid');
	var jzid = getCookie('jzid');
	var pageType;
	function setFormData(data) {
		
		pageType = data.pageType;
		var text = document.getElementById("table1");
		if (pageType == "default") {
			text.innerHTML = "<tr><td class='form_label'>大修轮次:</td><td colspan='1'>"
					+ "<input class='nui-textbox' name='defectsshowdetailedinformation.overhaulsequence' required='required' style='width:100%'>"
					+ "<td class='form_label'>设备名称:</td><td colspan='1'>"
					+ "<input id='sbmc' onvaluechanged='onValuechanged1' class='nui-combobox' textField='name' url='' valueField='id' dataField='jsonObject' name='defectsshowdetailedinformation.equipmentname' required='required' style='width:100%'>"
					+ "</tr>"
					
					+ "<tr><td class='form_label'>部件名称:</td><td colspan='1'>"
					+ "<input class='nui-combobox' id='bjmc' name='defectsshowdetailedinformation.componentname' textField='name' url='' valueField='id' dataField='jsonObject' required='required' style='width:100%'>"
					+ "<td class='form_label'>被检部位:</td><td colspan='1'>"
					+ "<input id='combo1' class='nui-combobox' dataField='jsonObject'  textField='name' url=''"
					+ "valueField='id' name='defectsshowdetailedinformation.checklocation' onvaluechanged='onValuechanged' emptyText='请选择被检部位...' nullItemText='请选择...' required='required' style='width:100%'/>"
					+ "</tr>"
					
					+ "<tr><td class='form_label'>检查内容:</td><td colspan='1'>"
					+ "<input class='nui-textbox' name='defectsshowdetailedinformation.inspectioncontent' required='required' style='width:100%'>"
					+ "<td class='form_label'>检查方法:</td><td colspan='1'>"
					+ "<input class='nui-textbox' name='defectsshowdetailedinformation.checkmethod' required='required' style='width:100%'>"
					+ "</tr>"
					
					+ "<tr><td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					+ "<input class='nui-textbox' name='defectsshowdetailedinformation.defectdisplaynumber' required='required' style='width:100%'>"
					+"<td style='visibility: hidden;height: 1px;overflow: hidden;' colspan='1'>"
					+"<input value='0' class='nui-hidden' name='defectsshowdetailedinformation.isdel' />"
					+"</td></tr>";
		}
		nui.parse();
		chec();
	}
	
	//1、默认模板 被检部位事件
	  function onValuechanged(){
        var obj = nui.get("combo1");
        var obj1 = nui.get("sbmc");
        var obj2 = nui.get("bjmc");
        obj1.setValue("");
        obj2.setValue("");
        var detectedsite=obj.getText();
        obj1.setUrl("com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getDeviceName.biz.ext?base="+jdid+"&detectedsite="+detectedsite+"&crew="+jzid);
        obj1.select(0);
      	var devicename=obj1.getText();
      	obj2.setUrl(" com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getPartName.biz.ext?base="+jdid+"&detectedsite="+detectedsite+"&devicename="+devicename+"&crew="+jzid);
        obj2.select(0);
      }
      //2、选择被检测部位后选择设备 值改变事件
      function onValuechanged1(){
        var obj = nui.get("combo1");
        var obj1 = nui.get("sbmc");
        var obj2 = nui.get("bjmc");
        obj2.setValue("");
      	var detectedsite=obj.getText();
      	var devicename=obj1.getText();
      	obj2.setUrl(" com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getPartName.biz.ext?base="+jdid+"&detectedsite="+detectedsite+"&devicename="+devicename+"&crew="+jzid);
        obj2.select(0);
     
      }
      //获取被检部位
			function chec(){
				nui.get('combo1').setUrl("com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getDetectedSite.biz.ext?base="+jdid+"&crew="+jzid);
			}
			
	function init(urlName, columnsVal) {

	}
	function closeWindow(action) {
		if (window.CloseOwnerWindow)
			return window.CloseOwnerWindow(action);
		else
			window.close();
	}
</script>

</html>