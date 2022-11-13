<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-15 15:37:50
- Description:
    --%>

    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <input class="nui-hidden" name="weldingapply.uuid"/>
             <input id="jd" class="nui-hidden" name="weldingapply.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
              <input class="nui-hidden" name="weldingapply.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" id="jz" textField="name" url="" valueField="id"/>
              <input class="nui-hidden" name="weldingapply.isdel"/>
              <input class="nui-hidden" id="fpath" name="weldingapply.filepath"/>
            <input class="nui-hidden" id="fname" name="weldingapply.filename"/>
			<input class="nui-hidden" id="fid" name="weldingapply.fildid"/>       
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr>
                      <td class="form_label">
                        	大修轮次:
                      </td>
                      <td colspan="1">
                      请选择大修类型:<input id="countryCombo" class="nui-combobox" style="width:50px;" textField="name" valueField="id"
	    	   				onvaluechanged="onCountryChanged" required="required"/>
	    	   				
					    <div id="combobox1" name="weldingapply.rounds" property="editor" required="required" popupWidth="100%" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
						     url=""  multiSelect="false"  
						      dataField="jsonObject" >     
						</div>
                      </td>
                    <td class="form_label">
                        	WA编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readOnly="readOnly" name="weldingapply.applyno"/>
                    </td>
                    <td class="form_label">
                        	主票号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.ticketnumber"/>
                    </td>
               	</tr>
               	<tr>    
                    <td class="form_label">
                       	 描述:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.describe"/>
                    </td>
                    <td class="form_label">
                       	 功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.position"/>
                    </td>
               		<td class="form_label">
                        	流程图:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.flowchart"/>
                    </td>
              </tr>
              
              <tr>      
                <td class="form_label">
                    	等轴图（版本）或设备图（版本）:
                </td>
                <td colspan="1">
                	<table align="center">
                		<tr>
            				<td class="form_label">
               				 名称/版本
           					 </td>
							<td colspan="1">
									<input class="nui-textbox" name="weldingapply.equiaxedgraph"/>
							</td>
                		</tr>
                		
                		<tr>
            				<td class="form_label">
               				 附件
           					 </td>
							<td  colspan="1" style="text-align:center">
							<input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
                    flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" 
                    uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  
                    onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" style="width:100%;"/>
							<input class="nui-textbox" name="weldingapply.fildid" visible="false"/>
							</td>
                		</tr>
                	</table>
                </td>
                <td>
            		<table width="100%" height="100%">
            			<tr>
							<td class="form_label">
               				 焊缝号:
           					</td>
       					</tr>
       					<tr>
           					 <td class="form_label">
		                        	制造级别（核岛为RCCM级别、常规岛为电力级别）:
		                     </td>
	                    </tr>
	                </table>
               </td>
       			<td>
            		<table width="100%" height="100%">
            			<tr>
							<td>
               				 	<input class="nui-textbox" name="weldingapply.weldnumber"/>
           					</td>
       					</tr>
       					<tr>
           					 <td>
		                         <input class="nui-textbox" name="weldingapply.level"/>
		                     </td>
	                    </tr>
	                </table>
       			</td>
               			
                	<td>
                		<table width="100%" height="100%">
                			<tr>
								<td class="form_label">
                   				焊缝数量
               					</td>
           					</tr>
           					<tr>
               					 <td class="form_label">
			                       	 接头形式:
			                     </td>
		                     </tr>
		                </table>
           			</td>
               			
               			<td>
                    		<table width="100%" height="100%">
                    			<tr>
									<td colspan="1">
	                   				 	<input class="nui-textbox" vtype="float" errorText="必须为纯数字整数"  name="weldingapply.numberwelds"/>
	               					</td>
               					</tr>
               					<tr>
	               					 <td colspan="1">
	               					 <input id="formCombo" name="weldingapply.form" required="required" class="nui-combobox" style="width:100%;" textField="name" valueField="id"/>
				                     </td>
			                    </tr>
			               </table>
               			</td>
		       </tr>
                 
               <tr>
               		<td class="form_label">
                   	上游设备或部件名称:
               		</td>
					<td colspan="1">
						<input class="nui-textbox" name="weldingapply.upper"/>
					</td>
								
					<td class="form_label">
                   	 下游设备或部件名称:
               		</td>
					<td  colspan="1" style="text-align:center">
						<input class="nui-textbox" name="weldingapply.down"/>
					</td>
                    <td class="form_label">
                       	 工作温度（℃）/压力（MPa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.temperature"/>
                    </td>
             </tr>
             <tr>
             
             
                    <td class="form_label">
                        部件1材质
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component1material"/>
                    </td>
                    
                    <td class="form_label">
                        部件2材质
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component2material"/>
                    </td>
                    
                    <td class="form_label">
                        是否为CCM设备:
                    </td>
                    <td colspan="1">
	                    <div id="cbl1" name="weldingapply.whetherccm" class="nui-checkboxlist" repeatItems="0" repeatLayout="table"
								textField="text" valueField="text" required="required" multiSelect="false" onload="onLoad"
								url="/itmp/data/check.txt" dataField="checks">
						</div>
                    </td>
                    </tr>
                 <tr>
                    <td class="form_label">
                        部件1接口尺寸
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component1interfacesize"/>
                    </td>
                    <td class="form_label">
                        部件2接口尺寸
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component2interfacesize"/>
                    </td>
                    
                     <td class="form_label">
                        地理位置
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.geographicalposition"/>
                    </td>
                    </tr>
            <tr>
              <td class="form_label">
                        部件1接口厚度
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component1interfacethickness"/>
                    </td>
                    <td class="form_label">
                        部件2接口厚度
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" name="weldingapply.component2interfacethickness"/>
                    </td>      
                    
                    <td class="form_label">
                        是否属于重要敏感区域:
                    </td>
                    <td colspan="1">
	                    <div id="cbl1" name="weldingapply.geographical" class="nui-checkboxlist" repeatItems="0" repeatLayout="table"
								textField="text" valueField="text" required="required" multiSelect="false" onload="onLoad"
								url="/itmp/data/check.txt" dataField="checks" >
						</div>
                    </td>
                    </tr>
              
                
                <tr>
                    <td class="form_label">
                        联系人/联系方式:
                    </td>
                    <td colspan="5">
                        <input class="nui-textbox" name="weldingapply.contact"/>
                    </td>
               </tr>
                    <tr>
                    	<td class="form_label">
		                        	专业
		                </td>
	                    <td colspan="1">
	                        <input id="zy" required="required" class="nui-textbox"/>
	                    </td>
	                    
	                    <td class="form_label">
		                        	姓名
		                </td>
	                    <td colspan="1">
	                        <input id="xm" required="required" class="nui-textbox"/>
	                    </td>
	                    
	                    <td class="form_label">
		                        	电话
		                </td>
	                    <td colspan="1">
	                        <input id="mob" required="required" class="nui-textbox" onvalidation="onPhoneValidation"/>
	                    </td>
                    </tr>
                   <!--  <td class="form_label">
                        申请单状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.status"/>
                    </td> -->
                <!-- </tr> -->
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" iconCls="icon-save" onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;"></span>
                            <a class="nui-button" iconCls="icon-save" onclick="onCG()">
                                保存草稿
                            </a>
                          	<span style="display:inline-block;width:25px;"></span>
                            
                            <a class="nui-button" iconCls="icon-cancel" onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            
           </div>
        
        <div id="ddv">
	        <div> 
	        	   <a class="nui-button" id="CGbtn" iconCls="icon-save" onclick="onSeleCG()">
	                                使用草稿
	               </a>
	        </div>
        <div id="form1" class="nui-form display" align="center">
         <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.Weldingapply.WeldingApplySearch">
				<input class="nui-hidden" name="criteria/_expr[11]/isdel" value="3" /> 
				<input class="nui-hidden" name="criteria/_expr[11]/_op" value="=">
				<input class="nui-hidden" id="con_jdid" name="criteria/_expr[12]/jd" /> 
	            <input class="nui-hidden" name="criteria/_expr[12]/_op" value="="> 
	            <input class="nui-hidden" name="criteria/_expr[12]/_likeRule" value="end">
	            <input class="nui-hidden" id="con_jzid" name="criteria/_expr[13]/jz" /> 
	            <input class="nui-hidden" name="criteria/_expr[13]/_op" value="="> 
	            <input class="nui-hidden" name="criteria/_expr[13]/_likeRule" value="end">
        </div>
           <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="weldingapplys"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.weldingapplybiz.queryWeldingapplyall.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        
                        <div field="rounds" headerAlign="center" allowSort="true" >
                            大修轮次
                        </div>
                        <div field="applyno" headerAlign="center" allowSort="true" >
               WA编号
                        </div>
                        <div field="ticketnumber" headerAlign="center" allowSort="true" >
                            主票号
                        </div>
                        <div field="describe" headerAlign="center" allowSort="true" >
                            描述
                        </div>
                        <div field="position" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div header="等轴图（版本）或设备图（版本）" allowSort="true">
                      <div property="columns">
                        <div field="equiaxedgraph" width="150" headerAlign="center" allowSort="true">
                        名称/版本
                        </div>
                        

                        <div field="fildid" headerAlign="center" width="150" allowSort="true" renderer="setFile">
                            	附件
                        </div>
                       </div>
                 </div>
                        <div field="flowchart" headerAlign="center" allowSort="true" >
                            流程图
                        </div>
                        <div field="upper" headerAlign="center" allowSort="true" >
                            上游设备或部件名称
                        </div>
                        <div field="down" headerAlign="center" allowSort="true" >
                            下游设备或部件名称
                        </div>
                		<div field="component1material" headerAlign="center" allowSort="true" >
                           部件1材质
                        </div>
                        <div field="component2material" headerAlign="center" allowSort="true" >
                            部件2材质
                        </div>
                        <div field="component1interfacesize" headerAlign="center" allowSort="true" >
                            部件1接口尺寸
                        </div>
                        <div field="component2interfacesize" headerAlign="center" allowSort="true" >
                            部件2接口尺寸
                        </div>
                        <div field="component1interfacethickness" headerAlign="center" allowSort="true" >
                            部件1接口厚度
                        </div>
                        <div field="component2interfacethickness" headerAlign="center" allowSort="true" >
                            部件2接口厚度
                        </div>
                        <div field="level" headerAlign="center" allowSort="true" >
                            制造级别（核岛为RCCM级别、常规岛为电力级别）
                        </div>
                        
                        <div field="weldnumber" headerAlign="center" allowSort="true" >
                            焊缝号
                        </div>
                        <div field="numberwelds" vtype="float" headerAlign="center" allowSort="true" >
                            焊缝数量
                        </div>
                        <div field="form" headerAlign="center" allowSort="true" >
                            接头形式
                        </div>
                        <div field="temperature" headerAlign="center" allowSort="true" >
                            工作温度（℃）/压力（MPa）
                        </div>
                        <div field="whetherccm" headerAlign="center" allowSort="true" >
                            是否为CCM设备
                        </div>
                        <div field="geographicalposition" headerAlign="center" allowSort="true" >
                            	地理位置
                        </div>
                        <div field="geographical" headerAlign="center" allowSort="true" >
                            是否属于重要敏感区域:
                        </div>
                        <div field="contact" headerAlign="center" allowSort="trsue" >
                            联系人/联系方式
                        </div>
                        <div field="status" headerAlign="center" allowSort="true" >
                            WA状态
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                       <div field="jz" headerAlign="center" allowSort="true" visible="false">
                            jz
                        </div>
                        <div field="isdel" headerAlign="center" allowSort="true" visible="false">
                            isdel
                        </div>
                    </div>
				</div>
			  </div>
			
		</div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            var jzid = parent.nui.get("jzid").getValue();
        	var jdid = parent.nui.get("jdid").getValue();
        	
        	nui.get("jd").setValue(jdid);
        	/*nui.get('jz').setAjaxType("POST");
        	nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+jdid);*/
        	nui.get("jz").setValue(jzid); 
        	var formData = new nui.Form("#form1").getData(false,false);
        	  <!--countryCombo.load(countrys);-->
        	  var countrys = [
	            { id: "", name: "请选择.." },
	            { id: "O", name: "O" },
	            { id: "N", name: "N" }
	        ];
	          var forms=[
	          { id: "", name: "请选择.." },
	          { id: "对接", name: "对接" },
	          { id: "角接", name: "角接" },
	          { id: "T形接", name: "T形接"},
	          { id: "搭接", name: "搭接" }
	       ];
	            
	         var nco=[{id:"N",name:"N"}];
        	 nui.get("countryCombo").load(countrys);
        	 nui.get("formCombo").load(forms);
        	 
        	 function onCountryChanged(){
        	 
        	 	var combo=nui.get("countryCombo").getValue();
        	 	/* alert(combo) */
        	 	if(combo=="O"){
        	 	
        	 	setTimeout(function () {
	            	
	            	chec()
	            }, 100)
        	 }else{
        	 	nui.get('combobox1').setAjaxType("POST");
        	 	 
        	 nui.get('combobox1').load(nco);
        	 nui.get('combobox1').setValue("N");
        	
        	 }
        	 }
        	 function chec(){
					nui.get('combobox1').setAjaxType("POST");
	              nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
        	}
        	/* $(function(){
					nui.get('combobox1').setAjaxType("POST");
	              nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
		
		}); */
		
		function onPhoneValidation(e) {
            if (e.isValid) {
                var pattern = /\d*/;
                if (e.value.length<11||e.value.length>11||pattern.test(e.value)==false) {
                    e.errorText = "必须为11位手机号码";
                    e.isValid = false;
                }
            }
        }
        
        	      //附件初始化
            function setFile(e){
                
                var fileNewName = e.record.fileNewName;
                var fileRealName = e.record.fileRealName;
      			var filepath = e.record.filePath;
      			var fileId = e.record.fildid;
      			
     			if(fileRealName == null || fileRealName == 'null'){
     				return "";
     			}
                	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
                	return html;
                }
                      //点击附件下载
    function load(fileId) {
        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId=" + fileId;
    }
        
        
		//选择草稿
			function onSeleCG(){
				
				var row = grid.getSelected();
				 if (row) {
				 
				 		var data = {pageType:"add",record:{weldingapply:row}};
				 		
				 		setFormData(data);
				 }
			
			}
			
			//保存到草稿
			function onCG(){
			var zy=nui.get("zy").getValue();
				var xm=nui.get("xm").getValue();
				var mob=nui.get("mob").getValue();
			 var form = new nui.Form("#dataform1");
             form.setChanged(false);
			 var urlStr = "com.cgn.itmp.weldingmanagement.weldingapplybiz.insertWeldingIntoCg.biz.ext";
			  form.validate();
              if(form.isValid()==false) return;
               var data = form.getData(false,true);
               data.weldingapply.contact=zy+","+xm+","+mob;
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
                            nui.alert("保存草稿失败", "系统提示", function(action){
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
			
            function saveData(){
				var zy=nui.get("zy").getValue();
				var xm=nui.get("xm").getValue();
				var mob=nui.get("mob").getValue();

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                /* var urlStr = "com.cgn.itmp.weldingmanagement.weldingapplybiz.addWeldingapply.biz.ext"; */
               var urlStr= "com.cgn.itmp.weldingmanagement.weldingapplybiz.addWeldingapplyByObj.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.weldingmanagement.weldingapplybiz.updateWeldingapply.biz.ext";
                }
                form.validate();
                if(form.isValid()==false) return;

                var data = form.getData(false,true);
                
                if(data.weldingapply.isdel=="3"){
                	data.weldingapply.isdel="0";
                	 urlStr = "com.cgn.itmp.weldingmanagement.weldingapplybiz.updateWeldingapplyBycg.biz.ext";
                }
                
                data.weldingapply.contact=zy+","+xm+","+mob;
                
                var json = nui.encode(data);
//                 alert(pageType);
				if(pageType=="add"||pageType=="add1"){
					json=nui.encode({data:data.weldingapply,entity:"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply"});
					 
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
                        
						if(infos.record!=null){
						var str=infos.record.weldingapply.contact;
						var strs=new Array();
						strs=str.split(",");
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                            for (i=0;i<strs.length ;i++ ){
                            	
                            	nui.get("zy").setValue(strs[0]);
                            	nui.get("xm").setValue(strs[1]);
                            	nui.get("mob").setValue(strs[2]);
                            }
						}
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;
                             nui.get("fileName").setText(json.weldingapply.fileRealName);
						 if(json.weldingapply.rounds=="N"){
                            nui.get("countryCombo").setValue("N");
                             nui.get('combobox1').load(nco);
        	 				nui.get('combobox1').setValue("N");
                            	
                            }else if(json.weldingapply.rounds.substring(0,1) == "H"){

	                            chec();
	                            nui.get("countryCombo").setValue("O");
                            
                            }
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            document.getElementById("ddv").style.display='none';
                        }
                         //如果是点击申请添加带数据类型页面
                        if (infos.pageType == "add") {
                            var json = infos.record;
                             nui.get("fileName").setText(json.weldingapply.fileRealName);
                           if(json.weldingapply.rounds=="N"){
                            nui.get("countryCombo").setValue("N");
                             nui.get('combobox1').load(nco);
        	 				nui.get('combobox1').setValue("N");
                            	
                            }else if(json.weldingapply.rounds.substring(0,1) == "H"){

	                            chec();
	                            nui.get("countryCombo").setValue("O");
                            
                            }
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form        
                            form.setData(json);
                            
                            form.setChanged(false);
                           
                        }
                        if(infos.pageType == "add"||infos.pageType == "add1"){
                        
                        		grid.load(formData);
                        }
                        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
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
					
					 //上传附件操作
	            	function onfileselect(){
						startUpload();
					}
					function startUpload(e) {
					
				        var fileupload = nui.get("fileName");
				        fileupload.startUpload();
				    }
				    //上传成功时，回写附件的name、id
				  function onUploadSuccess(e){
					var appIconName = e.file.name;

					var appIconPath = nui.decode(e.serverData).ret.filePath;
					
					//var appIconData = nui.decode(e.serverData).ret.fileValue;
					nui.get("fpath").setValue(appIconPath);
					nui.get("fname").setValue(appIconName);
				}
					
                    //确定保存或更新
                    function onOk() {
                        saveData();
                    }

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                    }
                    //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                        nui.get("CGbtn").disable();
                                    }else{
                                        nui.get("CGbtn").enable();
                                    }
                                }
                </script>
            </body>
        </html>
