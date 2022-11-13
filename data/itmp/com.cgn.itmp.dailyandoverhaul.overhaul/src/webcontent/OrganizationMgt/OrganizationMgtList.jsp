<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<%
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dataTime = df.format(new Date());
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-10 18:16:17
- Description:
    --%>
<head>
    <!-- <title>
                TDxglDxglZzgl查询
            </title> -->
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js"
            type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js"
            type="text/javascript"></script>
    <script type="text/javascript"
            src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
    <script type="text/javascript"
            src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>

</head>
<body
        style="background-color: #f1f1f1; width: 98%; height: 98%; margin: 0 auto;">

           <div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="">
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
				<div id="form1" class="nui-form display" align="center" style="height: 27px">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.OrganizationMgtSearch">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">大修轮次：</td>
							<td colspan="1"><input class="nui-textbox"
								name="criteria/_expr[1]/xh"/> <input class="nui-hidden"
								name="criteria/_expr[1]/_op"value="like"> <input
                                class="nui-hidden" name="criteria/_expr[1]/_likeRule"
                                value="all"></td>
							<td class="form_label"></td>
							<td colspan="1"></td>
						</tr>
						
					</table>
					<input class="nui-hidden" name="criteria/_expr[2]/isdelete"
                                    value="0"/> <input class="nui-hidden"
                                                       name="criteria/_expr[2]/_op" value="like"> <input
                                class="nui-hidden" name="criteria/_expr[2]/_likeRule"
                                value="end"> <input class="nui-hidden" id="con_jdid"
                                                    name="criteria/_expr[3]/jdid"/> <input class="nui-hidden"
                                                                                           name="criteria/_expr[3]/_op"
                                                                                           value="like"> <input
                                class="nui-hidden" name="criteria/_expr[3]/_likeRule"
                                value="end">
                            <input class="nui-hidden" name="criteria/_orderby[4]/_property" value="orderindex">
                            <input class="nui-hidden" name="criteria/_orderby[4]/_sort" value="desc">
				</div>
				
			</div>

		</div>
	</div>
</div>
     
                          <script type="text/javascript"
                    src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>


<div region="center" style="width: 100%; height: 95%;"
     showToolbar="false" showFooter="false">
    <div class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
        <table style="width:100%;">
            <tr>
                <td style="width:100%;padding:5px 0;">

                   <button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
							新增
						</button>
						<ul id="popupMenu" class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>


                    <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()" name="ITMP_btnEdit" >
                        修改
                    </a>
                    <a class="nui-button btn btn-default btn-xs"  onclick="remove2()" name="ITMP_btnDel" >
                        删除
                    </a>
                    <a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">
                        导出</a>

                    <a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec" >
                        回收站
                    </a>
                    <span id="saveOrCancel">
                         <a class="nui-button  btn btn-warning btn-xs" id="save" onclick="saveData()" >保存</a>
                         <a class="nui-button  btn btn-primary btn-xs" id="cancle" onclick="cancelSave()">关闭</a>

                         </span>

                </td>
            </tr>
        </table>
    </div>
    <div class="nui-fit">
        <div id="datagrid1" dataField="tdxgldxglzzgls" class="nui-datagrid"
             style="width: 100%; height: 100%; overflow-x: hidden;"
             url="com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.queryTDxglDxglZzgls.biz.ext"
             pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
             allowCellValid="true" oncellvalidation="onCellValidation" allowAlternating="true"
             onselectionchanged="selectionChanged" allowSortColumn="true" sortMode="client"
             oncellbeginedit="onCellBeginEdit">

            <div property="columns">

                <div type="checkcolumn"></div>
                <div field="uuid" headerAlign="center" allowSort="true"
                     visible="false">uuid
                </div>
                <div header="大修轮次" headerAlign="center">
                    <div property="columns">
                        <div field="xh" id="xh" allowResize="false"
                             width="50" headerAlign="center" allowSort="true">
						    <div id="combobox1" property="editor" required="true" popupWidth="70" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="false"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         <div field="name"></div>
							     </div>
							</div>
                        </div>
                    </div>
                </div>
                <div field="zzlx" width="100" headerAlign="center"
                     renderer="zzlxRenderer">
                    类型 <input property="editor" class="nui-dictcombobox" required="true" requiredErrorText="类型不能为空"
                              style="width: 100%;" dataField="zzlx" dictTypeId="zzgltype"/>
                </div>
                <div field="zzmc" allowResize="false" width="120"
                     headerAlign="center" allowSort="true">
                    名称<input property="editor" class="nui-textbox zzmc"
							style="width: 100%;" readonly="readonly" />
                </div>
                <div field="bc" allowResize="false" width="120"
                     headerAlign="center" allowSort="true">
                    版次<input property="editor" class="nui-textbox"  style="width: 100%;" onvalidation="hasIllegalChar(e,50,false,true)"/>
                </div>
                <div field="fj" allowResize="false" width="120" renderer="setFile"
                     headerAlign="center" allowSort="true">
                    附件<input property="editor" class="nui-fileupload nui-form-input" onvalidation="hasIllegalChar(e,50,true,true)"
                             name="uploadFile" limitType="*.*" limitSize="100MB"
                             flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
                             onfileselect="onfileselect"
                             uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
                             onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
                             style="width: 100%;" required="true" requiredErrorText="附件不能为空"/>
                </div>
                <div field="fileRealName" headerAlign="center" allowSort="true"
                     visible="false">fileRealName
                </div>
                <div field="filePath" headerAlign="center" allowSort="true"
                     visible="false"></div>
                <div field="filename" headerAlign="center" allowSort="true"
                     visible="false"></div>
                <div field="fildid" headerAlign="center" allowSort="true"
                     visible="false"></div>
                <div field="adduser" allowResize="false" width="120"
                     headerAlign="center" allowSort="true">
                    上传者<input property="editor" class="nui-textbox adduser"
                              style="width: 100%;" readonly="readonly"/>
                </div>
                 <div field="updtime"  allowResize="false" width="120"
                     headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                    上传日期 <input id="addtime" property="editor"
                                class="nui-datepicker scsj" style="width: 100%;"
                                readonly="readonly" />
                </div>
                <div field="isdelete" allowResize="false" width="120"
                     headerAlign="center" allowSort="true" visible="false">
                    删除标志<input property="editor" class="nui-textbox"
                               style="width: 100%;"/>
                </div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

    nui.parse();
    window.alert = function() {
		return false;
	}
    var grid = nui.get("datagrid1");
    var jdid = getCookie('jdid');
    var fileName = "";
    var filePath = "";
    nui.get('con_jdid').setValue(jdid);
    nui.get("save").hide();
    nui.get("cancle").hide();
    nui.get("update").disable();
    
    if (jdid != null && jdid != "") {
//按钮权限控制
        accessControlButton('<%=userRoleCodeList %>',3);
        var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);
    }
    var tip = new nui.ToolTip();
    tip.set({
        target: document,
        selector: '.showCellTooltip',   //要添加提示元素的calss
        placement: 'topleft',              //提示出现的位置
        onbeforeopen: function (e) {
            e.cancel = false;
        },
        onopen: function (e) {      //提示框打开触发事件
            tip.setContent("请选择需要修改的数据");  //给提示框内容添加值
        }
    });
    var tip1 = new nui.ToolTip();
    tip1.set({
        target: document,
        selector: '.adduser',   //要添加提示元素的calss
        placement: 'topleft',              //提示出现的位置
        onbeforeopen: function (e) {
            e.cancel = false;
        },
        onopen: function (e) {      //提示框打开触发事件

            tip1.setContent("系统默认当前登录人！");  //给提示框内容添加值
        }
    });
    var tip2 = new nui.ToolTip();
    tip2.set({
        target: document,
        selector: '.scsj',   //要添加提示元素的calss
        placement: 'topleft',              //提示出现的位置
        onbeforeopen: function (e) {
            e.cancel = false;
        },
        onopen: function (e) {      //提示框打开触发事件


            tip2.setContent("系统默认当前时间！");  //给提示框内容添加值
        }
    });
    var tip3 = new nui.ToolTip();
		tip3.set({
			target : document,
			selector : '.zzmc', //要添加提示元素的calss
			placement : 'topleft', //提示出现的位置 
			onbeforeopen : function(e) {
				e.cancel = false;
			},
			onopen : function(e) { //提示框打开触发事件

				tip3.setContent("系统默认当前上传附件名称！"); //给提示框内容添加值
			}
		});


    function output() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        nui.open({
            showMaxButton: true,
            url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
            title: "导出数据", width: 350, height: 200,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {
                    entityName: "com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.OrganizationMgtSearch",
                    queryParam: json,								    //查询数据
                    queryKey: 'criteria',                              //查询实体名
                    query: ['xh', 'isdelete', 'jdid', 'addtime'],  //按顺序放置
                    filterField: ['jdid','jzid','fileRelativePath','orderindex','uuid', 'isdelete', 'dxlc', 'fj', 'addtime', 'upduser', 'yjjsr', 'fildid', 'fileId', 'fileRealName', 'filePath', 'fileSize', 'fileType', 'fileUploadTime', 'fileUploadUser', 'fileNewName','updtime'],
                    expTitle: "组织管理",
                    dicFieds: "zzlx@zzgltype",
                    jdFieds: "jdid",
                    jzFieds: "jzid",
                    order: "orderindex@desc"
                };//传入页面的json数据
                iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
            }
        });
    }

    //回收站页面
    function recycle() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/overhaul/OrganizationMgt/OrganizationMgtRecycle.jsp",
            title: "回收站", width: 1000, height: 500,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {pageType: "add",isJdgly : true};//传入页面的json数据
                iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                nui.get("save").hide();
                nui.get("cancle").hide();
                nui.get("update").disable();
                grid.reload();
            }
        });
    }

    //取消保存
    function cancelSave() {
        nui.confirm("是否取消此次操作，确认取消？", "确定？",
            function (action) {
                if (action == "ok") {
                    nui.get("update").disable();
                    grid.reload();
                    nui.get("save").hide();
                    nui.get("cancle").hide();
                    nui.get("popupMenu").enable();
                    fileName = "";
                    filePath = "";

                }
            }
        );
    }

    //关键字查询
    function btnQuery() {
        var gjz = $("#cond").val();
        if (gjz == "") {
            refresh();
            nui.get("update").disable();
        } else {
            var data = {
                matchFied: "xh,zzmc,bc,adduser",
                dicFied: "zzlx@zzgltype",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                jdInfo: 'jdid@' + getCookie('jdid')
            }
            var query = nui.decode(getKeyWordQuery(data));

            grid.load(query);
            nui.get("update").disable();
        }

    }

    var editRow = null;


    //新增
    function add() {
        var newRow = {
            name: " "
        };
        grid.addRow(newRow, 0);
        this.grid.select(0);
        grid.validateRow(newRow);   //加入新行，马上验证新行
        grid.beginEditRow(newRow);
        nui.get("update").disable();
        nui.get("save").show();
        nui.get("cancle").show();
        nui.get("popupMenu").disable();
        editRow = newRow;
    }

    //批量添加
    function batchAdd() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
            title: "新增记录", width: 600, height: 300,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {
                    pageType: "batchAdd",
                    tempFileName: "dxzzglImport.xlsx",
                    tempLoadName: "大修组织管理导入模板",
                    entitfName: "com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.OrganizationMgt"
                };//传入页面的json数据
                iframe.contentWindow.SetData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
            }
        });
    }

    //编辑
    function edit() {
        var row = grid.getSelected();
        if (row) {
            grid.validateRow(row);   //验证
            grid.beginEditRow(row);
            nui.get("save").show();
            nui.get("cancle").show();
            nui.get("popupMenu").disable();
            editRow = row;
            return;
        }
        nui.alert("请选中一条记录！");
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

    //一览页面附件显示
    function setFile(e) {
        var fileRealName = e.record.fileRealName;
        var filepath = e.record.filePath;
        var fileId = e.record.fildid;
        if (fileRealName == null || fileRealName == 'null') {
            return "";
        }
        var html = '<a href="#" onclick="load(\'' + fileId + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
        return html;
    }
    //点击附件下载
    function load(fileId) {
        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId=" + fileId;
    }

    //必填项校验

    function onCellValidation(e) {
        if (e.field == "jzid") {
            e.column.editor.url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + getCookie('jdid');
        }


        if (e.field == "jzid" || e.field == "dxlc" || e.field == "zzlx" || e.field == "fj" || e.field == "xh") {
            if (e.value == null || e.value == "") {
                e.isValid = false;
                e.errorText = "字段不能为空";
//                     grid.beginEditRow(e.row); 
            }
        }
    }

    //保存
    function saveData() {
		
        grid.commitEdit();
        grid.validateRow(editRow);
        if (grid.isValid() == false) {

            grid.beginEditRow(editRow);
            nui.showTips({content: '表单校验不通过,请确认', state: 'warning', x: 'center', y: 'center'});
            return;
        }
        var jsonObject = grid.getChanges();
        if (jsonObject != null && jsonObject.length > 0) {
            jsonObject[0]['filename'] = fileName;
            jsonObject[0]['filepath'] = filePath;
            jsonObject[0]['updtime'] = nui.formatDate(jsonObject[0]['updtime'],'yyyy-MM-dd');
            var num = 0;
            jsonObject[0]['jdid'] = getCookie('jdid');
            if(fileName == ''){
            	fileName=jsonObject[0].fileRealName;
            }
            jsonObject[0]['zzmc'] = fileName.split('.')[0];
        }
        var data = {
            jsonObject: jsonObject[0],token:"<%=TokenUtil.getTokenString(request.getSession())%>"
        };
        
        var json = nui.encode(data);
        grid.loading("保存中，请稍后......");
        nui.ajax({
            url: "com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.newAddEdit.biz.ext",
            type: 'POST',
            data: json,
            success: function (text) {
                grid.reload();
                nui.get("update").disable();
                nui.get("save").hide();
                nui.get("cancle").hide();
                nui.get("popupMenu").enable();
                fileName = "";
                filePath = "";

            },error: function (jqXHR, textStatus, errorThrown) {
						 grid.unmask();
						 nui.alert(jqXHR.responseText,'错误',function (action) {
							 grid.beginEditRow(editRow);
						});
					
					//                     alert(jqXHR.responseText);
					}
        });

    }


    function xhRender(e) {
        grid.hideColumn('dxlc');
        return e.record.xh;
    }

    function lcRender(e) {
        return "";
    }

    //类型
    function zzlxRenderer(e) {
        return nui.getDictText("zzgltype", e.value);
    }

    //大修轮次
    function dxlcRenderer(e) {
        return nui.getDictText("DXLC", e.value);
    }

    //逻辑删除
    function remove2() {
        var rows = grid.getSelecteds();
        if (rows.length > 0) {
            nui.confirm("确定删除选中记录？", "系统提示",
                function (action) {
                    if (action == "ok") {
<%--                         var json = nui.encode({tdxgldxglzzgls: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"}); --%>
                        var json = nui.encode({
							data : rows,
							entity : "com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.OrganizationMgt",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
						});
                        grid.loading("正在删除中,请稍等...");
                        $.ajax({
                            url: "com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteone.biz.ext",
                            type: 'POST',
                            data: json,
                            cache: false,
                            contentType: 'text/json',
                            success: function (text) {
                                var returnJson = nui.decode(text);
                                if (returnJson.exception == null) {
                                    grid.reload();
                                    nui.get("popupMenu").enable();
                                    nui.get("update").disable();
                                    nui.get("save").hide();
                                    nui.get("cancle").hide();
                                    nui.alert("删除成功", "系统提示", function (action) {
                                    });
                                } else {
                                    grid.unmask();
                                    nui.alert("删除失败", "系统提示");
                                }
                            }
                        });
                    }
                });
        } else {
            nui.alert("请选中一条记录！");
        }

    }

    //重新刷新页面
    function refresh() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        grid.load(json);//grid查询
        nui.get("update").enable();
    }

    //查询
    function searchs() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        grid.load(json);//grid查询
        nui.get("update").disable();
    }

    //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
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
    
    function onCloseClick(e) {
	    var obj = e.sender;
	    obj.setText("");
	    obj.setValue("");
	}
	
	function onCellBeginEdit(e){
		var field = e.field;
        if (field == "xh") {
        	var editor = e.editor;
        	editor.load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
        }
        if (field == "fj") {
			        e.editor.text = e.row.fj;
		 }
	}
			//显示出高级查询的条件
						//高级搜索按钮
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
  //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
        $('#cond').val("");
        nui.get('con_jdid').setValue(getCookie('jdid'));
    }
     
</script>
</body>
</html>
