<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-15 15:50:17
- Description:
    --%>
<head>
    <title>授权管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%=request.getContextPath()%>/common/common.js"
            type="text/javascript"></script>

    <script src="<%=request.getContextPath()%>/common/nui/nui.js"
            type="text/javascript"></script>

    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
          <style type="text/css">
.mini-calendar-clearButton,.mini-calendar-tadayButton{
    border-color: #004a86;
    background: #004a86;
    color: #fff;
    font-family: "微软雅黑";
}
.mini-calendar .mini-calendar-weekend {
    color: #C00000;
}
.mini-calendar .mini-calendar-selected, .mini-calendar .mini-calendar-date:hover {
    background-color: #004a86;
    border-color: #004a86;
    color: #fff;
}
.mini-calendar-days td {
    text-align: center;
    vertical-align: middle;
    padding: 2px;
    padding-left: 3px;
    padding-right: 3px;
    font-size: 9pt;
    font-family: Tahoma, Verdana, 宋体;
    cursor: default;
}
          </style>
</head>
<body style="background-color: #f1f1f1;height: 97%;width:98%;">
	<div class="bs-docs-section" >
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
					<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()"> 模糊查询 </a> 
									<a id="allQuery" style="display: none" class="btn btn-default" onclick="searchs()"> 查询 </a> 
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
									<div onclick="showquery()" id="funquery"
										class="fa fa-chevron-down fa-1x">
										&nbsp;<a id="scbt">高级查询</a>
									</div>
								</div>
							</td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
					<div id="form1" class="nui-form display" align="center" style="height: 118px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgtFile">
						<!-- 排序字段 -->
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
							<tr>
							<td class="form_label">姓名：</td>
								
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/name" /> <input class="nui-hidden"
									name="criteria/_expr[1]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
								<td class="form_label">员工号：</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/empnubmer" /> <input class="nui-hidden"
									name="criteria/_expr[2]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
							<td class="form_label">身份证号：</td>
								
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[3]/idnumber" /> <input class="nui-hidden"
									name="criteria/_expr[3]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
<!-- 								<td class="form_label">状态:</td> -->
<!-- 								<td colspan="1"><input class="nui-dictcombobox" id="wszt" -->
<!-- 									name="criteria/_expr[4]/zt" dictTypeId="SQGL_WSZT" -->
<!-- 									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQGL_WSZT" -->
<!-- 									textField="dictName" valueField="dictID" emptyText="请选择" -->
<!-- 									required="false" allowInput="true" showNullItem="true" -->
<!-- 									nullItemText="请选择..." /></td> -->
							</tr>
							
							<tr>
							<td class="form_label">授权类型:</td>
								
								<td colspan="1"><input class="nui-dictcombobox"
									name="criteria/_expr[5]/sqlx" dictTypeId="SQTYPE"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /> <input class="nui-hidden"
									name="criteria/_expr[5]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="all"></td>
								<td class="form_label">专业领域:</td>
								<td colspan="1"><input class="nui-dictcombobox"
                                                        name="criteria/_expr[8]/zyly" dictTypeId="ZYLY"
                                                        url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZYLY"
                                                        textField="dictName" valueField="dictID" emptyText="请选择"
                                                        required="false" allowInput="true" showNullItem="true"
                                                        nullItemText="请选择..."/> <input class="nui-hidden"
                                                        name="criteria/_expr[8]/_op"value="like"><input
                                class="nui-hidden" name="criteria/_expr[8]/_likeRule"
                                value="all"></td>
							</tr>
							<tr>
							<td class="form_label">证明文件:</td>
								
								<td colspan="1"><input class="nui-dictcombobox" id="ywwj" 
                                                        name="criteria/_expr[9]/zmwjyw" dictTypeId="ZMWJ"
                                                        emptyText="请选择" showNullItem="true" nullItemText="请选择..."/></td>
								<td class="form_label">状态:</td>
								<td colspan="1"><input class="nui-dictcombobox" id="wszt"
									name="criteria/_expr[4]/zt" dictTypeId="SQGL_WSZT"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQGL_WSZT"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /></td>
							</tr>
                    <tr>
							<td class="form_label">授权有效期:</td>
								
								<td colspan="1"><input id="starttime"
									class="nui-datepicker" ondrawdate="ondrawdateStart"
									name="criteria/_expr[6]/sqyxq" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"
									format="yyyy-MM-dd" /> <input class="nui-hidden" id="bjz"
									name="criteria/_expr[6]/_op" value=">="></td>
								<td class="form_label">至</td>
								<td colspan="1"><input
									id="endtime" class="nui-datepicker" ondrawdate="ondrawdateEnd"
									name="criteria/_expr[7]/sqyxq" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"
									format="yyyy-MM-dd" /> <input class="nui-hidden"
									name="criteria/_expr[7]/_op" value="<="></td>
							</tr>
                    
                            
               
              
       			
						</table>
						<input class="nui-hidden" name="criteria/_expr[10]/isdelete"
                                   value="0"/> <input class="nui-hidden"
                                                      name="criteria/_expr[10]/_op" value="like"> <input
                                class="nui-hidden" name="criteria/_expr[10]/_likeRule"
                                value="end"> <input class="nui-hidden" id="con_jdid"
                                                    name="criteria/_expr[11]/jd"/> <input class="nui-hidden"
                                                                                          name="criteria/_expr[11]/_op"
                                                                                          value="like"> <input
                                class="nui-hidden" name="criteria/_expr[11]/_likeRule"
                                value="end"> <input class="nui-hidden"
                                                    name="criteria/_expr[12]/fildid"/> <input class="nui-hidden"
                                                                                              id="Isnull"
                                                                                              name="criteria/_expr[12]/_op"
                                                                                              value=""> <input
                                class="nui-hidden" name="criteria/_orderby[13]/_property"
                                value="orderindex"> <input class="nui-hidden"
                                                        name="criteria/_orderby[13]/_sort" value="desc">
					</div>
					
				</div>
			</div>
		</div>
</div>
            <script type="text/javascript"
                    src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
 
 
<div region="center" title="授权管理" style="width: 100%; height: 94%;"
     showToolbar="false" showFooter="false">
    <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;" name="ITMP_btn">
        <table style="width: 100%;">
            <tr>
                <td style="width: 100%;padding:5px 0;">
                <button id="addallbut"    style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
							新增
						</button>
						<ul id="popupMenu" class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>
<!--                 <a class="nui-menubutton  btn btn-default btn-xs" menu="#popupMenu" name="ITMP_btnAdd">新增</a> -->
<!--                     <ul id="popupMenu" class="nui-menu" style="display: none;"> -->
<!--                         <li name="ITMP_btnAddOne" onclick="addRow()">单条增加</li> -->
<!--                         <li name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li> -->
<!--                     </ul> -->
                    <a id="update"
                       class="nui-button showCellTooltip  btn btn-default btn-xs"  name="ITMP_btnEdit"
                       onclick="edit()"> 修改
                    </a> <a class="nui-button  btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp" >
                       导出
                    </a> 
                     <a class="nui-button  btn btn-default btn-xs" onclick="apply()" name="ITMP_btnApply" >
                       授权申请
                    </a><a class="nui-button  btn btn-default btn-xs" style="margin:0 4px" onclick="review()" name="ITMP_btnApply" >
                        审查记录
                    </a><a class="nui-button  btn btn-default btn-xs" onclick="reminder()" name="ITMP_btnApply" >
                        到期提醒
                    </a> <a class="nui-button  btn btn-default btn-xs" onclick="cancel()" name="ITMP_btnCancel">
                        授权撤销/暂停
                    </a> <a class="nui-button  btn btn-default btn-xs" onclick="rest()" name="ITMP_btnRest">
                        授权恢复
                    </a> <a class="nui-button  btn btn-default btn-xs" onclick="remove()" name="ITMP_btnDel" >
                        删除
                    </a> <a class="nui-button  btn btn-default btn-xs" name="ITMP_btnRec"
                            onclick="recycle()"> 回收站
                        <!-- 弹框页面进入回收站页面,同时条件查询isdelete字段 -->
                    </a> <span id="saveOrCancel"> <a
                            class="nui-button  btn btn-warning btn-xs" id="save"
                            onclick="saveData()">保存</a> <a
                            class="nui-button  btn btn-primary btn-xs" id="cancel"
                            onclick="cancelSave()">取消</a>
					</span></td>
            </tr>
        </table>
    </div>
    <div class="nui-fit">
        <div 
        	 id="datagrid1" 
        	 dataField="tdxglzzsqglsqgls" 
        	 class="nui-datagrid"
             style="width: 100%;height: 100%;"
             url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.queryTDxglZzsqglSqgls.biz.ext"
             pageSize="20" sizeList="[20,100,1000]" 
             showPageInfo="true" 
             multiSelect="true"
             onselectionchanged="selectionChanged" 
             allowCellValid="true"
             allowSortColumn="true" 
             sortMode="client" 
             oncellclick="onClick"
             oncellvalidation="onCellValidation" 
             allowAlternating="true">

				<div property="columns">
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="name" headerAlign="center" allowSort="true" width="70"
						required="true" renderer="setHref">
						姓名<input property="editor" class="nui-textbox"
							style="width: 100%;" required="true" requiredErrorText="姓名不能为空" />
					</div>
					<div field="sex" headerAlign="center" align="center" allowSort="true" width="50"
						renderer="xbRenderer" dic="XB">
						性别<input property="editor" class="nui-dictcombobox"
							style="width: 100%;" dictTypeId="XB" />
					</div>
					<div field="empnubmer" headerAlign="center" align="center"  allowSort="true">
						员工号<input property="editor" class="nui-textbox"
							style="width: 100%;" />
					</div>
					<div field="idnumber" headerAlign="center" allowSort="true"
						width="180">
						身份证号<input property="editor" id=" idnumber"
							class="nui-dictcombobox" allowInput="true"
							url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.getIdnumber.biz.ext"
							dataField="jsonObject" textField="IDNUMBER" valueField="IDNUMBER"
							style="width: 100%;" required="true" requiredErrorText="身份证号不能为空" />
					</div>
					<div field="xl" headerAlign="center" align="center"  allowSort="true"
						renderer="xlRenderer">
						学历<input property="editor" class="nui-dictcombobox"
							style="width: 100%;" dictTypeId="Edu"/>
					</div>
					<div field="zc" headerAlign="center" allowSort="true"
						renderer="zcRenderer">
						职称<input property="editor" class="nui-dictcombobox"
							style="width: 100%;" dictTypeId="ZC"  />
					</div>
					<div field="zyly" headerAlign="center" allowSort="true"
						renderer="zylyRenderer">
						专业领域<input property="editor" class="nui-dictcombobox"
							style="width: 100%;" dictTypeId="ZYLY" required="true"
							requiredErrorText="专业领域不能为空" />
					</div>
					<div field="kssj" headerAlign="center" allowSort="true"
						dateFormat="yyyy-MM-dd" visible="false">
						<input property="editor" class="nui-datepicker"
							style="width: 100%;" /> 开始时间
					</div>
					<div field="jssj" headerAlign="center" allowSort="true"
						dateFormat="yyyy-MM-dd" visible="false">
						<input property="editor" class="nui-datepicker"
							style="width: 100%;" /> 结束时间
					</div>
					<div field="gzdw" headerAlign="center" allowSort="true"
						visible="false">
						工作单位 <input property="editor" class="nui-textbox"
							style="width: 100%;" />
					</div>
					<div field="gznr" headerAlign="center" allowSort="true"
						visible="false">
						工作内容 <input property="editor" class="nui-textbox"
							style="width: 100%;" />
					</div>
					<div field="sqlx" headerAlign="center" allowSort="true"
						renderer="sqlxRenderer">
						授权类型 <input property="editor" class="nui-dictcombobox"
							style="width: 100%;" dictTypeId="SQTYPE" />
					</div>
					<div field="sqfwhdj" headerAlign="center" align="center"  allowSort="true" width="140">
						授权范围和等级<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>
					<div field="sqyxq" headerAlign="center" allowSort="true" width="120"
						dateFormat="yyyy-MM-dd" renderer="yxqRenderer">
						授权有效期至 <input property="editor" class="nui-datepicker"
							style="width: 100%;" required="true" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" requiredErrorText="有效日期不能为空"
							onvaluechanged="doChangeState" />
					</div>
					<div field="zmwj" headerAlign="center" allowSort="true"
						renderer="setFile" width="150">AuthorizationMgtForm
						证明文件 <input type="file" id="zmwj" name="file" multiple onchange="uploadFile(event,id)" /> 
					</div>
					<div field="zmwjyw" headerAlign="center" allowSort="true"
						renderer="zmwjyw" visible="false"></div>
					<div name="zt" field="zt" headerAlign="center" align="center"  allowSort="true"
						renderer="sqztRenderer">
						状态<input property="editor" class="nui-dictcombobox"
							readOnly="true" style="width: 100%;" dictTypeId="SQGL_WSZT" />
					</div>
					<div field="bz" headerAlign="center" allowSort="true">
						备注<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						visible="false">是否删除</div>
					<div field="deluser" headerAlign="center" allowSort="true"
						visible="false" value="<%=userName%>">删除人</div>
					<div field="deltime" headerAlign="center" allowSort="true"
						visible="false">删除时间</div>
					<div field="jd" headerAlign="center" allowSort="true"
						visible="false">基地</div>
					<div field="kssj" headerAlign="center" allowSort="true"
						visible="false">开始时间</div>
					<div field="jssj" headerAlign="center" allowSort="true"
						visible="false">结束时间</div>
					<div field="gzdw" headerAlign="center" allowSort="true"
						visible="false">工作单位</div>
					<div field="gznr" headerAlign="center" allowSort="true"
						visible="false">工作内容</div>
					<div field="filePath" headerAlign="center" allowSort="true"
						visible="false">file_path</div>
					<div field="fileRealName" headerAlign="center" allowSort="true"
						visible="false">fileRealName</div>
					<div field="filename" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="filepath" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="fildid" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="jd" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="addtime" headerAlign="center" width="120"
						dateFormat="yyyy-MM-dd HH:mm:ss" visible="false"></div>
					<div field="type" headerAlign="center" width="120"
						  visible="false"></div>
					<div field="finish" headerAlign="center" width="120"
						 visible="false">
						 </div>
				</div>
			</div>
		</div>
			</div>
	<style>
		table td div{
			text-align:center;
		}
	</style>
	<script type="text/javascript">
		nui.parse();
		var fileName = "";
		var filePath = "";
		
	
		var data = {
					pageType : "aut",
					urlName:"com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext",//查询语句
					entityVal:"",
					removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//
					recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//
					columnscode:[
						{type:"indexcolumn" },
						{type:"checkcolumn" },
						{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
						{field:"name",header:"姓名", width:100, headerAlign:"center", allowSort:true },
						{field:'sex',header:'性别', width:100, headerAlign:"center", allowSort:true,dic:"XB",renderer:"xbRenderer"},
						{field:'empnubmer',header:'员工号', width:100, headerAlign:"center", allowSort:true},
						{field:'idnumber',header:'身份证号', width:100, headerAlign:"center", allowSort:true},
						{field:'zyly',header:'专业领域', width:100, headerAlign:"center", allowSort:true,dic:"ZYLY",renderer:"xbRenderer"},
						{field:'sqlx',header:'授权类型', width:100, headerAlign:"center", allowSort:true,dic:"SQTYPE",renderer:"xbRenderer"},
						{field:'sqfwhdj',header:'授权范围和等级', width:130, headerAlign:"center", allowSort:true},
						{field:'sqyxq',header:'有效期', width:100, headerAlign:"center", allowSort:true,dateFormat:"yyyy-MM-dd",renderer:"yxqRenderer"}
						
					],
				};
		
// 						{field:'xl',header:'学历', width:100, headerAlign:"center", allowSort:true,dic:"Edu",renderer:"xbRenderer"},
// 						{field:'zc',header:'职称', width:100, headerAlign:"center", allowSort:true,dic:"ZC",renderer:"xbRenderer"},
// 		{field:'zmwj',header:'证明文件', width:100, headerAlign:"center", allowSort:true,renderer:"setFile"},
// 						{field:'zt',header:'状态', width:100, headerAlign:"center", allowSort:true,dic:"SQGL_WSZT",renderer:"ztRenderer"},
// 						{field:'fileRealName',header:'附件真实文件名称', width:100, headerAlign:"center", allowSort:true,visible:false},
// 						{field:'fileName',header:'附件名称', width:100, headerAlign:"center", allowSort:true,visible:false},
// 						{field:'filePath',header:'附件路径', width:100, headerAlign:"center", allowSort:true,visible:false},
// 						{field:'bz',header:'备注', width:100, headerAlign:"center", allowSort:true}

    var grid = nui.get("datagrid1");

    nui.get("save").hide();
    nui.get("cancel").hide();
    nui.get("update").disable();
    var jdid = getCookie('jdid');
    nui.get('con_jdid').setValue(jdid);
    if (jdid != null && jdid != "") {
	  //按钮权限控制
	    accessControlButton('<%=userRoleCodeList %>',2);
        var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);
    }

    function ondrawdateStart(e) {
        var date = e.date;
        var d = nui.get("#endtime").getValue();
        if (d) {
            var timeStr = d.getFullYear() + "/" + (d.getMonth() + 1) + "/"
                + d.getDate() + " " + d.getHours() + ":"
                + d.getMinutes() + ":" + d.getSeconds();
            d = new Date(timeStr);
        }
        if (date && d && date.getTime() > d.getTime()) {
            e.allowSelect = false;
        }
    }

    function ondrawdateEnd(e) {
        var date = e.date;
        var d = nui.get("#starttime").getValue();
        if (d) {
            var timeStr = d.getFullYear() + "/" + (d.getMonth() + 1) + "/"
                + d.getDate() + " " + d.getHours() + ":"
                + d.getMinutes() + ":" + d.getSeconds();
            d = new Date(timeStr);
        }
        if (date && d && date.getTime() < d.getTime()) {
            e.allowSelect = false;
        }
    }
    /******   Tip提示 组件初始化 Start   *******/
    var tip = new nui.ToolTip();
    tip.set({
        target: document,
        selector: '.showCellTooltip', //要添加提示元素的calss
        placement: 'topleft', //提示出现的位置
        onbeforeopen: function (e) {
            e.cancel = false;
        },
        onopen: function (e) { //提示框打开触发事件
            tip.setContent("请选择需要修改的数据"); //给提示框内容添加值
        }
    });

    //批量添加
    function batchAdd() {
        nui
            .open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
                title: "新增记录",
                width: 600,
                height: 300,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        pageType: "batchAdd",
                        tempFileName: "zzsqSqglImport.xlsx",
                        tempLoadName: "授权管理导入模板",
                        entitfName: "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt"
                    };//传入页面的json数据
                    iframe.contentWindow.SetData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
    }

    function output() {

        var form = new nui.Form("#form1");
        var json = form.getData(true, false);

        nui
            .open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据",
                width: 400,
                height: 200,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgtSearch",
                        queryParam: json, //查询数据
                        queryKey: 'criteria', //查询实体名
                        query: ['name','empnubmer','idnumber','zt','sqlx','sqyxq','sqyxq','zyly', 'isdelete', 'jd', 'fildid', 'addtime'], //按顺序放置
                        queryIndex: [1,2, 3,4,5, 6,7,8,10, 11, 12, 13],  //按顺序放置
                        expTitle: "授权管理",
                        filterField: "orderindex,uuid,jd,gzdw,gznr,zmwj,kssj,jssj,addtime,fildid", //要过滤的字段，多字段用,隔开
                        dicFieds: "zt@SQGL_WSZT,sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE",
                        jdFieds: "jd",
                        order: "orderindex@desc",
                        attachFied:"fildid"
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
    }

    //取消保存
    function cancelSave() {
        nui.confirm("是否取消此次操作，确认取消？", "确定？", function (action) {
            if (action == "ok") {
                nui.get("update").disable();
                grid.reload();
                nui.get("save").hide();
                nui.get("cancel").hide();
                nui.get("popupMenu").enable();
                fileName = "";
                filePath = "";
            }
        });
    }

      //新增
    function add() {
        nui.open({
            url: "/itmp/authorization/AuthorizationMgt/AuthorizationMgtForm.jsp",
            showMaxButton:true,
            title: "新增记录", width: 1000, height: 400,
            onload: function () {//弹出页面加载完成
            var iframe = this.getIFrameEl();
            var data = {pageType:"add"};//传入页面的json数据
            iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
            grid.reload();
        }
        });
    }
            
    var editRow = null;

    //新增
    function addRow() {
        var newRow = {
            name: "",
            sex: "MALE",
            kssj: nui.formatDate(new Date(), 'yyyy-MM-dd'),
            jssj: nui.formatDate(new Date(), 'yyyy-MM-dd'),
            sqyxq: nui.formatDate(new Date(), 'yyyy-MM-dd')
        };
        var addRow = "";
        grid.addRow(newRow, 0);
        this.grid.select(0);
        grid.validateRow(newRow); //加入新行，马上验证新行
        grid.beginEditRow(newRow);
        nui.get("update").disable();
        nui.get("save").show();
        nui.get("cancel").show();
        nui.get("popupMenu").disable();
        editRow = newRow;
    }

    //上传附件操作
    function onfileselect(e) {
        startUpload(e);
    }

    function startUpload(e) {
        var fileupload = e.sender;
        fileupload.startUpload();
    }

    //上传成功时，回写附件的name、id
    function onUploadSuccess(e, row) {
        fileName = e.file.name;
        filePath = nui.decode(e.serverData).ret.filePath;
    }

    //预览页面附件显示
    function setFile(e) {
    
        var fileRealName = e.record.fileRealName;
        var filepath = e.record.filePath;
        var fileId = e.record.fildid;
        if (fileRealName == null || fileRealName == 'null') {
            return "";
        }
        var html = '<a href="#" onclick="load(\'' + fileId
            + '\')" id="attr_' + filepath + '" >' + fileRealName
            + '</a>';
        return html;
    }

    //点击附件下载
    function load(fileId) {
        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="
            + fileId;
    }

    function onCellValidation(e) {

        if (e.field == "name" || e.field == "sqlx" || e.field == "zyly"
            || e.field == "gzdw" || e.field == "sqyxq") {

            if (e.value == null || e.value == "") {
                e.isValid = false;
                e.errorText = "字段不能为空";
            }

        }

        if (e.field == "idnumber") {
            var value = e.value;
            if (e.value == null || e.value == "") {
                e.errorText = "字段不能为空";
                e.isValid = false;
            } else if (value.length<15 || value.length>18) {
                e.errorText = "必须输入15~18位数字";
                e.isValid = false;
            }
        }
    }

    //保存
    function saveData() {
        grid.commitEdit();
        grid.validateRow(editRow);
        if (grid.isValid() == false) {
            grid.beginEditRow(editRow);
            nui.showTips({
                content: '表单校验不通过,请确认',
                state: 'warning',
                x: 'center',
                y: 'center'
            });
            return;
        }
        grid.commitEdit();
        var jsonObject = grid.getChanges();
        if (jsonObject != null && jsonObject.length > 0) {
            jsonObject[0]['filename'] = fileName;
            jsonObject[0]['filepath'] = filePath;
			jsonObject[0]['sqyxq'] = nui.formatDate(jsonObject[0]['sqyxq'],'yyyy-MM-dd');
            if (jsonObject[0]['zmwj'] != null
                && jsonObject[0]['zmwj'] != "") {
                jsonObject[0]['zmwjyw'] = "YOU";
            } else {
                jsonObject[0]['zmwjyw'] = "WU";
            }

            jsonObject[0]['jd'] = getCookie('jdid');
        }

        var data = {
            jsonObject: jsonObject[0]
        };
        var json = nui.encode(data);

        grid.loading("保存中，请稍后......");
        nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.addOrEdit.biz.ext",
                type: 'POST',
                data: json,
                success: function (text) {
                    grid.reload();
                    nui.get("update").disable();
                    nui.get("save").hide();
                    nui.get("cancel").hide();
                    nui.get("popupMenu").enable();
                    fileName = "";
                    filePath = "";
                    nui.alert('保存成功','错误',function (action) {
		            	
		        	});
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    grid.unmask();
                     nui.alert(jqXHR.responseText,'错误',function (action) {
		            	 grid.beginEditRow(editRow);
		        	});

//                     alert(jqXHR.responseText);
                }
               });
    }

  //编辑
function edit() {
    var row = grid.getSelected();
    
    if (row) {
        nui.open({
      		  showMaxButton : true,
            url: "/itmp/authorization/AuthorizationMgt/AuthorizationMgtForm.jsp",
            title: "编辑数据",
            width: 1000,
            height: 400,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = {pageType:"edit",record:{tdxglzzsqglsqgl:row}};
                //直接从页面获取，不用去后台获取
                iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {
                    grid.reload();
                }
                });
            } else {
                nui.alert("请选中一条记录","提示");
            }
        }


    //编辑
    function editRow() {
        var row = grid.getSelected();
        if (row) {
            grid.validateRow(row); //验证
            grid.beginEditRow(row);
            nui.get("save").show();
            nui.get("cancel").show();
            nui.get("popupMenu").disable();
            editRow = row;
            return;
        }
        nui.alert("请选中一条记录！");
    }

    //删除
    function remove() {
        var rows = grid.getSelecteds();
        if (rows.length > 0) {
			var result  = checkProcess(rows,0);
			if(result.flag){
				nui.alert(result.mess);
				return;
			}
            nui.confirm("确定删除选中记录？", "系统提示", function (action) {
                        if (action == "ok") {
       					var json = nui.encode({
							data : rows,
							entity : "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
						});
                            grid.loading("正在删除中,请稍等...");
                            $.ajax({
                                    url: "com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteone.biz.ext",
                                    type: 'POST',
                                    data: json,
                                    cache: false,
                                    contentType: 'text/json',
                                    success: function (text) {
                                        var returnJson = nui
                                            .decode(text);
                                        if (returnJson.exception == null) {
                                        nui.get("update").disable();
                                            grid.reload();
                                            nui
                                                .alert(
                                                    "删除成功",
                                                    "系统提示",
                                                    function (
                                                        action) {
                                                    });
                                        } else {
                                            grid.unmask();
                                            nui.alert("删除失败",
                                                "系统提示");
                                        }
                                    }
                                });
                        }
                    });
        } else {
            nui.alert("请选中一条记录！");
        }
    }

    //回收站
    function recycle() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/authorization/AuthorizationMgt/AuthorizationMgtRecycle.jsp",
            title: "回收站",
            width: 1000,
            height: 500,
            onload: function () {
				var iframe = this.getIFrameEl();
                var data = {pageType: "add",isJdgly : true};//传入页面的json数据
                iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {
                grid.reload();
            }
        });

    }

    //重新刷新页面
    function refresh() {
        var form = new nui.Form("#form1");
        var json = form.getData(true, false);
        grid.load(json);//grid查询
        nui.get("update").enable();
    }

    function searchs() {
        var newdate = nui.formatDate(new Date(), "yyyy-MM-dd");
        var form = new nui.Form("#form1");
        var wszt = nui.get("wszt").getValue();
        var ywwj = nui.get("ywwj").getValue();
 
//         if (wszt != null && wszt != "") {
//             if (wszt == "YGQ") {

//                 nui.get("starttime").setValue(newdate);
//                 nui.get("bjz").setValue("<=");

//             } else if (wszt == "ZC") {
//                 nui.get("starttime").setValue(newdate);
//                 nui.get("bjz").setValue(">");

//             }

//         }
        if (ywwj == "YOU") {
            nui.get("Isnull").setValue("notnull");
        } else if (ywwj == "WU") {
            nui.get("Isnull").setValue("null");
        }else{
          nui.get("Isnull").setValue("");
        }
        var json = form.getData(true, false);
        grid.load(json);//grid查询

    }

    //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
        $('#cond').val("");
        nui.get('con_jdid').setValue(getCookie('jdid'));
    }

    //enter键触发查询
    function onKeyEnter(e) {
        searchs();
    }

    //当选择列时
    function selectionChanged() {
        var rows = grid.getSelecteds();
        if (rows.length > 1 || grid.isEditing() || rows.length == 0) {
            nui.get("update").disable();
        } else {
            nui.get("update").enable();
        }
    }

    //性别公共代码转换
    function xbRenderer(e) {

        return nui.getDictText(e.column.editor.dictTypeId, e.value);
    }
//显示出高级查询的条件
function showquery() {
	
	var div = $("#form1");
	div.slideToggle(500);
	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
	if($("#scbt").text()=="高级查询"){
		$("#fuzzyQuery").hide();
		$("#allQuery").show();
		$("#scbt").text("隐藏查询条件");
	}else{
		$("#fuzzyQuery").show();
		$("#allQuery").hide();
		$("#scbt").text("高级查询");
	}
};
    //学历公共代码转换
    function xlRenderer(e) {
        return nui.getDictText("Edu", e.value);
    }

    //职称公共代码转换
    function zcRenderer(e) {
        return nui.getDictText("ZC", e.value);
    }

    //专业领域公共代码转换
    function zylyRenderer(e) {
        return nui.getDictText("ZYLY", e.value);
    }

    //授权类型公共代码转换
    function sqlxRenderer(e) {
        return nui.getDictText("SQTYPE", e.value);
    }

    //授权状态公共代码转换
    function sqztRenderer(e) {
        if (e.row.zt == "YGQ" || e.row.zt == "YCX" || e.row.zt == "YZT") {
            e.rowStyle = 'color:red';
        }
        return nui.getDictText("SQGL_WSZT", e.value);
    }

    //有效期公共代码转换
    function yxqRenderer(e) {
    
        var yxq = new Date(e.row.sqyxq);
        if (yxq != null && yxq < new Date()) {
            e.rowStyle = 'color:red';
            if(e.row.zt!="" && e.row.zt!=null && e.row.zt!="ZC"){
            	return e.cellHtml;
            }else{
            	e.row.zt = "YGQ";
            }
             return e.cellHtml;
        } else {
          if(e.row.zt!="" && e.row.zt!=null&&e.row.zt!="YGQ"){
            	return e.cellHtml;
            }else{
            	 e.row.zt = "ZC";
            }
            return e.cellHtml;
        }
    }

    function btnQuery() {
        var gjz = $("#cond").val();
        
        if (gjz == "") {
            refresh();
            nui.get("update").disable();
        } else {
            var data = {
                matchFied: "name,empnubmer,idnumber,sqfwhdj,bz",
                dicFied: "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                jdInfo: 'jd@' + getCookie('jdid')
            };
            
            var query = nui.decode(getKeyWordQuery(data));
            grid.load(query);
            nui.get("update").disable();
        }

    }

    function multiUpload() {
        nui.open({
            showMaxButton: true,
            title: "上传面板",
            //url: "src/uploadwindow.html",
            url: "/itmp/basecommon/multiUpload.jsp",
            width: 800,
            height: 500,
            allowResize: false,
            onload: function () {
                alert("onload");
                var iframe = this.getIFrameEl();
                var data = {
                    a: "msg1",
                    b: "msg2"
                }; //模拟传递上传参数
                //iframe.contentWindow.SetData(data);
            },
            ondestroy: function (action) {
                alert("ondestroy");
                if (action == "ok") {
                    var iframe = this.getIFrameEl();

                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);

                    var json = mini.encode(data);
                    alert("已完成上传数据：\n" + json);
                }
            }
        })
    }

    //根据有效日期修改状态
    function doChangeState(e) {
        var combo = e.sender;
        var row = grid.getEditorOwnerRow(combo);
        var editor = grid.getCellEditor("zt", row);
        var nowTime = new Date();
        if (combo.value >= nowTime) {
            editor.setValue("ZC");
        } else {
            editor.setValue("YGQ");
        }

    }

    function apply() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/authorization/AuthorizationMgt/aptitudeAuthorizationApply.jsp",
            title: "授权申请",
            width: 800,
            height: 500,
            onload: function () {

            },
            ondestroy: function (action) {
                grid.reload();
            }
        });
    }

    function cancel() {
        var rows = grid.getSelecteds();
        var uuids = "";
        if (rows.length <= 0) {
            nui.alert("请选择数据进行撤销或暂停！");
            return;
        }
		var result  = checkProcess(rows,1);
		if(result.flag){
			nui.alert(result.mess);
			return;
		}
        // var errorMess = "";
        // for (var i = 0; i < rows.length; i++) {
        //     
        //     if (rows[i].zt != 'ZC') {
        //         isHave = true;
        //         errorMess = "所选第" + (i + 1) + "条数据，" + rows[i].name
        //             + "的授权无法暂停或取消！";
        //         nui.alert(errorMess);
        //         return;
        //     }
        //     uuids += rows[i].uuid + (i == rows.length - 1 ? "" : ",")
        // }

        nui.open({
            showMaxButton: true,
            url: "/itmp/authorization/AuthorizationMgt/aptitudeCancel.jsp",
            title: "授权撤销/暂停",
            width: 600,
            height: 250,
            onload: function () {
                var iframe = this.getIFrameEl();
                iframe.contentWindow.setData(result.uuids);
            },
            ondestroy: function (action) {
                grid.reload();
            }
        });
    }

    function rest() {
        var rows = grid.getSelecteds();
        var uuids = "";
        if (rows.length <= 0) {
            nui.alert("请选择数据进行恢复！");
            return;
        }

        // var errorMess = "";
        // for (var i = 0; i < rows.length; i++) {
        //     
        //     if (rows[i].zt == 'ZC') {
        //         isHave = true;
        //         errorMess = "所选第" + (i + 1) + "条数据，" + rows[i].name
        //             + "的授权无法恢复！";
        //         nui.alert(errorMess);
        //         return;
        //     }
        //     uuids += rows[i].uuid + (i == rows.length - 1 ? "" : ",")
        // }
		var result  = checkProcess(rows,2);
        if(result.flag){
			nui.alert(result.mess);
			return;
		}
        nui.open({
            showMaxButton: true,
            url: "/itmp/authorization/AuthorizationMgt/aptitudeRecovery.jsp",
            title: "授权恢复",
            width: 500,
            height: "50%",
            onload: function () {
                var iframe = this.getIFrameEl();
                iframe.contentWindow.setData(result.uuids);
            },
            ondestroy: function (action) {
                grid.reload();
            }
        });
    }

		/**
		 *
		 * @param rows
		 * @param type 0 删除 1 撤销 2 恢复
		 */
		function checkProcess(rows,type) {
		var result  = {};
		result.flag = false;
		result.mess = "";
		var uuids = "";
		for(var i = 0 ; i < rows.length ; i++){
			uuids += rows[i].uuid + (i == rows.length - 1 ? "" : ",");
			if(type == 1 && rows[i].zt != 'ZC'){
				result.flag = true;
				result.mess = "所选第" + (i + 1) + "条数据，[" + rows[i].name + "]的授权非正常状态无需撤销或暂停！"
				return result;
			}

			if(type == 2 && rows[i].zt == 'ZC'){
				result.flag = true;
				result.mess = "所选第" + (i + 1) + "条数据，[" + rows[i].name + "]的授权已处于正常状态无需恢复！"
				return result;
			}

			if(rows[i].finish == '0'){
				var type  = rows[i].type;
				if(type == "cx"){
					type = "授权撤销";
				}else if(type == "zt"){
					type = "授权暂停";
				}else if(type == "hf"){
					type = "授权恢复";
				}
				result.flag = true;
				result.mess = "该数据正在["+type+"]流程中，无法进行本操作！";
				return result;
			}
		}
		result.uuids = uuids;
		return result;

	}
	function onClick(e){
// 		var isAdd = e.htmlEvent.srcElement.className;
// 		if(isAdd.indexOf("textareaAlert") >= 0 ) { 
// 			$(e.htmlEvent.srcElement).removeClass("textareaAlert");
// 		} else{
// 			$(e.htmlEvent.srcElement).addClass("textareaAlert");
// 		}
	}

	
	function review(){
		addTab("","审查记录","/itmp/authorization/Common/exmineList.jsp",data);
    }
    
    
    	function addTab(position,type,url,data) {
	         var tabs = parent.parent.nui.get("mainTabs");
	         var tab = { title: type, url: url, showCloseButton: true};
	         tab.onload = function (e) {
                var iframe = tabs.getTabIFrameEl(e.tab);
                iframe.contentWindow.setData(data);
              }
	         tab = tabs.addTab(tab);            
		     tabs.activeTab(tab);
	    }
	function reminder(){
		addTab("","到期提醒","/itmp/authorization/Common/ReminderList.jsp?fildname=dqtx",data);
	}
	
	
	//打开新增按钮
function openAllAdd(){
	$(".add_adds").toggle();
};
document.onclick = function (e) {
    //判断点击的地方是否为“更多”按钮和弹出层是否显示
	    if(!$(e.target).is("#addallbut")&&$(".add_adds").is(":visible")==true){
	        $(".add_adds").toggle();
	    }
 };
 function showquery() {
	var div = $("#form1");
	div.slideToggle(500);
	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
	if($("#scbt").text()=="高级查询"){
		$("#fuzzyQuery").hide();
		$("#allQuery").show();
		$("#scbt").text("隐藏查询条件");
	}else{
		$("#fuzzyQuery").show();
		$("#allQuery").hide();
		$("#scbt").text("高级查询");
	}
};
	//设置名称超链接
	function setHref(e){
		var xm = e.record.name;
		var uid = e.record._uid;
		
		var html = '<a href="javascript:void(0)" onclick="openView('+uid+')"  >' + xm + '</a>';
		return html;
	}
	//打开查看页面
	function openView(uid){
		var row = grid.getRowByUID(uid);
		nui.open({
			showMaxButton : true,
            url: "/itmp/authorization/AuthorizationMgt/AuthorizationMgtForm.jsp",
            title: "查看数据",
            width: 600,
            height: 400,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = {pageType:"view",record:{tdxglzzsqglsqgl:row}};
                //直接从页面获取，不用去后台获取
                iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {
                    grid.reload();
                }
                });
	}
	
</script>

             <script>
             function uploadFile (e, id) {
                let  xhr = new XMLHttpRequest();
                let  fd = new FormData();
                fd.append('file', e.target.files[0]);
                xhr.open('POST', '/itmp/coframe/framework/dzqm/uploadbd.jsp', true);
                xhr.send(fd);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        let  data = JSON.parse(xhr.responseText);
                        if (data.code == '1') {
                            onUploadSuccess&&onUploadSuccess({
                                file: {
                                    name: data.list[0].name
                                },
                                sender:{
                                    id: id
                                }
                                serverData: JSON.stringify({
                                    ret: {
                                        filePath: data.list[0].uri
                                    }
                                })
                            });
                        } else {
                            nui.alert(data.message);
                        }
                    }
                };
            }
             </script>
             </body>
             
</html>