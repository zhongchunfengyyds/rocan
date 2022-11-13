<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-15 15:50:19
- Description:
    --%>
    <head>
        <title>
            授权录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        	<script type="text/javascript" src="/itmp/common/nui/locale/zh_CN.js"></script>
        <script type="text/javascript" src="/itmp/js/swfupload/swfupload.js"></script>
        <link type="text/css"	href="/itmp/css/themes/table.css"	rel="stylesheet" />
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tdxglzzsqglsqgl.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="tdxglzzsqglsqgl.uuid"/>
             <input class="nui-hidden" id="fileRealName" name="tdxglzzsqglsqgl.fileRealName"/>
             <input class="nui-hidden" id="fileId" name="tdxglzzsqglsqgl.fileId"/>
             <input class="nui-hidden" id="zmwj" name="tdxglzzsqglsqgl.zmwj"/>
             <input name="jd" id="jdid" class="nui-hidden"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>

                    <td class="form_label">
                        姓名:
                    </td>
                    <td colspan="1">
                        <input  id="name" required="true" onvalidation="hasIllegalChar(e,200,true,true)" requiredErrorText="姓名不能为空"  emptyText="请输入姓名"  style="width:100%;" class="nui-textbox" name="tdxglzzsqglsqgl.name"/>
                    </td>
                                        <td class="form_label">
                        性别:
                    </td>
                    
                    <td colspan="1">
                        <input id="sex" style="width:100%;" class="nui-dictcombobox" name="tdxglzzsqglsqgl.sex"
                        dictTypeId="XB"/>
                    </td>
                </tr>
                <tr>
                                        <td class="form_label">
                        身份证号:
                    </td>
                     <td colspan="1">
                        <div id="idnumber" class="nui-autocomplete" style="width:100%;" name="tdxglzzsqglsqgl.idnumber"
                             popupWidth="400" textField="IDNUMBER" valueField="IDNUMBER" dataField="list" 
                             required="true" requiredErrorText="身份证号不能为空"  emptyText="请输入身份证号"  
                             url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.getInfoByKeyWord.biz.ext"
                             onvaluechanged="onValueChanged" onvalidation="onIDCardsValidation"  onbeforeload="onBeforeLoadeidN">
                            <div property="columns">
                                <div header="姓名" field="NAME" width="30"></div>
                                <div header="员工号" field="EMPNUBMER"></div>
                                <div header="身份证号" field="IDNUMBER"></div>
                            </div>
                        </div>
                    </td>
                   
                    <td class="form_label">
                        员工号:
                    </td>
                    <td colspan="1">
                        <div id="empnubmer"   class="nui-autocomplete" style="width:100%;" name="tdxglzzsqglsqgl.empnubmer"
                             popupWidth="400" onvalidation="hasIllegalChar(e,200,false,true)" textField="EMPNUBMER" valueField="EMPNUBMER" dataField="list" 
                             url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.getInfoByKeyWord.biz.ext"
                             onvaluechanged="onValueChanged" onbeforeload="onBeforeLoadempN">
                            <div property="columns">
                                <div header="姓名" field="NAME" width="30"></div>
                                <div header="员工号" field="EMPNUBMER"></div>
                                <div header="身份证号" field="IDNUMBER"></div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        学历:
                    </td>
                    <td colspan="1">
                        <input id="xl" style="width:100%;" class="nui-dictcombobox" name="tdxglzzsqglsqgl.xl"
                        dictTypeId="Edu"/>
                    </td>
                    <td class="form_label">
                        职称:
                    </td>
                    <td colspan="1">
                        <input id="zc" style="width:100%;" class="nui-dictcombobox" name="tdxglzzsqglsqgl.zc"
                        dictTypeId="ZC"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        专业领域:
                    </td>
                    <td colspan="1">
                        <input id="zyly" required="true" requiredErrorText="专业领域不能为空"  emptyText="请输入专业领域"  style="width:100%;" class="nui-dictcombobox" dictTypeId="ZYLY" name="tdxglzzsqglsqgl.zyly"/>
                    </td>
                    <td class="form_label">
                        授权类型:
                    </td>
                    <td colspan="1">
                        <input required="true" requiredErrorText="授权类型不能为空"  emptyText="请输入授权类型"  style="width:100%;" class="nui-dictcombobox" dictTypeId="SQTYPE" name="tdxglzzsqglsqgl.sqlx"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        授权有效期至:
                    </td>
                    <td colspan="1">
                        <input required="true" requiredErrorText="授权有效期不能为空"  emptyText="请输入授权有效期"  style="width:100%;" class="nui-datepicker"  showClose="true"
									oncloseclick="this.setValue(null);" onvaluechanged="setSqzt" format="yyyy-MM-dd"  allowInput="false" name="tdxglzzsqglsqgl.sqyxq"/>
                    </td>
                              <td class="form_label">
                        状态:
                    </td>
                    <td colspan="1">
                    <input style="width:100%;" id="zt"
			readOnly="true" class="nui-dictcombobox" dictTypeId="SQGL_WSZT" name="tdxglzzsqglsqgl.zt"/>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="form_label">
                        授权范围和等级（如有）:
                    </td>
                    <td colspan="3">
                        <input style="width:100%;" onvalidation="hasIllegalChar(e,32,false,true)" class="nui-textArea" name="tdxglzzsqglsqgl.sqfwhdj"/>
                    </td>
                </tr>
                <tr>

                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="3">
                        <input style="width:100%;" class="nui-textArea" onvalidation="hasIllegalChar(e,100,false,true)" name="tdxglzzsqglsqgl.bz"/>
                    </td>
                </tr>

                <tr>
                    <td class="form_label">
                        证明文件（上传附件）:
                    </td>
                    <td colspan="3" style="display:none;" id="filehref">
                    
                    </td>
                    <td colspan="3" id="zmwjTd">
					 <input type="file" id="zmwjFile" name="file" multiple onchange="uploadFile(event,id)" /> 
                    </td>
                </tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a id="btnSave" class="nui-button"  onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button"  onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            //autocomplete的placeholder单独处理
             $(".mini-buttonedit-input")[1].placeholder = '请输入身份证号';
		    var jdid = getCookie('jdid');
		    nui.get('jdid').setValue(jdid);

            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var state = "added";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    state = "modified";
                }
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
			nui.get("#btnSave").setEnabled(false);
                var data = form.getData(false,true);
                  if (data != null) {
		            data.tdxglzzsqglsqgl['filename'] = fileName;
		            data.tdxglzzsqglsqgl['filepath'] = filePath;
					data.tdxglzzsqglsqgl['sqyxq'] = nui.formatDate(data.tdxglzzsqglsqgl['sqyxq'],'yyyy-MM-dd');
		            if (data.tdxglzzsqglsqgl['zmwj'] != null
		                && data.tdxglzzsqglsqgl['zmwj'] != "") {
		                data.tdxglzzsqglsqgl['zmwjyw'] = "YOU";
		            } else {
		                data.tdxglzzsqglsqgl['zmwjyw'] = "WU";
		            }
		           data.tdxglzzsqglsqgl['jd'] = jdid;
		           data.tdxglzzsqglsqgl['_state']=state;
		        }
                var json = nui.encode(data);
                $.ajax({
                    url:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.addOrEdit.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                            CloseWindow("saveSuccess");
                        }else{
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    //CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.get("#btnSave").setEnabled(true);
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});	
						}
                        });
                    }

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
						nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            nui.get("empnubmer").setValue(json.tdxglzzsqglsqgl.empnubmer);
					        nui.get("empnubmer").setText(json.tdxglzzsqglsqgl.empnubmer);
					        nui.get("idnumber").setValue(json.tdxglzzsqglsqgl.idnumber);
					        nui.get("idnumber").setText(json.tdxglzzsqglsqgl.idnumber);
					        nui.get("zmwjFile").setValue(json.tdxglzzsqglsqgl.fileRealName);
					        nui.get("zmwjFile").setText(json.tdxglzzsqglsqgl.fileRealName);
                        }else   if (infos.pageType == "view") {//查看页面
                            var json = infos.record;
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
							form.setEnabled(false);
                            nui.get("empnubmer").setValue(json.tdxglzzsqglsqgl.empnubmer);
					        nui.get("empnubmer").setText(json.tdxglzzsqglsqgl.empnubmer);
					        nui.get("idnumber").setValue(json.tdxglzzsqglsqgl.idnumber);
					        nui.get("idnumber").setText(json.tdxglzzsqglsqgl.idnumber);
					        nui.get("zmwjFile").setValue(json.tdxglzzsqglsqgl.fileRealName);
					        nui.get("zmwjFile").setText(json.tdxglzzsqglsqgl.fileRealName);
					        SetFilehref();
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
                    //授权日期变动时，设置授权状态
                    function setSqzt(e){
                    	//当天
                    	var currentDate = new Date();
                    	var select = e.value;
                    	if(select >= currentDate){
                    		nui.get('zt').select('0');
                    	}else if(select < currentDate){
                    		nui.get('zt').select('1');
                    	}else{
                    	}
                    	//var selectDate = nui.formatDate(e.value,'yyyy-MM-dd');
                    }
                    //工号联想
                       function onBeforeLoadempN(e) {
					        e.data.type = 'empN';
					        e.data.jd = jdid;
					    }
					//身份证号联想
					    function onBeforeLoadeidN(e) {
					        e.data.type = 'idN';
					        e.data.jd = jdid;
					    }
                    //联想框回调
                      function onValueChanged(e) {
					        var item = e.selected;
					        nui.get("name").setValue(item.NAME);
					        nui.get("sex").setValue(item.SEX);
					        nui.get("empnubmer").setValue(item.EMPNUBMER);
					        nui.get("empnubmer").setText(item.EMPNUBMER);
					        nui.get("idnumber").setValue(item.IDNUMBER);
					        nui.get("idnumber").setText(item.IDNUMBER);
					        nui.get("xl").setValue(item.XL);
					        nui.get("zc").setValue(item.ZC);
					        nui.get("zyly").setValue(item.ZYLY);
    }
       //上传附件操作
    function onfileselect(e) {
        startUpload(e);
    }

    function startUpload(e) {
        var fileupload = e.sender;
        fileupload.startUpload();
    }
    var fileName = "";
    var filePath = "";
        //上传成功时，回写附件的name、id
    function onUploadSuccess(e) {
        fileName = e.file.name;
        filePath = nui.decode(e.serverData).ret.filePath;
        nui.get('zmwj').setValue(fileName);
    }
    
    //查看页面超链接
    function SetFilehref(){
     	document.getElementById("filehref").style.display="";
     	document.getElementById("zmwjTd").style.display="none";
     	nui.get('btnSave').hide();
	    var div = document.getElementById('filehref');
		var fileRealName = nui.get('fileRealName').value;
		var fileId = nui.get('fileId').value;
		if(fileRealName!=""&&fileId!=""){
		div.innerHTML = '<a style="100%;" href="javascript:void(0)" onclick="load(\'' + fileId + '\')" >' + fileRealName + '</a>';
		}
	}
	//点击附件下载
    function load(fileId) {
        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="
            + fileId;
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