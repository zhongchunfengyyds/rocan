<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-15 20:01:42
- Description:
    --%>
    <head>
        <title>
            核岛维修范畴目视检验人员录入
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
            <input class="nui-hidden" name="jsonObject.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="jsonObject.uuid"/>
             <input class="nui-hidden" id="fildid" name="jsonObject.fildid"/>
             <input class="nui-hidden" id="zmwj" name="jsonObject.zmwj"/>
             <input name="jd" id="jdid" class="nui-hidden"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        姓名:
                    </td>
                    <td colspan="1">
                        <input style="width:100%;" class="nui-textbox" onvalidation="hasIllegalChar(e,200,true,true)" required="true" requiredErrorText="姓名不能为空"  emptyText="请输入姓名" name="jsonObject.name"/>
                    </td>
                    <td class="form_label">
                        性别:
                    </td>
                    <td colspan="1">
                        <input style="width:100%;" class="nui-dictcombobox" name="jsonObject.sex" dictTypeId="XB" style="width:100%;"/>
                    </td>

                </tr>
                <tr>
                  <td class="form_label">
                        员工号:
                    </td>
                      <td colspan="1">
                        <input style="width:100%;" class="nui-textbox"  onvalidation="hasIllegalChar(e,200,false,true)" name="jsonObject.empnubmer"/>
                    </td>
                                        <td class="form_label">
                        身份证号:
                    </td>
                      <td colspan="1">
                      <input class="nui-dictcombobox" allowInput="true" url="com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.getIdnumber.biz.ext" onvalidation="onIDCardsValidation"
                          dataField="jsonObject" textField="IDNUMBER" valueField="IDNUMBER" style="width: 100%;" required="true" requiredErrorText="身份证号不能为空" emptyText="请输入身份证号" name="jsonObject.idnumber"/>
                    </td>
                </tr>
                <tr>
                	<td class="form_label">
                        授权类型:
                    </td>
                    <td colspan="1">
                        <input id="sqlx" property="editor" class="nui-textbox" style="width: 100%;"
                             required="true" value="核岛维修范畴目视检验" onvalidation="hasIllegalChar(e,200,true,true)" requiredErrorText="授权类型不能为空" name="jsonObject.sqlx"/>
                    </td>
                    
                	   <td class="form_label">
                        工作单位:
                    </td>
                    <td colspan="1">
                        <input style="width:100%;" class="nui-textbox" onvalidation="hasIllegalChar(e,200,false,true)" name="jsonObject.gzdw"/>
                    </td>
                 <tr>
                    <td class="form_label">
                        有效期至:
                    </td>
                    <td colspan="1">
                        <input required="true" requiredErrorText="有效期不能为空"  emptyText="请输入有效期"  style="width:100%;" class="nui-datepicker"  showClose="true"
									oncloseclick="this.setValue(null);" onvaluechanged="setSqzt" allowInput="false" name="jsonObject.yxrq"/>
                    </td>
                              <td class="form_label">
                        状态:
                    </td>
                    <td colspan="1">
                    <input style="width:100%;" id="zt"
			readOnly="true" class="nui-dictcombobox" dictTypeId="WSZT" name="jsonObject.zt"/>
                    </td>
                    
                </tr>
                 <tr>

                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="3">
                        <input style="width:100%;" onvalidation="hasIllegalChar(e,500,false,true)" class="nui-textArea" name="jsonObject.bz"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        证明文件:
                    </td>
                    <td colspan="3" style="display:none;" id="filehref">
                    
                    </td>
                    <td colspan="3" id="zmwjTd">
                   <input id="zmwjFile" property="editor" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
                            flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" 
                            uploadUrl="<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp" onvalidation="hasIllegalChar(e,256,false,true)"
                            onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" style="width:100%;"/>
                    </td>
                </tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button"  id="btnSave" onclick="onOk()">
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
 			var jdid = getCookie('jdid');
		    nui.get('jdid').setValue(jdid);
		      var fileName = "";
            var fildId = "";
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
			  
			
                var data = form.getData(false,true);
                
                   if (data != null) {
			 		if(data.jsonObject['zmwj']!=null&&data.jsonObject['zmwj']!=""){
			 			data.jsonObject['zmwjyw']="YOU";
			 		}else{
			 			data.jsonObject['zmwjyw']="WU";
			 		}
			 		  data.jsonObject['jd'] = jdid;
		           data.jsonObject['_state']=state;
			 		data.jsonObject['yxrq'] = nui.formatDate(data.jsonObject['yxrq'],'yyyy-MM-dd');
			 		data.jsonObject['pzrq'] = nui.formatDate(data.jsonObject['pzrq'],'yyyy-MM-dd');
		           delete data.jsonObject['orderindex'];
		        }
                var json = nui.encode(data);
                 nui.get("#btnSave").setEnabled(false);
                $.ajax({
	                url: "com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.addOrEdit.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                            CloseWindow("saveSuccess");
                        }else{
                        nui.get("#btnSave").setEnabled(true);
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    //CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 nui.get("#btnSave").setEnabled(true);
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
					        nui.get("zmwjFile").setValue(json.jsonObject.zmwj);
					        nui.get("zmwjFile").setText(json.jsonObject.zmwj);
                        }else   if (infos.pageType == "view") {//查看页面
                            var json = infos.record;
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
							form.setEnabled(false);
					        nui.get("zmwjFile").setValue(json.jsonObject.zmwj);
					        nui.get("zmwjFile").setText(json.jsonObject.zmwj);
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
                    
                     //授权日期变动时，设置状态
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
      //上传附件操作
        	function onfileselect(e){
				startUpload(e);
			}
			function startUpload(e) {
		        var fileupload =e.sender;
		        fileupload.startUpload();
		    }
		    //上传成功时，回写附件的name、id
			function onUploadSuccess(e,row){
				var code  = nui.decode(e.serverData).code;
				if(code == '1'){//上传成功
					fileName = nui.decode(e.serverData).list[0].name;
					//filePath = nui.decode(e.serverData).ret.filePath;
					fildId = nui.decode(e.serverData).list[0].uri;
					nui.get('zmwj').setValue(fileName);
					nui.get('fildid').setValue(fildId);	
				}else{//上传失败
				    var message = nui.decode(e.serverData).message;
				    nui.alert(message,'上传失败');
				}
				
			}
			
    
    //查看页面超链接
    function SetFilehref(){
     	document.getElementById("filehref").style.display="";
     	document.getElementById("zmwjTd").style.display="none";
     	nui.get('btnSave').hide();
	    var div = document.getElementById('filehref');
		var fileRealName = nui.get('zmwj').value;
		var fileId = nui.get('fildid').value;
		if(fileRealName!=""&&fileId!=""){
			div.innerHTML = '<a  style="100%;" href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + fileId + '" >' + fileRealName + '</a>';
		
		}
	}
	//点击附件下载
    function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
				 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
				 document.body.appendChild(elemIF);
				 elemIF.style.display = "none";
			}
		
                </script>
            </body>
        </html>
