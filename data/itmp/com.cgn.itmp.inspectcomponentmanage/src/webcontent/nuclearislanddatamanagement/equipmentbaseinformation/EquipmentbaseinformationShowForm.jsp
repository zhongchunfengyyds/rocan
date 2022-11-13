<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-10 11:54:19
- Description:
    --%>
<head>
<title>Entity录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
          <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>

</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<!-- <input class="nui-hidden" name="equipmentbaseinformation.orderindex"/> -->
		<input class="nui-hidden" name="equipmentbaseinformation.uuid" />
		<input class="nui-hidden" id="eommfileid" name="equipmentbaseinformation.eommfileid"/>
		<input class="nui-hidden" id="sdmfileid" name="equipmentbaseinformation.sdmfileid"/>
            <input class="nui-hidden" id="equipmentgraphfileid" name="equipmentbaseinformation.equipmentgraphfileid"/>
            <input class="nui-hidden" id="equiaxedgraphfileid" name="equipmentbaseinformation.equiaxedgraphfileid"/>
            <input class="nui-hidden" id="eomrfileid" name="equipmentbaseinformation.eomrfileid"/>
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">设备基本信息</td>
				<td class="form_label">设备名称:</td>
				<td colspan="1"><input class="nui-textbox"
					name="equipmentbaseinformation.devicename" readonly="readonly"/></td>
				<td class="form_label">功能位置:</td>
				<td colspan="1"><input class="nui-textbox"
					name="equipmentbaseinformation.position" readonly="readonly"/></td>
				<td class="form_label">设备类型:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="SBLX" name="equipmentbaseinformation.devicetype" readonly="readonly"/></td>
			</tr>
			 <tr>
			 	<td class="form_label">安全级别</td>
				<td class="form_label">制造级别:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="RCCM" showNullItem="true" nullItemText="请选择..."
					name="equipmentbaseinformation.rccmlevel" readonly="readonly"/></td>
				<td class="form_label">安全级别:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="RCCP"  showNullItem="true" nullItemText="请选择..."
					name="equipmentbaseinformation.rccplevel" readonly="readonly"/></td>
				<td class="form_label">规范级别(RSE-M):</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="RSEM"  showNullItem="true" nullItemText="请选择..."
					name="equipmentbaseinformation.rsemlevel" readonly="readonly"/></td>
			</tr>
			
			<tr>
				<td class="form_label" rowspan="2">重要参数</td>
				<td class="form_label">设计压力(Mpa):</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly"
					name="equipmentbaseinformation.designpressure" /></td>
				<td class="form_label">运行压力(Mpa):</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly"
					name="equipmentbaseinformation.operatingpressure" /></td>
					<td class="form_label"></td>
				<td colspan="1"></td>	
			</tr>
			<tr>
				<td class="form_label">设计温度(℃):</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly"
					name="equipmentbaseinformation.designtemperature" /></td>
				<td class="form_label">运行温度(℃):</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly"
					name="equipmentbaseinformation.operationtemperature" /></td>
				<td class="form_label"></td>
				<td colspan="1"></td>	
			</tr>
			<tr>
				<td class="form_label" rowspan="3">制造信息：</td>
				<td class="form_label">EOMM文件:</td>
					<td id="emmodown" >
                     
                    </td>
				<td colspan="1" style="display: none">
					 	<input class="nui-textbox" style="width:100%;cursor: pointer;color: blue;" readonly="readonly" id="eommfile" name="equipmentbaseinformation.eommfile" />
						<form id="uploadform1" enctype="multipart/form-data">
							<input id="eommfile" class="" style="width:100%;display: none" type="file" name="equipmentbaseinformation.eommfile" accept="*" onchange="fileSub1(this)"> 
						</form>
				</td>
				<td class="form_label">SDM文件:</td>
					<td id="sdmdown" >
                     
                    </td>
				
				<td colspan="1" style="display: none">
						<input class="nui-textbox" style="width:100%;cursor: pointer;color: blue;" readonly="readonly" id="sdmfile" name="equipmentbaseinformation.sdmfile" />
						<form id="uploadform2" enctype="multipart/form-data">
							<input id="sdmfile" class="" style="width:100%;display: none" type="file" name="equipmentbaseinformation.sdmfile" accept="*" onchange="fileSub2(this)"> 
						</form>
				</td>
				
				<td class="form_label">设备图:</td>
					<td id="euqipmentdown" >
                     
                    </td>
				<td colspan="1" style="display: none">
					<input class="nui-textbox" style="width:100%;cursor: pointer;color: blue;" readonly="readonly" id="euqipmentgraph" name="equipmentbaseinformation.euqipmentgraph" />
					<form id="uploadform3" enctype="multipart/form-data">
						<input id="euqipmentgraph" class="" style="width:100%;display: none" type="file" name="equipmentbaseinformation.euqipmentgraph" accept="*" onchange="fileSub3(this)"> 
					</form>
				</td>
			</tr>
			<tr>
				<td class="form_label">等轴图:</td>
					<td id="equiaxeddown" >
                     
                    </td>
				<td colspan="1" style="display: none">
				<input class="nui-textbox" style="width:100%;cursor: pointer;color: blue;" readonly="readonly" id="equiaxedgraph" name="equipmentbaseinformation.equiaxedgraph" />
					<form id="uploadform4" enctype="multipart/form-data">
						<input id="equiaxedgraph" class="" style="width:100%;display: none" type="file" name="equipmentbaseinformation.equiaxedgraph" accept="*" onchange="fileSub4(this)"> 
					</form>
				</td>
				<td class="form_label">EOMR文件:</td>
				<td id="eomrfiledown" >
                     
                    </td>
				<td colspan="1" style="display: none">
					<input class="nui-textbox" style="width:100%;cursor: pointer;color: blue;" readonly="readonly" id="eomrfile" name="equipmentbaseinformation.eomrfile" />
					<form id="uploadform5" enctype="multipart/form-data">
						<input id="eomrfile" class="" style="width:100%;display: none" type="file" name="equipmentbaseinformation.eomrfile" accept="*" onchange="fileSub5(this)"> 
					</form>
				<td class="form_label">生产厂家:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly"
					name="equipmentbaseinformation.manufacturer" /></td>
			</tr>
			<tr>
				<td class="form_label">设备制造编号:</td>
				<td colspan="1">
					<input class="nui-textbox" readonly="readonly" name="equipmentbaseinformation.equipment_manufacturing_number" />
				</td>
				<td class="form_label">材料牌号:</td>
				<td colspan="1">
					<input class="nui-textbox" readonly="readonly" name="equipmentbaseinformation.materialbrand" />
				</td>
				<td class="form_label"></td>
					<td colspan="1">
				</td>
				<input value="0" class="nui-hidden" name="equipmentbaseinformation.isdel" />
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button"  style="display: none" onclick="onOk()"> 保存 </a> <span
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
	     
	    
	       
            labelModel();
		 function labelModel() {
		 	var form= new nui.Form("#dataform1");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }
			//1 EOMM文件下载
		function emmodown(){
			 var div = document.getElementById('emmodown');
			var fileRealName = nui.get('eommfile').value;//eommfile
			var fileId = nui.get('eommfileid').value;//eommfileid
			if(fileRealName!=""&&fileId!=""){
		 		div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}
		//2 EOMM文件下载
		function sdmdown(){
		 var div = document.getElementById('sdmdown');
			var fileRealName = nui.get('sdmfile').value;//sdmfile
			var fileId = nui.get('sdmfileid').value;//sdmfileid
			if(fileRealName!=""&&fileId!=""){
			div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			
			}
		}
		//3 设备图下载
		function euqipmentdown(){
		 var div = document.getElementById('euqipmentdown');
			var fileRealName = nui.get('euqipmentgraph').value;//euqipmentgraph
			var fileId = nui.get('equipmentgraphfileid').value;//equipmentgraphfileid
			if(fileRealName!=""&&fileId!=""){
			div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			
			}
		}
		//4等轴图下载
		function equiaxeddown(){
		 var div = document.getElementById('equiaxeddown');
			var fileRealName = nui.get('equiaxedgraph').value;//equiaxedgraph
			var fileId = nui.get('equiaxedgraphfileid').value;//equiaxedgraphfileid
			if(fileRealName!=""&&fileId!=""){
			div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}
		//5EOMR文件下载
		function eomrfiledown(){
		 var div = document.getElementById('eomrfiledown');
			var fileRealName = nui.get('eomrfile').value;//eomrfile
			var fileId = nui.get('eomrfileid').value;//eomrfileid
			if(fileRealName!=""&&fileId!=""){
		div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			
			}
		}
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
			var json = infos.record;
			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
				emmodown();
				sdmdown();
				euqipmentdown();
				equiaxeddown();
				eomrfiledown();
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
