<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<%--
- Author(s): Administrator
- Date: 2019-10-24 20:08:42
- Description:
    --%>
    <head>
        <title>
            新增缺陷通知单
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"> </script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
       <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
          <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    </head>
    <body>
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tinspectdefectnotice.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="tinspectdefectnotice.uuid"/>
            <input class="nui-hidden" name="tinspectdefectnotice.isdel" value="0"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                             <input id="jd" class="nui-combobox" name="tinspectdefectnotice.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                          textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        机组:
                    </td>
                    <td colspan="1">
                          <input class="nui-combobox" name="tinspectdefectnotice.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id" style="width:100%"/>
                    </td>
                </tr>
                <tr>
<!--                    <td class="form_label"> -->
<!--                         序号: -->
<!--                     </td> -->
<!--                     <td colspan="1"> -->
<!--                         <input class="nui-textbox" name="tinspectdefectnotice.xh" style="width: 100%;" required="true" requiredErrorText="不能为空"  /> -->
<!--                     </td> -->
                    
                
                    <td class="form_label">
                        检验类别:
                    </td>
                    <td colspan="1">
                             <input class="nui-dictcombobox" id="jylb" name='tinspectdefectnotice.jylb' dictTypeId="JYLB" style="width: 100%;" 
							 required="true"   />
                    </td>
                    
                    </tr>
                <tr>
                    <td class="form_label">
                        设备编码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tinspectdefectnotice.sbbm" style="width: 100%;" required="true" requiredErrorText="不能为空"  />
                    </td>
                    <td class="form_label">
                        工作内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea"name="tinspectdefectnotice.gznr" style="width: 100%;" required="true" requiredErrorText="不能为空" />
                    </td>
                    
                         </tr>
                <tr>
                    <td class="form_label">
                        工作负责人:
                    </td>
                    <td colspan="1"><!-- mini-buttonedit 选择输入    readonly="readonly" onclick="onButtonSelectPerson"人员选择事件-->
                        <input class="nui-textarea"  name="tinspectdefectnotice.gzfzr" style="width: 100%;"required="true" requiredErrorText="不能为空" />
                    </td>
                    <td class="form_label">
                        工作票号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tinspectdefectnotice.gzph" style="width: 100%;" required="true" requiredErrorText="不能为空" />
                    </td>
                         </tr>
                <tr>
                    <td class="form_label">
                        检验日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tinspectdefectnotice.jyrq" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" style="width: 100%;" showTodayButton="true" showClearButton="true"  format="yyyy-MM-dd HH:mm:ss"  showTime="true"  required="true" requiredErrorText="不能为空" />
                    </td>
                    <td class="form_label">
                        通知时间:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tinspectdefectnotice.tzsj" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" style="width: 100%;"   format="yyyy-MM-dd HH:mm:ss" showClearButton="true"  showTime="true"  required="true" requiredErrorText="不能为空" />
                    </td>
                    
                         </tr>
                <tr>
                    <td class="form_label">
                        处理情况:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea"name="tinspectdefectnotice.clqk" style="width: 100%;" required="true" requiredErrorText="不能为空" />
                    </td>
                    <td class="form_label">
                        处理建议:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tinspectdefectnotice.cljy" style="width: 100%;"/>
                    </td>
                         </tr>
                <tr>
                    <td class="form_label">
                        处理负责部门:
                    </td>
                    <td colspan="1">
                        <input class=nui-textarea name="tinspectdefectnotice.clfzbm" style="width: 100%;"/>
                    </td>
                    <td class="form_label">
                        缺陷描述:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tinspectdefectnotice.qxms" style="width: 100%;"/>
                    </td>
                         </tr>
                <tr>
                    <td class="form_label">
                        处理结果:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tinspectdefectnotice.cljg" style="width: 100%;"/>
                    </td>
                    <td class="form_label">
                        当前进展:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tinspectdefectnotice.dqjz" style="width: 100%;"/>
                    </td>
                         </tr>
                <tr>
                    <td class="form_label">
                        附件:
                    </td>
                    <td id="fileHref" style="display:none;">
                     
                    </td>
                    <td colspan="1" id="fileNoHref">
                    <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
							<div style="display: flex;">	
								<input id="fujian" class="nui-textbox"  readonly="readonly" style="width: 100%" name="tinspectdefectnotice.fujian" />
								<input id="fildid" style="display: none" class="nui-textbox" name="tinterm.fildid" />
								<form id="uploadform" enctype="multipart/form-data">
									<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
								</form>
							</div>
                    </td>
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tinspectdefectnotice.bz" style="width: 100%;"/>
                    </td>
                         </tr>
                <tr>
            </table>
            <div class="nui-toolbar" id="nui-toolbar"  style="padding:0px;color : #fff" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button btn btn-default btn-xs" id="savebt1" onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" onclick="onCancel()">
                                取消
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="nui-toolbar" id="nui-toolbar1"  style="padding:0px;color : #fff;display: none" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button btn btn-default btn-xs" id="savebt2" style="display: none" onclick="onOk()">
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
            var fileName ="";
            var filePath ="";
			var jdid = getCookie('jdid');
		    var jzid = getCookie('jzid');
	     	ShowJdAndJz(jdid,jzid);
	     	
	     			//显示图片预览
	    	function SetHref(){
        		 var div = document.getElementById('fileHref');
        		 var fileName = nui.get("fujian").getValue();
        		 var fileId = nui.get("fildid").getValue();
        		 div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileName + '\')" >' + fileName + '</a>';
        		 
	    	}
    		function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
				 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
				 document.body.appendChild(elemIF);
				 elemIF.style.display = "none";
			}
    	
            function saveData(){
                var form = new nui.Form("#dataform1");
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                var urlStr= "" ;
                form.validate();
                var jsonObject = form.getData(false,true);
	     		if (form.isValid() == false) {
	     		nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
	     		return;
			    }	
			    nui.get("#savebt1").setEnabled(false);//置灰色
			    nui.get("#savebt2").setEnabled(false);//置灰色
                    var json="";
                //保存
                if(pageType=="add"){
                    urlStr = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.tinspectdefectnoticebiz.addTInspectDefectNotice.biz.ext";
              	if(jsonObject != null ){
						jsonObject.tinspectdefectnotice.filename =fileName;
						jsonObject.tinspectdefectnotice.filepath =filePath;	
						jsonObject.tinspectdefectnotice._state ="added";
						jsonObject.tinspectdefectnotice.jdid =getCookie('jdid');
				}
                json = nui.encode(jsonObject); 		
                //编辑
               }else if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.tinspectdefectnoticebiz.updateTInspectDefectNotice.biz.ext";
                 json = nui.encode(jsonObject);
                }
                 $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                     nui.get("#savebt1").setEnabled(true);//置灰色
			    	nui.get("#savebt2").setEnabled(true);//置灰色
                    
                    var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
						CloseWindow("saveSuccess");
					} else {
					nui.get("#savebt1").setEnabled(true);//置灰色
			    	nui.get("#savebt2").setEnabled(true);//置灰色
						nui.alert("保存失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
							}
						});
					}
                            },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#savebt1").setEnabled(true);//置灰色
			    	nui.get("#savebt2").setEnabled(true);//置灰色
							});
						 }
                        }); 
                 }

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
						nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);

                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;

                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                        }
                        if(infos.pageType == "add"){
                        
                        nui.getbyName("pageType").setValue(infos.pageType);
                        
                        }
                        
                            if (infos.pageType == "show") {
                            var data = infos.record;
                            
							showQuality(data);	
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
    			//数据详情页面数据显示及隐藏按钮
    			function showQuality(data){
    		     	var json = nui.encode({tinspectdefectnotice : data});
				    $.ajax({
				    url:'com.cgn.itmp.inspectcomponentmanage.conventionalislandand.tinspectdefectnoticebiz.getTInspectDefectNotice.biz.ext',
				    type:'POST',
				    data:json,
				    cache:'true',
				    contentType :'text/json',
				    success : function (text){
				          var form = new nui.Form("#dataform1");
	                      form.setData(text);
	                     	 form.setChanged(false); 
	                       form.setEnabled(false);
	                       ShowJdAndJz(jdid,jzid);
	                       SetHref();
	                         $('#fileHref').show();
        					$('#fileNoHref').hide();
	                      nui.get("nui-toolbar").el.style.display = 'none'; 
	                      nui.get("nui-toolbar1").el.style.display = 'block';
	                      $("input[name=file]").css("display","none");
				    }
				    });	
    			}
    			function ShowJdAndJz(jdid,jzid){
				    nui.get("jd").setValue(jdid);
					nui.get('jz').setAjaxType("POST");
					nui.get('jz').load(
							"com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="
									+ jdid);
					nui.get("jz").setValue(jzid);
    			}
    			function fileSub(file){
					var  fv=file.value;
					if(fv){
// 						if (!/\.(xlsx||png||jpg||gif||doc||docx||zip)$/.test(fv)) {  
// 							 	nui.alert("文件类型必须是gif,png,jpg,doc,docx,xlsx,zip中的一种");  
// 							 return false;  
// 						 }
$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
						$("#uploadform").ajaxSubmit({
							type: "post",
							dataType : "json",
							url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
							processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
							success : function(data) {
								if (data.code == 1) {
									nui.get("fujian").setValue(data.list[0].name);
									nui.get("fildid").setValue(data.list[0].uri);
								} else {
									nui.alert("上传失败:" + data.message);
								}
							}
						});
					} else {
						return false;
					}
				} 
                </script>
            </body>
        </html>
