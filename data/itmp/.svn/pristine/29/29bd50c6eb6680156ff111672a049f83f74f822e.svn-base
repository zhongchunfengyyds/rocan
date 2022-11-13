<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-14 16:33:51
- Description:
    --%>
    <head>
        <title>
            设备仪表查看
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
         <div id="T_DXGL_SYSY_FACILITYINFO" style="padding-top:5px;">
        
         <input class="nui-hidden" id="fpath" name="tdxglsysyfacilityinfo.filepath"/>
            <input class="nui-hidden" id="fname" name="tdxglsysyfacilityinfo.filename"/>
			<input class="nui-hidden" id="fid" name="tdxglsysyfacilityinfo.fileid"/> 
			<input class="nui-hidden" id="fileid" name="tdxglsysyfacilityinfo.fileid"/> 
            <!-- hidden域 -->
            <input class="nui-hidden" name="tdxglsysyfacilityinfo.uuid"/>
            <table style="width:100%;height:100%;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        器具名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.qjmc"/>
                    </td>
                    <td class="form_label">
                        出厂编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.ccbh"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        生产厂家:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.sccj"/>
                    </td>
                    <td class="form_label">
                        规格型号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.ggxh"/>
                    </td>
                </tr>
                <tr>         
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                      <input class="nui-combobox" name="tdxglsysyfacilityinfo.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id"/>
                        <!-- <input class="nui-textbox" name="tdxglsysyfacilityinfo.jd"/> -->
                    </td>
               
                    <td class="form_label">
                        测量范围:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.clfw"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        精度等级:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.jddj"/>
                    </td>
                
                    <td class="form_label">
                        检定日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tdxglsysyfacilityinfo.jdrq"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检定周期:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.jdzq"/>
                    </td>
               
                    <td class="form_label">
                        检定有效期至:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tdxglsysyfacilityinfo.jdyxqz"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检定单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.jddw"/>
                    </td>
              
                    <td class="form_label">
                        报备情况:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" name="tdxglsysyfacilityinfo.bbqk"
                        dictTypeId="BBQK"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        使用状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" name="tdxglsysyfacilityinfo.syzt"
                        dictTypeId="SYZT"/>
                    </td>
                
                    <td class="form_label">
                        负责人:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.fzr"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="3" style="display:none;" id="filehref">
                    
                    </td>
                    <td colspan="3" id="fjtd">
	                     <input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
	                    flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" 
	                    uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  
	                    onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" style="width:100%;"/>
                       <input class="nui-htmlfile" id="fj" name="tdxglsysyfacilityinfo.fj" visible="false" /> 
                    </td>
              
                   
               </tr>
               <tr>
               	 <td class="form_label">
                        备注:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="tdxglsysyfacilityinfo.bz"/>
                    </td>
               </tr>
                <tr>
                     <td class="form_label">
                        报废原因:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="tdxglsysyfacilityinfo.bfyy"/>
                    </td>
                </tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                           

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
   			var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setEnabled(false);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
            
            function saveData(){

                var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.addTDxglSysyFacilityinfo.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.updateTDxglSysyFacilityinfo.biz.ext";
                }
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

                var data = form.getData(false,true);
                var json = nui.encode(data);

                $.ajax({
                    url:urlStr,
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
                        //如果是点击编辑类型页面
                        if (infos.pageType == "noView") {
                            var json = infos.record;
							nui.get("fileName").setText(json.tdxglsysyfacilityinfo.fileRealName);//加载附件名称
                            var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
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
                    //查看页面超链接
			    function SetFilehref(){
			     	document.getElementById("filehref").style.display="";
			     	document.getElementById("fjtd").style.display="none";
				    var div = document.getElementById('filehref');
					var fileRealName = nui.get('fj').value;
					var fileId = nui.get('fileid').value;
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
