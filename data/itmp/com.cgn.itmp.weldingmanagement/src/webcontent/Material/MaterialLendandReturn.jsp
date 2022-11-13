<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<%@ page import="java.util.Date,java.text.SimpleDateFormat"%>
	<%@ page import="com.eos.data.datacontext.UserObject"%>
	<%
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dataTime = df.format(new Date());
	UserObject user = (UserObject) request.getSession().getAttribute("userObject");
	String userName = user.getUserRealName();

	String flag = request.getParameter("flag");//1、出借 2、归还
	String entity = request.getParameter("entityType");//业务表实体
	String title = "";
	if (flag.equals("2")) {
		title = "归还";
	} else if (flag.equals("1")) {
		title = "出借";
	}
%>

	<head>
		<title id="title">
			<%=title%>
		</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<script src="<%=request.getContextPath()%>/common/common.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/common/nui/nui.js" type="text/javascript">
		</script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	</head>
	<style>
		.columnCls {
			background-color: #aaa
		}
		.form-inline{
			width: auto!important;
		}
		.mini-panel-body {
    padding: 0px;
    }
	</style>

	<body style="background-color: #f1f1f1; width: 98%; height: 95%; margin: 0 auto; overflow: hidden;">
		<div class="nui-panel" title="待选列表" style="width: 100%; height: 50%" buttons="collapse" showToolbar="true">
			<div property="toolbar">
				<div id="recordFromList" class="nui-form" align="center" style="height: 20%">
					<input class="nui-hidden" name="criteria/_entity" value="<%=entity%>"> <input class="nui-hidden" name="criteria/_expr[7]/isbf" value="YBF"> <input class="nui-hidden" name="criteria/_expr[7]/_op" value="<>">
				<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="kucunremind">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="desc">
               <input class="nui-hidden" name="criteria/_orderby[3]/_property" value="orderno">
				<input class="nui-hidden" name="criteria/_orderby[3]/_sort" value="asc">
					<%-- <input class="nui-hidden" id="sy" name="criteria/_expr[5]/state">
				<input class="nui-hidden" id="zyzts" name="criteria/_expr[5]/_op" value="<>">  --%>

					<input class="nui-hidden" name="criteria/_expr[11]/isdel" value="0" />
					<input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
					<input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="all">

					<div class="row">
						<div class="col-sm-3 form-inline input-control input-width">
							<div class="form-group">
								<label>名称</label> <input class="nui-textbox" id="name" name="criteria/_expr[1]/name" /> <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like"> <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
							</div>
						</div>
						<div class="col-sm-3 form-inline input-control input-width">
							<div>
								<label>批号</label> <input class="nui-textbox" id="batchnumber" name="criteria/_expr[2]/batchnumber" /> <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
							</div>
						</div>
						<div class="col-sm-3 form-inline input-control input-width">
							<div class="form-group">
								<label>型号</label>
								<input class="nui-textbox" name="criteria/_expr[6]/model" id="model"> <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all">
							</div>
						</div>
						<div class="col-sm-3 form-inline input-control input-width">
							<div class="form-group">
								<a class="nui-button btn btn-default btn-xs" onclick="search()">
									查询
								</a>
								<a class="nui-button btn btn-default btn-xs" onclick="reset()">
									重置
								</a> 
							</div>
						</div>
						
						
						
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group text-right">
<!-- 								<a class="nui-button btn btn-default btn-xs" onclick="search()"> -->
<!-- 									查询 -->
<!-- 								</a> -->
<!-- 								<a class="nui-button btn btn-default btn-xs" onclick="reset()"> -->
<!-- 									重置 -->
<!-- 								</a>  -->
								<input class="nui-hidden" id="con_jdid" name="criteria/_expr[3]/jd" /> 
								<input class="nui-hidden" name="criteria/_expr[3]/_op" value="like"> 
								<input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end">
								
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="nui-fit">
				<div id="dxgrid" dataField="materials" class="nui-datagrid" style="width: 100%; height: 100%;"  allowSortColumn="true" allowCellSelect="true"  showPager="false"
                         showReloadButton="false" multiSelect="true" allowCellEdit="false" editNextOnEnterKey="true">
					<!-- allowCellEdit="true" -->
					<div property="columns">
						<div type="indexcolumn"></div>
						<div type="checkcolumn"></div>
						<div field="uuid" headerAlign="center" allowSort="true" visible="false">uuid</div>
						<div field="jd" headerAlign="center" allowSort="true" visible="false">jd</div>
						<div field="kucunremind" headerAlign="center" allowSort="true" visible="false">kucunremind</div>
						<div field="relationid" headerAlign="center" allowSort="true" visible="false">relationid</div>
						<div field="name" headerAlign="center" allowSort="true">
							名称
						</div>
						<div field="standard" headerAlign="center" allowSort="true" renderer="bzRender">
							标准
						</div>
						<div field="model" headerAlign="center" allowSort="true">
							型号
						</div>
						<div field="brand" headerAlign="center" allowSort="true">
							标准牌号
						</div>
						<div field="specifications" headerAlign="center" allowSort="true">
							规格
						</div>
						<div field="batchnumber" headerAlign="center" allowSort="true">
							批号
						</div>
						<div field="packing" headerAlign="center" allowSort="true">
							包装方式
						</div>
						<div field="inventory" headerAlign="center" allowSort="true">
							库存数量
						</div>
						<div field="measurement" headerAlign="center" allowSort="true">
							计量单位
						</div>
						<div field="validuntil" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
							有效期至
						</div>
						<div field="attribution" headerAlign="center" allowSort="true">
							归属单位
						</div>
						<div field="minimum" headerAlign="center" allowSort="true">
							最小库存提醒
						</div>
						<div field="isbf" headerAlign="center" allowSort="true" renderer="bfRenderer">
							状态
						</div>
						<div field="remarks" headerAlign="center" allowSort="true">
							备注
						</div>
						<div name="sljy" field="borrownumber" headerAlign="center" allowSort="true">
							借用数量 <input property="editor" vtype="int" required="true" class="nui-textbox" style="width: 100%;" />
						</div>
						<div name="dwjy" field="borrowunit" headerAlign="center" allowSort="true">
							借用单位 <input property="editor" required="true" class="nui-textbox" style="width: 100%;" />
						</div>
						<div name="rjy" field="borrowperson" headerAlign="center" allowSort="true">
							借用人 <input property="editor" required="true" class="nui-textbox" style="width: 100%;" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

	<body style="width: 98%; height: 100%;">

		<div class="nui-panel" title="已选列表" style="width: 100%; height: 50%;" buttons="collapse" showToolbar="true">
			<div>
				<table>
					<tr id="jhryId">
						<td colspan="1">
							<a class="nui-button btn btn-default" onclick="add()"> 添加
							</a>
						</td>

						<td colspan="1">
							<a class="nui-button btn btn-default" onclick="onDel(1)" style="display: inline-block;">删除</a>
						</td>
						<td colspan="1">
							<a class="nui-button btn btn-default" onclick="onDel(2)" style="display: inline-block; right: 20px;">清空</a>
						</td>

						<td colspan="1">
							<a class="nui-button btn btn-default" onclick="onOk()" id="btnSubmit" style="display: inline-block; left: 80px;">确认</a>
						</td>
						<td colspan="1">
							<a class="nui-button btn btn-default" onclick="onCancel()" id="btnCancel" style="display: inline-block; left: 80px;">关闭</a>
						</td>
					</tr>
				</table>
			</div>
			<div style="width: 100%; height: 85%; overflow: hidden;" class="dxlb">
				<div class="nui-fit">
					<div id="yxgrid" class="nui-datagrid" style="width: 100%; height: 100%;" allowCellSelect="true" allowSortColumn="false" allowCellEdit="true" showPager="false" multiSelect="true" editNextOnEnterKey="true">
						<!--allowCellEdit="true"  -->
						<div property="columns">
							<div type="indexcolumn"></div>
							<div type="checkcolumn"></div>
							<div field="uuid" headerAlign="center" allowSort="true" visible="false">uuid</div>
							<div field="jd" headerAlign="center" allowSort="true" visible="false">jd</div>
							<div field="kucunremind" headerAlign="center" allowSort="true" visible="false">kucunremind</div>
							<div field="relationid" headerAlign="center" allowSort="true" visible="false">relationid</div>
							<div field="name" headerAlign="center" allowSort="true">
								名称
							</div>
							<div field="standard" headerAlign="center" allowSort="true" renderer="bzRender">
								标准</div>
							<div field="model" headerAlign="center" allowSort="true">
								型号</div>
							<div field="brand" headerAlign="center" allowSort="true">
								标准牌号</div>
							<div field="specifications" headerAlign="center" allowSort="true">
								规格</div>
							<div field="batchnumber" headerAlign="center" allowSort="true">
								批号</div>
							<div field="packing" headerAlign="center" allowSort="true">
								包装方式</div>
							<div field="inventory" headerAlign="center" allowSort="true">
								库存数量</div>
							<div name="jcsl" field="borrownumber" headerAlign="center" allowSort="true">
								借出数量
							</div>
							<div field="measurement" headerAlign="center" allowSort="true">
								计量单位</div>
							<div field="validuntil" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
								有效期至</div>
							<div field="isbf" headerAlign="center" allowSort="true" renderer="bfRenderer">
								状态</div>
							<div field="remarks" headerAlign="center" allowSort="true">
								备注</div>
							<div name="jysl" field="borrownumber" headerAlign="center" allowSort="true">
								借用数量 <input property="editor" vtype="int" required="true" class="nui-textbox" style="width: 100%;" />
							</div>
							<div name="jydw" field="borrowunit" headerAlign="center" allowSort="true">
								借用单位 <input property="editor" required="true" class="nui-textbox" style="width: 100%;" />
							</div>
							<div name="jyr" field="borrowperson" headerAlign="center" allowSort="true">
								借用人 <input property="editor" required="true" class="nui-textbox" style="width: 100%;" />
							</div>
							<div name="ghsl" field="returnnumber" headerAlign="center" allowSort="true">
								归还数量 <input property="editor" vtype="int" required="true" onvalidation="hasIllegalChar(e,255,true,true)" class="nui-textbox" style="width: 100%;" />
							</div>
							<div name="ghdw" field="returnunit" headerAlign="center" allowSort="true">
								归还单位<input property="editor" required="true" class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" style="width: 100%;" />
							</div>
							<div name="ghr" field="returnperson" headerAlign="center" allowSort="true">
								归还人 <input property="editor" onvalidation="hasIllegalChar(e,255,true,true)" required="true" class="nui-textbox" style="width: 100%;" />
							</div>

						</div>
					</div>
				</div>
			</div>
	</body>
	<script type="text/javascript">
		nui.parse();

		var formData = new nui.Form("#recordFromList").getData(false, false);
		var datatime = '<%=dataTime%>';
		var dxgrid = nui.get("dxgrid");
		var yxgrid = nui.get("yxgrid");
		var flag = '<%=flag%>';
		var url;
		var syzt = "";

		if(flag == 2) {
			url="com.cgn.itmp.weldingmanagement.materialbiz.queryMaterialbyreturn.biz.ext"
			yxgrid.hideColumn("jysl");
			yxgrid.hideColumn("jydw");
			yxgrid.hideColumn("jyr");
			dxgrid.setUrl(url);

		} else if(flag == 1) {
			url="com.cgn.itmp.weldingmanagement.materialbiz.queryMaterialreturn.biz.ext"
			dxgrid.hideColumn("sljy");
			dxgrid.hideColumn("dwjy");
			dxgrid.hideColumn("rjy");
			
			yxgrid.hideColumn("jcsl");
			yxgrid.hideColumn("ghsl");
			yxgrid.hideColumn("ghdw");
			yxgrid.hideColumn("ghr");
			dxgrid.setUrl(url);
		}
		var jdid = getCookie('jdid');
		nui.get('con_jdid').setValue(jdid);
		
		function bzRender(e){
           	 	return nui.getDictText("BZ", e.value);
            }
		
 		search();

		function search() {
			/* //设置起始有效期和终止有效期
			   var sbyxq = nui.get("sbyxq").getValue();

			   if(sbyxq != null && sbyxq != ''){
			   	
			   if(sbyxq == 'TMS'){//设备有效期为两个月时
			      nui.get("yxqstart").setValue(doGetTime(0));
			         nui.get("yxqend").setValue(doGetTime(2));
			       }else if(sbyxq=='SMS'){//设备有效期为6个月时
			        nui.get("yxqstart").setValue(doGetTime(0));
			         nui.get("yxqend").setValue(doGetTime(6));
			       }else if(sbyxq == 'YGQ'){//设备有效期已过期
			         nui.get("yxqstart").setValue("");
			         nui.get("yxqend").setValue(doGetTime(0));
			       }
			   }else{
			 		 nui.get("yxqstart").setValue("");
			        nui.get("yxqend").setValue("");
			   } */
			   
			   var  data={};
               data.name=nui.get("name").value;
               data.batchnumber=nui.get('batchnumber').value;
               data.model=nui.get("model").value;
               data.ids=notinuuid();
               data.jd=jdid;
			   dxgrid.load(data); //grid查询
			//                                     yxgrid.clearRows();

		}
		//获取下方的数据查询进行过滤
		function notinuuid(){
			var data=nui.get("yxgrid").getData();
			var ids="";
			for(var i=0;i<data.length;i++){
				ids+=data[i].uuid;
				if(i==data.lenth-1){
					break;
				}
					ids+=",";
			}
			return ids;
		}
		//重置查询条件
		function reset() {
			var form = new nui.Form("#recordFromList"); //将普通form转为nui的form
			form.reset();
			nui.get('con_jdid').setValue(jdid);
		}

		//enter键触发查询
		function onKeyEnter(e) {
			search();
		}

		//待选添加操作
		function add() {
			var rows = dxgrid.getSelecteds();
			dxgrid.removeRows(rows, true);
			if(rows.length > 0) {

				for(var i = 0; i < rows.length; i++) {
				if(flag == 1){
					if(typeof(rows[i].borrownumber)!="undefined"){
						rows[i].borrownumber="";
					}
					if(typeof(rows[i].borrowperson)!="undefined"){
					
					rows[i].borrowperson="";
					}
					if(typeof(rows[i].borrowunit)!="undefined"){
					
					rows[i].borrowunit="";
					}
					if(typeof(rows[i].returnnumber)!="undefined"){
						rows[i].returnnumber="";
					}
					if(typeof(rows[i].returnperson)!="undefined"){
					
					rows[i].returnperson="";
					}
					if(typeof(rows[i].returnunit)!="undefined"){
					
					rows[i].returnunit="";
					}
				}else if(flag==2){
					if(typeof(rows[i].borrowperson)!="undefined"){
					
					rows[i].borrowperson="";
					}
					if(typeof(rows[i].borrowunit)!="undefined"){
					
					rows[i].borrowunit="";
					}
					if(typeof(rows[i].returnnumber)!="undefined"){
						rows[i].returnnumber="";
					}
					if(typeof(rows[i].returnperson)!="undefined"){
					
					rows[i].returnperson="";
					}
					if(typeof(rows[i].returnunit)!="undefined"){
					
					rows[i].returnunit="";
					}
				}
					yxgrid.addRow(rows[i], yxgrid.data.length);
				}

			}
		}

		function onDel(type) {
			if("1" == type) {
				var rows = yxgrid.getSelecteds();
				for(var i = 0; i < rows.length; i++) {
					yxgrid.removeRow(rows[i], true);
					dxgrid.addRow(rows[i], i);
					dxgrid.addRowCls(rows[i], "columnCls");

				}
			} else if("2" == type) {
				yxgrid.clearRows();
				search();
			}
		}

		//日期转换
		function timeRender(e) {
			return nui.formatDate(e.cellHtml, 'yyyy-MM-dd HH:mm:ss');
		}

		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
			type = infos.type;
		}

		function onCloseClick(e) {
			var obj = e.sender;
			obj.setText("");
			obj.setValue("");
		}

		//确定保存或更新
		function onOk() {
			saveData();
		}

		//取消
		function onCancel() {
			CloseWindow("cancel");
		}

		//关闭窗口
		function CloseWindow(action) {
			if(window.CloseOwnerWindow)
				return window.CloseOwnerWindow(action);
			else
				window.close();
		}

		function saveData() {
			var data = yxgrid.data;
			var fla=true;
			
			 $.each(data, function (n, value) {
			 
			 
			 
					 	var borrownumber=parseInt(data[n].borrownumber);//如果为NaN代表没有输入值
					 	var inventory=parseInt(data[n].inventory);
					 	var name=data[n].name;
					 	if(flag==1){
					 		if(typeof(data[n].borrownumber)=="undefined"){
					 			nui.alert("焊材:"+name+",归还数量不能为空！");
		               				fla=false;
		               				return false;
             			 	   }
		               			if(borrownumber>inventory){
		               				if(inventory==0){
		               				nui.alert("焊材:"+name+",当前库存为0,请重新选择要领用的焊材!");
				               		fla=false;
				               		return false;
		               				}
				               		nui.alert("焊材:"+name+",当前库存不足，最多可借出: "+inventory);
				               		fla=false;
				               		return false;
             			  		}
						 	if(data[n].borrownumber==null||data[n].borrownumber==""){
						 		nui.alert("焊材:"+name+",借出出数量不能为空！");
		               				fla=false;
		               				return false;
             			  	}else if(data[n].borrowunit==null||data[n].borrowunit==""){
             			  		nui.alert("焊材:"+name+",借出单位不能为空！");
	             			  	fla=false;
	             			  	return false;
             			  	}else if(data[n].borrowperson==null||data[n].borrowperson==""){
	             			  	nui.alert("焊材:"+name+",借出人不能为空！");
	             			  	fla=false;
	             			  	return false;
	             			 }
					 	}else if(flag==2){
					 		if(typeof(data[n].returnnumber)=="undefined"){
					 			nui.alert("焊材:"+name+",归还数量不能为空！");
		               				fla=false;
		               				return false;
             			 	   }
					 		var returnnumber=parseInt(data[n].returnnumber);//如果为NaN代表没有输入值
					 		
               				if(borrownumber<returnnumber){
		               		nui.alert("焊材:"+name+",最多可归还: "+borrownumber);
		               		fla=false;
		               		return false;
					 		if(data[n].returnnumber==null||data[n].returnnumber==""){
						 		nui.alert("焊材:"+name+",归还数量不能为空！");
		               				fla=false;
		               				return false;
             			 	   }
						 	}else if(data[n].returnunit==null||data[n].returnunit==""){
             			  		nui.alert("焊材:"+name+",归还单位不能为空！");
	             			  	fla=false;
	             			  	return false;
             			  	}else if(data[n].returnperson==null||data[n].returnperson==""){
	             			  	nui.alert("焊材:"+name+",归还人不能为空！");
	             			  	fla=false;
	             			  	return false;
             			  	}
					 	}
		               });
             
			var data1 = [{
			"uuid":"null",
			"name":"null",
			"standard":"null",
			"model":"null",
			"brand":"null",
			"specifications":"null",
			"packing":"null",
			"inventory":"null",
			"measurement":"null",
			"validuntil":"null",
			"isbf":"null",
			"remarks":"null",
			"operation":"null",
			"borandretnumber":"null",
			"borandretperson":"null",
			"borandretunit":"null",
			"borandrettime":"null",
			"jd":"null",
			}];
			if(fla){
			if(data.length > 0) {
				if(flag == 1) { //出借
				
					nui.confirm(
						"确定出借吗？",
						"系统提示",
						function(action) {
							if(action == "ok") {
							
								var json = nui
									.encode({
										data: data,
										data1: data1,
										entity: "com.cgn.itmp.weldingmanagement.Material.Material",
										entity1: "com.cgn.itmp.weldingmanagement.MaterialRecord.MaterialRecord",
										base:jdid
									});
								/*   */
								yxgrid.loading("正在出借中,请稍等...");
								$
									.ajax({
										url: "com.cgn.itmp.weldingmanagement.materialbiz.updateMaterialToJc.biz.ext",
										type: 'POST',
										data: json,
										cache: false,
										contentType: 'text/json',
										success: function(text) {
											var returnJson = nui.decode(text);
											yxgrid.unmask();
											if(returnJson.exception == null) {
												nui.alert(
														"出借成功",
														"系统提示",
														function(
															action) {
															onCancel();
														});
											} else {
												nui.alert("出借失败",
													"系统提示");
											}
										},
										error: function(jqXHR,
											textStatus,
											errorThrown) {
											nui.alert(
													jqXHR.responseText,
													'错误',
													function(
														action) {});
										}
									});
							}
						});

				} else if(flag == 2) { //归还
					nui.confirm(
						"确定归还吗？",
						"系统提示",
						function(action) {
							if(action == "ok") {
								var json = nui
									.encode({
										data: data,
										data1: data1,
										entity: "com.cgn.itmp.weldingmanagement.Material.Material",
										entity1: "com.cgn.itmp.weldingmanagement.MaterialRecord.MaterialRecord",
										base:jdid
									});
								yxgrid.loading("正在归还中,请稍等...");
								$
									.ajax({
										url: "com.cgn.itmp.weldingmanagement.materialbiz.updateMaterialToGh.biz.ext",
										type: 'POST',
										data: json,
										cache: false,
										contentType: 'text/json',
										success: function(text) {
											var returnJson = nui
												.decode(text);
											yxgrid.unmask();
											if(returnJson.exception == null) {
												nui
													.alert(
														"归还成功",
														"系统提示",
														function(action) {
															onCancel();
														});
											} else {
												nui.alert("归还失败",
													"系统提示");
											}
										},error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
									});
							}
						});
				} else {
					nui
						.confirm(
							"确定入库吗？",
							"系统提示",
							function(action) {
								if(action == "ok") {
									var json = nui.encode({
										tdxglsysyfacilityinfos: data
									});
									yxgrid.loading("正在入库中,请稍等...");
									$
										.ajax({
											url: "com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.RkTDxglSysyFacilityinfos.biz.ext",
											type: 'POST',
											data: json,
											cache: false,
											contentType: 'text/json',
											success: function(text) {
												var returnJson = nui.decode(text);
												yxgrid.unmask();
												if(returnJson.exception == null) {
													nui.alert(
															"入库成功",
															"系统提示",
															function(action) {
																onCancel();
															});
												} else {
													nui.alert("入库失败",
														"系统提示");
												}
											},error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
										});
								}
							});

				}
			} else {
				nui.alert("请选择数据", "提示");
			}
			}
		}
		//使用状态公共代码转换
		function bfRenderer(e) {
			if(e.row.isbf == "YBF") {
				e.rowStyle = 'color:gray';
			}
			return nui.getDictText("BFBS", e.value);
		}

		//报备情况公共代码转换
		function bbqkRenderer(e) {
			return nui.getDictText("BBQK", e.value);
		}
		//使用状态公共代码转换
		function syztRenderer(e) {
			if(e.row.syzt == "YBF") {
				e.rowStyle = 'color:gray';
			}
			return nui.getDictText("HJGLZT", e.value);
		}
	</script>

	<style>
		.dxlb {
			position: relative;
		}
		
		.xuze {
			position: absolute;
		}
	</style>

</html>