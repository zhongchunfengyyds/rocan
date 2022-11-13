<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<!-- 
  - Author(s): jirukang
  - Date: 2019-10-17 14:15:59
  - Description:模板选择树页面
-->
<head>
<title>TreeSelect</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
</head>
<body>

	<div style="width: 100%; height: 100%">
		<div style="display:none;">
    		<form id="downloadFile" method="post">
    		</form>
		</div>
		<ul id="tree1" class="nui-tree"
			url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/dataTree.txt"
			style="width: 100%; padding: 5px;" textField="name" idField="id"
			parentField="pid" resultAsTree="false" dataField="treeDepts"
			showFolderCheckBox="true" showCheckBox="true" allowSelect="false">
		</ul>
		
		<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
			<table style="width: 100%;">
				<tr>
					<td>

						<button class="btn btn-default" onclick="download()"
							>
							<span class="fa fa-pencil-square-o"></span>&nbsp;
							下载模板
						</button>
						</td>
						<td>
						<button class="btn btn-default" onclick="batchAdd()"
							>
							<span class="fa fa-pencil-square-o"></span>&nbsp;
							批量新增
						</button>
						</td>
						<td>
						<button class="btn btn-default" onclick="closeWindow('cancel')"
							>
							<span class="fa fa-pencil-square-o"></span>&nbsp;
							关闭
						</button>
						</td>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var jdid=getCookie('jdid');
		var jzid=getCookie('jzid');
		 var tree = nui.get("tree1");
           
 //导入
function batchAdd(){
		var value = tree.getValue();
		if(value==""){
			nui.alert("请选择导入模板!");
			return;
		}
		var arr=value.split(",");
		if(arr.length >1){
			nui.alert("只能选择一个模板导入!");
			return;
		}else{
			 var data = {};
			 data.modelFlag = "4";
			 data.jdid = jdid;
			 data.jzid = jzid;
			 data.stencilplate = arr[0];
			 data.tempFileName = arr[0]+".xlsx";
			 data.pageType = "batchAdd";
			 data.entitfName="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation";
			 
			nui.open({
				showMaxButton : true,
		        url: "/itmp/basecommon/importExcelComm/importTempleDataFormExcel.jsp",
		        title: "新增记录", width: 600, height: 300,
		        onload: function () {//弹出页面加载完成
		        	var iframe = this.getIFrameEl();
		             //传入页面的json数据 */
		             iframe.contentWindow.SetData(data);
		             
		        },
		        ondestroy: function (action) {//弹出页面关闭前
		        	tree.reload();
		    	}
});	
		}
}
		
		
		//下载模板
		function download() {
		var value = tree.getValue();
		if(value==""){
			nui.alert("请选择导入模板!");
			return;
		}
		down(value,"缺陷显示详情信息导入模板.zip");
// 		var arr=value.split(",");
// 		if(arr!=null){
// 			for(var i=0;i<arr.length;i++){
// 					if(arr[i]=="crgbobbin"){
// 						down("crgbobbin.xlsx","传热管BOBBIN导入模板");
// 					}else if(arr[i]=="crgmrpc"){
// 					setTimeout(function(){
// 						down("crgmrpc.xlsx","传热管MRPC导入模板");
// 					},100);
// 					}else if(arr[i]=="crglkqx"){
// 					setTimeout(function(){
// 						down("crglkqx.xlsx","传热管轮廓曲线导入模板");
// 					},200);
// 					}else if(arr[i]=="ztgwl"){
// 					setTimeout(function(){
// 						down("ztgwl.xlsx","指套管涡流导入模板");
// 					},300);
// 					}else if(arr[i]=="lslm"){
// 					setTimeout(function(){
// 						down("lslm.xlsx","螺栓/螺母导入模板");
// 					},400);
// 					}else if(arr[i]=="hfsdcs"){
// 					setTimeout(function(){
// 						down("hfsdcs.xlsx","焊缝手动超声导入模板");
// 					},500);
// 					}else if(arr[i]=="rplsdcs"){
// 					setTimeout(function(){
// 						down("rplsdcs.xlsx","热疲劳手动超声导入模板");
// 					},600);
// 					}else if(arr[i]=="lssdcs"){
// 					setTimeout(function(){
// 						down("lssdcs.xlsx","螺栓手动超声导入模板");
// 					},700);
// 					}else if(arr[i]=="zbflsdcs"){
// 					setTimeout(function(){
// 						down("zbflsdcs.xlsx","主泵飞轮手动超声导入模板");
// 					},800);
// 					}else if(arr[i]=="zlscs"){
// 					setTimeout(function(){
// 						down("zlscs.xlsx","主螺栓自动超声导入模板");
// 					},900);
// 					}else if(arr[i]=="rpvzdcs"){
// 					setTimeout(function(){
// 						down("rpvzdcs.xlsx","RPV自动超声导入模板");
// 					},1000);
// 					}else if(arr[i]=="rccazdcs"){
// 					setTimeout(function(){
// 						down("rccazdcs.xlsx","RCCA自动超声导入模板");
// 					},1100);
// 					}else if(arr[i]=="paut"){
// 					setTimeout(function(){
// 						down("paut.xlsx","PA-UT导入模板");
// 					},1200);
// 					}
// 					else if(arr[i]=="rt"){
// 					setTimeout(function(){
// 						down("rt.xlsx","RT导入模板");
// 					},1300);
// 					}else if(arr[i]=="cctv"){
// 					setTimeout(function(){
// 						down("cctv.xlsx","CCTV导入模板");
// 					},1400);
// 					}else if(arr[i]=="vt"){
// 					setTimeout(function(){
// 						down("ptmtvt.xlsx","VT导入模板");
// 					},1500);
// 					}
// 					else if(arr[i]=="mt"){
// 					setTimeout(function(){
// 						down("ptmtvt.xlsx","MT导入模板");
// 					},1600);
// 					}
// 					else if(arr[i]=="pt"){
// 					setTimeout(function(){
// 						down("ptmtvt.xlsx","PT导入模板");
// 					},1700);
// 					}
					
// 				}
// 			}
		}
		function down(modelNames,tempLoadName){
		        var form = document.getElementById("downloadFile");
		        window.location.href =  encodeURI("com.cgn.itmp.basecommon.CommDownFileAsZip.flow?modelNames=" + modelNames + "&projectPath=example&loadFileName=" + tempLoadName);
// 		        form.submit();
    	}
    
		function closeWindow(action) {            
		if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
		else window.close();
	}
	</script>
</body>
</html>