<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-11-05 11:20:56
- Description:锅炉录入
    --%>
    <head>
        <title>
            锅炉录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
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
            <input class="nui-hidden" name="boiler.uuid"/>
            <input class="nui-hidden" id="equipmentdiagramfileid" name="boiler.equipmentdiagramfileid"/>
            <input class="nui-hidden" id="thicknessmeasurefileid" name="boiler.thicknessmeasurefileid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                        <input id="jd" class="nui-combobox"  style="width:100%" name="boiler.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                    <td class="form_label">
                        机组:
                    </td>
                    <td colspan="1">
                    <input class="nui-combobox" name="boiler.jz"  requiredErrorText="机组不能为空" readonly="readonly"
                        dataField="jsonObject" id="jz" textField="name" url="" valueField="id" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        设备类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"  requiredErrorText="设备类型不能为空"  name="boiler.equipmenttype" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"  requiredErrorText="设备名称不能为空" name="boiler.equipmentname" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        系统:
                    </td>
                    <td colspan="1">
                        <input id="system" readonly="readonly"  requiredErrorText="系统不能为空" 
                        class="nui-dictcombobox" dictTypeId="GLXT" name="boiler.system" style="width:100%"/>
                    </td>
                
                    <td class="form_label">
                        设备编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"  requiredErrorText="设备编号不能为空" name="boiler.equipmentnumber" style="width:100%"/>
                    </td>
            </tr>
                <tr>
                    <td class="form_label">
                        设备型号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"  requiredErrorText="设备型号不能为空"  name="boiler.equipmentmodel" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        锅炉登记卡:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly"  name="boiler.boilerregistrationcard" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        制造单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" name="boiler.manufacturingunit" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备示意图:
                    </td>
                    <td id="filehref">
                    
                    </td>
                    <td colspan="1" style="display: none">
                    <div style="display: flex;">
						<input class="nui-textbox" style="width:100%"  readonly="readonly" id="equipmentdiagramname" name="boiler.equipmentdiagram" />
						<form id="uploadform" enctype="multipart/form-data">
							<input id="equipmentdiagram" class="" style="width:100%;display:none" type="file" name="boiler.equipmentdiagram" accept="*" onchange="fileSub(this)"> 
						</form>
					</div>
                    </td>
                    
                    <td class="form_label">
                        主体材质:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.mainmaterial" readonly="readonly" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        主体厚度(mm):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.mainbodythickness" readonly="readonly" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        安装单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.installationunit" readonly="readonly" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        测厚布点图:
                    </td>
                      <td id="filehrefone">
                    </td>
                    
                    <td colspan="1" style="display: none">
	                   <div style="display: flex;">
							<input class="nui-textbox" style="width:100%" readonly="readonly" id="thicknessmeasurementpointlayoutname" name="boiler.thicknessmeasurementpointlayout" />
							<form id="uploadform1" enctype="multipart/form-data">
								<input id="thicknessmeasurementpointlayout" class="" style="width:100%;display:none" type="file" name="boiler.thicknessmeasurementpointlayout" accept="*" onchange="fileSub1(this)"> 
							</form>
						</div>
                    </td>
                    <td class="form_label">
                        产权单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.propertyunit" readonly="readonly" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        使用单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.useunit" readonly="readonly" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        组织机构代码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.organizationcode" readonly="readonly" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        邮政编码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.postalcode" readonly="readonly" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        额定出力:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.ratedoutput" readonly="readonly" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        额定压力（Mpa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.ratedpressure" readonly="readonly" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        额定温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.ratedtemperature" readonly="readonly" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        工作压力（Mpa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.workingpressure" readonly="readonly" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        出口温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.outlettemperature" readonly="readonly" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        回流温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.refluxtemperature" readonly="readonly" style="width:100%"/>
                    </td>
             	</tr>
                <tr>       
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" name="boiler.remarks" readonly="readonly" style="width:100%"/>
                    </td>
                    <input value="0" class="nui-hidden" name="boiler.isdel" />
                    
                </tr>
<!--            <tr class="changeReason_yy" style="display: none;"> -->
<!-- 				<td class="form_label">修改原因:</td> -->
<!-- 				<td colspan="1"><input class="nui-textarea" style="width:100%" -->
<!-- 				 requiredErrorText="请输入名称" -->
<!-- 					name="boiler.changeReasons" /></td> -->
<!-- 			</tr> -->
<!-- 			<tr class="changeReasons" style="display: none;"> -->
<!-- 			<td class="form_label">校核人员</td> -->
<!-- 					 <td colspan="3"> -->
<!--                         <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""   requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!-- 				</tr> -->
<!-- 				<tr  class="changeReasons"> -->
<!-- 				<td class="form_label" colspan="1" -->
<!-- 					style="width: 16% !important; text-align: center">选择抄送人员:</td> -->
<!-- 				<td colspan="3"><input property="editor" name="ccry" id="ccry" multi="true" -->
<!-- 					name="copyperson" class="nui-textboxlist" dataField="list" -->
<!-- 					style="width: 100%; height: 100%;" -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" -->
<!-- 					valueField="empcode" textField="empcodename" ScrollBar="Vertical" -->
<!-- 					searchField="keyword" /></td> -->
<!-- 			</tr> -->
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align: center;" colspan="4"><a
						class="nui-button"  onclick="onCancel()">
							关闭 </a>
							</td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var equipmentdiagramfileid="";
            var thicknessmeasurefileid="";
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            	
			var jdid = getCookie('jdid');
		    var jzid = getCookie('jzid');
		    nui.get("jd").setValue(jdid);
			nui.get('jz').setAjaxType("POST");
			nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+ jdid);
			nui.get("jz").setValue(jzid);
		
		
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
        
		function filehref(){
		 var div = document.getElementById('filehref');
			var fileRealName = nui.get('equipmentdiagramname').value;
			var fileId = nui.get('equipmentdiagramfileid').value;
			if(fileRealName!=""&&fileId!=""){
			div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}
		function filehrefone(){
		 var div = document.getElementById('filehrefone');
			var fileRealName = nui.get('thicknessmeasurementpointlayoutname').value;
			var fileId = nui.get('thicknessmeasurefileid').value;
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
		
			/* var loaddata2=
				[
					{"id":"","name":"请选择.."},
					{"id":"ABP","name":"ABP"},
					{"id":"ACO","name":"ACO"},
					{"id":"ADG","name":"ADG"},
					{"id":"AHP","name":"AHP"},
					{"id":"ARE","name":"ARE"},
					{"id":"ATE","name":"ATE"},
					{"id":"CET","name":"CET"},
					{"id":"CEX","name":"CEX"},
					{"id":"GCT","name":"GCT"},
					{"id":"GPV","name":"GPV"},
					{"id":"GSS","name":"GSS"},
					{"id":"SAR","name":"SAR"},
					{"id":"SAT","name":"SAT"},
					{"id":"SHY","name":"SHY"},
					{"id":"SGZ","name":"SGZ"},
					{"id":"SRI","name":"SRI"},
					{"id":"STR","name":"STR"},
					{"id":"VVP","name":"VVP"}
				];
			nui.get('system').load(loaddata2); */
            function saveData(finishFirstActivityId){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.conventionalislandand.boilerbiz.addWorkBoiler.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                form.validate();
              if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                var data = form.getData(false,true);
                
                data.boiler.jhry= nui.get("jhry").text;
				data.boiler.ccry = nui.get("ccry").value;
				
				data.boiler.equipmentdiagram = nui.get("equipmentdiagramname").value;
				if(equipmentdiagramfileid==""){
				}else{
				data.boiler.equipmentdiagramfileid = equipmentdiagramfileid;
				}
			
				data.boiler.thicknessmeasurementpointlayout = nui.get("thicknessmeasurementpointlayoutname").value;
				if(thicknessmeasurefileid==""){
				}else{
				data.boiler.thicknessmeasurefileid = thicknessmeasurefileid;
				}
				    
                var json = nui.encode(data);
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.conventionalislandand.boiler_modifbiz.workBoiler.biz.ext";
                    var allInfo = {};
		        allInfo.data = data.boiler;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = "基础技术信息_锅炉_修改数据";
		        allInfo.processInstDesc = "基础技术信息_锅炉_修改数据";
		        allInfo.processDefName = "com.cgn.itmp.conventionalislandand.boilerworkflow";
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
			   	 
				json = nui.encode(allInfo);
                }else if(pageType=="add"){
                 var allInfo = {};
              
		        allInfo.data = data.boiler;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = "基础技术信息_锅炉_新增数据";
		        allInfo.processInstDesc = "基础技术信息_锅炉_新增数据";
		        allInfo.processDefName = "com.cgn.itmp.conventionalislandand.addboilerworkflow";
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
                json = nui.encode(allInfo);
                }
                
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
                                    CloseWindow("saveFailed");
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
                        var json = infos.record;
						 
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                       	if(isadmin == "true"){
                       			$(".changeReason_yy").hide();
								$(".changeReasons").hide();
								$("#btnSave").hide();
							}else{
								$("#btnSave").show();
								$(".changeReasons").show();
								$(".changeReason_yy").show();
							}
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            filehref();
                            filehrefone();
                            labelModel();
                            
                       }else{
							if(isadmin == "true"){
								$(".changeReason_yy").hide();
								$(".changeReasons").hide();
								$("#btnSave").hide();
							}else{
								$("#btnSave").show();
								$(".changeReasons").show();
								$(".changeReason_yy").show();
							}
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
                    function onOk(finishFirstActivityId) {
                        saveData(finishFirstActivityId);
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
							nui.get("equipmentdiagramname").setValue(data.list[0].name);
							nui.get("equipmentdiagramfileid").setValue(data.list[0].uri);
							equipmentdiagramfileid = data.list[0].uri;
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
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform1").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
					success : function(data) {
						if (data.code == 1) {
							nui.get("thicknessmeasurementpointlayoutname").setValue(data.list[0].name);
							nui.get("thicknessmeasurefileid").setValue(data.list[0].uri);
							thicknessmeasurefileid = data.list[0].uri;
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
		//显示图片预览
    	function showimage(uri){
    		 ;
    		 var div = document.getElementById('imageBox');
    		 div.innerHTML ='<img id=imghead>';
             var img = document.getElementById('imghead');
             img.width  =125;
             img.height =50;
             img.src ="<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile="+uri; 
    	}
    	
    	 $("input[readOnly]").keydown(function(e) {
              e.preventDefault();
         });
                </script>
            </body>
        </html>
