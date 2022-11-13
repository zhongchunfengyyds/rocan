<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-12-09 19:17:26
- Description:
    --%>
    <head>
        <title>
            常规岛_缺陷显示跟踪与处理录入
        </title>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"> </script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
       <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
          <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <div class="nui-hidden" name="tinspectdefectnotice.uuid">
            </div>
            <div class="nui-hidden" name="tinspectdefectnotice.isdel" value="0">
            </div>
            <input class="nui-hidden" name="tinspectdefectnotice.uuid"/>
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
                          <input class="nui-combobox" name="tinspectdefectnotice.jz"   requiredErrorText="机组不能为空" 
                        dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        机组状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" readonly="readonly" dictTypeId="JZZT" name="tinspectdefectnotice.jzstate" style="width:100%"   requiredErrorText="机组状态不能为空"/>
                    </td>
                    <td class="form_label">
                        大修轮次:
                    </td>
                    <td colspan="1" id="dxlc">
                        <input class="nui-textbox" id="dxlc" readonly="readonly" name="tinspectdefectnotice.overhaulrounds" requiredErrorText="大修轮次不能为空"  style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" readonly="readonly" dictTypeId="JYLB" name="tinspectdefectnotice.equipmenttype"    requiredErrorText="设备类型不能为空"  style="width:100%"/>
                    </td>
                    <td class="form_label">
                        工作票号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"   requiredErrorText="工作票号不能为空"  name="tinspectdefectnotice.workticketnumber" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        工作内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"   requiredErrorText="工作内容不能为空"  name="tinspectdefectnotice.workcontent" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        工作负责人:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" name="tinspectdefectnotice.workchargeperson" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" readonly="readonly"   requiredErrorText="检查方法不能为空"  dictTypeId="CGJCFF" name="tinspectdefectnotice.inspectionmethod" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        通知单号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"   requiredErrorText="通知单号不能为空" name="tinspectdefectnotice.noticenumber" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        标题:
                    </td>
                    <td colspan="3">
                        <input class="nui-textbox" readonly="readonly"  requiredErrorText="标题不能为空" name="tinspectdefectnotice.title" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        描述:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readonly="readonly" requiredErrorText="描述不能为空" name="tinspectdefectnotice.describe" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" requiredErrorText="功能位置不能为空" name="tinspectdefectnotice.functionallocation" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        创建日期:
                    </td>
                    <td colspan="1">
                         <input class="nui-datepicker" name="tinspectdefectnotice.createdate"  
							readonly="readonly" allowInput="false" style="width: 100%;" format="yyyy-MM-dd"   requiredErrorText="创建日期不能为空" />
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        当前状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" readonly="readonly"   requiredErrorText="当前状态不能为空" dictTypeId="QXDQZT" name="tinspectdefectnotice.currentstatus" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        责任部门:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" name="tinspectdefectnotice.responsibledepartment" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        处理过程:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readonly="readonly" name="tinspectdefectnotice.process" style="width:100%"/>
                    </td>
                    </tr>
                <tr>
                    <td class="form_label">
                        处理结果:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readonly="readonly" name="tinspectdefectnotice.processresult" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        在役检查策略调整:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readonly="readonly" name="tinspectdefectnotice.strategyadjustment" style="width:100%"/>
                    </td>
                  </tr>
                <tr>  
                    <td class="form_label">
                        无损检测方法优化:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readonly="readonly" name="tinspectdefectnotice.nondestructive" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        责任人:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" name="tinspectdefectnotice.responsibleperson" style="width:100%"/>
                    </td>
                    <td class="form_label">
                       附件:
                    </td>
                     <td id="fileHref" colspan="1">
                     
                    </td>
                    <td colspan="1" style="display: none">
							<div style="display: flex;">	
								<input id="fj" class="nui-textbox"  readonly="readonly" style="width: 100%" name="tinspectdefectnotice.fj" />
								<input id="fildid" style="display: none" class="nui-textbox" name="tinspectdefectnotice.fildid" />
								<form id="uploadform" enctype="multipart/form-data">
									<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
								</form>
							</div>
                    </td>
                </tr>
               
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button btn btn-default btn-xs" style="display: none" id="savebt1" onclick="onOk()">
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
			var fildid = "";
		var jdid = getCookie('jdid');
	    var jzid = getCookie('jzid');
	    nui.get("jd").setValue(jdid);
		nui.get('jz').setAjaxType("POST");
		nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+ jdid);
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
		//显示图片预览
	    	function SetHref(){
        		 var div = document.getElementById('fileHref');
        		 var fileRealName = nui.get("fj").getValue();
        		 var fileId = nui.get("fildid").getValue();
        		 div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
        		 
	    	}
    		function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
				 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
				 document.body.appendChild(elemIF);
				 elemIF.style.display = "none";
			}
		
		function onValuechanged(e){
			let value=e.value;
			if(value=="日常(N)"){
				nui.get("dxlc").setValue("");
				nui.get("dxlc").disable();
			}else{
				nui.get("dxlc").enable();
			}
		}					
			
            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.tinspectdefectnoticebiz.addTInspectDefectNotice.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.tinspectdefectnoticebiz.updateTInspectDefectNotice.biz.ext";
                }
                form.validate();
               if (form.isValid() == false) {
	     		nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
	     		return;
			    }	
				nui.get("#savebt1").setEnabled(false);//置灰色
			    
                var data = form.getData(false,true);
                data.jd=jdid;
                data.jz=jzid;
                data.tinspectdefectnotice.fj = nui.get("fj").value;
				if(fildid==""){
				}else{
					data.tinspectdefectnotice.fildid = fildid;
				}
                var json = nui.encode(data);

                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    nui.get("#savebt1").setEnabled(true);//置灰色
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
                        if (infos.pageType == "edit") {
                            var json = infos.record;
							
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            SetHref();
//                             if(json.tinspectdefectnotice.jzstate=="日常(N)"){
// 								nui.get("dxlc").setValue("");
// 								nui.get("dxlc").setEmptyText("");
// 								nui.get("dxlc").disable();
// 							}
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
                    function fileSub(file){
					var  fv=file.value;
					if(fv){
						$("#uploadform").ajaxSubmit({
							type: "post",
							dataType : "json",
							url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
							success : function(data) {
								if (data.code == 1) {
									nui.get("fj").setValue(data.list[0].name);
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
				
				
				$("input[readonly]").keydown(function(e) {
              e.preventDefault();
         });
         $("textarea[readonly]").keydown(function(e) {
              e.preventDefault();
         });
                </script>
            </body>
        </html>
