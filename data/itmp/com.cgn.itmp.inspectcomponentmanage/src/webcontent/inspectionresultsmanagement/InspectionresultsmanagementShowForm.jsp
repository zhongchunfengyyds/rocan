<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-31 15:31:40
- Description:役检结果数据管理录入
    --%>
    <head>
        <title>
            役检结果数据管理录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
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
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="inspectionresultsmanagement.uuid"/>
            <input class="nui-hidden" id="fileid" name="inspectionresultsmanagement.fileid"/>
<!--             <input class="nui-hidden" id="fname" name="inspectionresultsmanagement.filename"/> -->
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
            
            	<tr>
			<td class="form_label" width="130">基地:</td>
			<td colspan="1"><input id="jd" class="nui-combobox"
				name="inspectionresultsmanagement.jd"
				url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
				textField="name" readonly="readonly" dataField="jsonObject" id="jd"
				valueField="id" onvaluechanged="reloadJz" style="width: 100%" /></td>
			<td class="form_label" width="130">机组:</td>
			<td colspan="1"><input class="nui-combobox"
				name="inspectionresultsmanagement.jz"  dataField="jsonObject"
				readonly="readonly" id="jz" textField="name" url="" valueField="id"
				style="width: 100%" /></td>
		</tr>
                <tr>
                    <td class="form_label">
                        大修轮次:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" emptyText="请输入大修轮次"  requiredErrorText="大修轮次不能为空" name="inspectionresultsmanagement.overhaulsequence" style="width: 100%"/>
                    </td>
                    <td class="form_label">
                        检查项目类型:
                    </td>
                    <td colspan="1">
                    <input class="nui-dictcombobox" readonly="readonly" style="width: 100%" onvaluechanged="checkvaluechanged" name="inspectionresultsmanagement.checkprojecttype" dictTypeId="JCXMLX" emptyText="请选择检查项目类型"  requiredErrorText="检查项目类型不能为空"/>
                       <!--  <input class="nui-combobox"name="inspectionresultsmanagement.checkprojecttype"/> -->
                    </td>
                </tr>
                <tr> 
                
                    <td class="form_label">
                        设备名称:
                    </td>
                    <td colspan="1" id="sbmctd">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%" emptyText="请输入设备名称"  requiredErrorText="设备名称不能为空" name="inspectionresultsmanagement.equipmentname"/>
                    </td>
                    <td class="form_label">
                        部件名称:
                    </td>
                    <td colspan="1" id="bjmctd">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%" emptyText="请输入部件名称"  requiredErrorText="部件名称不能为空" name="inspectionresultsmanagement.componentname"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        项号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%" name="inspectionresultsmanagement.itemnumber"/>
                    </td>
                    <td class="form_label">
                        工作票号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"  emptyText="请输入工作票号" style="width: 100%"
                         requiredErrorText="工作票号不能为空" name="inspectionresultsmanagement.workticketnumber"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        被检部位:
                    </td>
						<td colspan="1" id="bjtr" >
						<!-- <input id="bjbw" readOnly="readOnly" name="inspectionresultsmanagement.checklocation" class="nui-textbox"  style="width: 50%" />
					  <a class="mini-button" onclick="openTree()">选择被检部位</a> -->
                       <input class="nui-textbox" readonly="readonly" style="width: 100%" emptyText="请输入被检部位" name="inspectionresultsmanagement.checklocation" requiredErrorText="被检部位不能为空" />
						</td>
                    </td>
                    <td class="form_label">
                        检查内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  emptyText="请输入检查内容" readonly="readonly"
                         requiredErrorText="检查内容不能为空" style="width: 100%" name="inspectionresultsmanagement.inspectioncontent"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" readonly="readonly" dictTypeId="YJJCFF" emptyText="请输入检查方法" style="width: 100%"  
                         requiredErrorText="检查方法不能为空" name="inspectionresultsmanagement.inspectionmethod"/>
                    </td>
                    <td class="form_label">
                        检验程序:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"  style="width: 100%" emptyText="请输入检验程序"
                         requiredErrorText="检验程序不能为空" name="inspectionresultsmanagement.inspectionprocedure"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        专用计划:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%" 
                          name="inspectionresultsmanagement.specialplan"/>
                    </td>
                    <td class="form_label">
                        检查综合报告:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%" 
                          name="inspectionresultsmanagement.inspectioncomprehensivereport"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检查结果:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readonly="readonly"  style="width: 100%" emptyText="请输入检查结果"
                         requiredErrorText="检查结果不能为空" name="inspectionresultsmanagement.examinationresult"/>
                    </td>
                    </tr>
                <tr>
                    <td class="form_label">
                        相关附表:
                    </td>
                    
                   <td colspan="3" id="fileHref">
                   
                   </td>
                    
                    <td colspan="1" style="display: none">
                    <input class="nui-textbox" style="width:100%;cursor: pointer;color: blue;" readonly="readonly" id="fj" name="inspectionresultsmanagement.fj" />
					<form id="uploadform1" enctype="multipart/form-data">
						<input id="fj" class="" style="width:72px" type="file" name="inspectionresultsmanagement.fj" accept="*" onchange="fileSub1(this)"> 
					</form>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readonly="readonly"  style="width: 100%" 
                          name="inspectionresultsmanagement.templeremark"/>
                    </td>
                    <input class="nui-hidden" name="inspectionresultsmanagement.isdel" value="0"/>
                    </tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" style="display: none" id="savebt" onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" onclick="onCancel()">
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
			nui.get("jd").setValue(jdid);
			nui.get('jz').setAjaxType("POST");
			nui.get('jz').load(
					"com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="
							+ jdid);
			nui.get("jz").setValue(jzid);
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
			//5EOMR文件下载
		function filedown(){
		 var div = document.getElementById('fileHref');
			var fileRealName = nui.get('fj').value;//eomrfile
			var fileId = nui.get('fileid').value;//eomrfileid
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
                    function setFormData(data){
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
                            filedown();
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
                        else window.close();
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
