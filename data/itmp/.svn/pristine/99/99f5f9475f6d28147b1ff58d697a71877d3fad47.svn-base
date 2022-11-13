<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-05 16:09:08
- Description:
    --%>
    <head>
        <title>
            录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <div class="nui-hidden" name="weldingassessment.uuid">
            </div>
            <input class="nui-hidden" name="weldingassessment.uuid"/>
            <input class="nui-hidden" name="weldingassessment.fj" id="fj"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1" width="270">                        
                      <input id="jd" class="nui-combobox" style="width:100%; name="weldingassessment.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                </tr>
                
                <tr>
                <td class="form_label">
                        工艺评定报告号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"  readonly="readonly" requiredErrorText="此项不能为空"  name="weldingassessment.assessmentid"/>
                    </td>
                 <td class="form_label">
                        报告名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"   readonly="readonly" requiredErrorText="此项不能为空" name="weldingassessment.assessmentname"/>
                        <input class="nui-hidden" name="weldingassessment.isdel" value="0"/>
                    </td>
                
                    
                </tr>
                <tr>
                <td class="form_label">
                        版本:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"  readonly="readonly" requiredErrorText="此项不能为空" name="weldingassessment.edition"/>
                    </td>
                <td class="form_label">
                        评定单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;" readonly="readonly"  requiredErrorText="此项不能为空" name="weldingassessment.assessmentunit"/>
                    </td>
                    </tr>
                <tr>
                  <td class="form_label">
                        接头形式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"  readonly="readonly" requiredErrorText="此项不能为空" name="weldingassessment.joint"/>
                    </td>
                    <td class="form_label">
                        焊接方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"  readonly="readonly" requiredErrorText="此项不能为空" name="weldingassessment.method"/>
                    </td>
                </tr>
               
                
                <tr>
               <td class="form_label">
                        评定位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"  readonly="readonly" requiredErrorText="此项不能为空" name="weldingassessment.position"/>
                    </td>
                   <td class="form_label">
                       规格:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"  readonly="readonly" requiredErrorText="此项不能为空" name="weldingassessment.specifications"/>
                    </td>
                   
                
                   
                   </tr>
                <tr> 
                 <td class="form_label">
                     制造等级:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"  readonly="readonly" requiredErrorText="此项不能为空" name="weldingassessment.level"/>
                    </td> 
                    <td class="form_label">
                       附件:
                    </td>
                    <td  colspan="1" id="fileHref">
                    
                    </td>
                    
                    <td  colspan="1" style="display: none">
							<div style="display: flex;">
								<input class="nui-textbox" style="width:70%"  id="fileid" readonly="readonly" name="weldingassessment.fileid" readonly="readonly"/>
								<form id="uploadform" enctype="multipart/form-data">
									<input id="fileid" class="" style="width:100%" type="file" name="weldingassessment.fileid" accept="*" onchange="fileSub(this)"> 
								</form>
							</div>
                       
                    </td>
                    
                    </tr>
                    <tr>
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;"  readonly="readonly" requiredErrorText="此项不能为空" name="weldingassessment.remark"/>
                    </td></tr>
                
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                          
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button"   onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var jzid = parent.nui.get("jzid").getValue();
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
        	//回显附件
			function fileHref(){
			 	var div = document.getElementById('fileHref');
				var fileRealName = nui.get('fileid').value;
				var fileId = nui.get('fj').value;
				if(fileRealName!=""&&fileId!=""){
				div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileRealName + '\',\'' + fileId + '\')" >' + fileId + '</a>';
				}
			
			}
			//附件下载
			function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
		         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
		         document.body.appendChild(elemIF);
		         elemIF.style.display = "none";
			}
            function saveData(){
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.weldingmanagement.weldingassessmentbiz.addWeldingAssessment.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.weldingmanagement.weldingassessmentbiz.updateWeldingAssessment.biz.ext";
                }
                form.validate();
                if(form.isValid()==false) return;
				
                var data = form.getData(false,true);
                data.weldingassessment.jd=jdid;
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
                            fileHref();
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
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
					success : function(data) {
					 
						if (data.code == 1) {
							nui.get("fileid").setValue(data.list[0].name);
							nui.get("fj").setValue(data.list[0].uri);
							equiaxedgraphfileid = data.list[0].uri;
							showimage(data.list[0].uri);
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} else {
				nui.alert("请上传图片");
				return false;
			}
		} 
                </script>
            </body>
        </html>
