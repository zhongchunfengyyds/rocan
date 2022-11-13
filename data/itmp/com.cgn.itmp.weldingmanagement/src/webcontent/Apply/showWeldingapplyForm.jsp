<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-15 15:37:50
- Description:
    --%>
    <head>
        <title>
           焊接申请 - 新增 
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
          <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>

<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>


        <style type="text/css">
         	.mini-grid-table tr:first-child td{
				height: 0;
			}
			.mini-grid-cell-nowrap{
				text-align: center;
			}
			.mini-checkboxlist-td{
				border:none!important;
			}
			.mini-checkboxlist table tbody tr td{
				border:none!important;
			}
        </style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="weldingapply.uuid"/>
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
             <input id="jd" class="nui-hidden" name="weldingapply.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
              
              <input class="nui-hidden" name="weldingapply.isdel"/>
              
			
			   <input class="nui-hidden" id="equiaxedgraphfileid" name="weldingapply.equiaxedgraphfileid"/>  
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 
                 <tr>
                 <td class="form_label" width=200>
                        	  请选择机组状态:
                      </td>
                 	<td colspan="2" width=350">
                    <input id="countryCombo" name="weldingapply.jzstatus" readOnly="readOnly"  value="大修(O)"  class="nui-dictcombobox"  dictTypeId="JZZT" style="width:100%;"
	    	   				onvaluechanged="onCountryChanged" requiredErrorText="机组状态不能为空" required="required" />
	    	   		</td>
	    	   		<td class="form_label" style="width:180px;">
                        	 WA状态:
                      </td>
                 	<td colspan="1">
                    <input  name="weldingapply.status" class="nui-dictcombobox" readOnly="readOnly" value="DTJ" dictTypeId="Apply_status" style="width:100%;" required="required" requiredErrorText="WA状态不能为空"/>
	    	   		</td>
                 </tr>
                 <tr>
                      <td class="form_label">
                        	大修轮次:
                      </td>
                      <td colspan="2">
					    <input  id="combobox1"  class="nui-textbox"  name="weldingapply.rounds"  readOnly="readOnly"  required="required" emptyText="请输入大修轮次" requiredErrorText="大修轮次不能为空" style="width:100%;" />     
						
                      </td>
                    <td class="form_label">
                        	WA编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" emptyText="保存后自动编码" readonly="readonly" style="width:100%;" name="weldingapply.applyno"/>
                    </td>
                    <td class="form_label">
                        	主票号:
                    </td>
                    <td colspan="1">
                    	<input property="editor" id="ticketnumber" name="weldingapply.ticketnumber"
							class="nui-textbox" allowInput="true" readOnly="readOnly" 
							
							style="width: 100%;" required="true" requiredErrorText="主票号不能为空" emptyText="请选择主票号"/>
                    </td>
					
                    
<!--                         <input class="nui-textbox" name="weldingapply.ticketnumber" style="width:100%;" required="true" requiredErrorText="必填项不能为空" emptyText="请输入" /> -->
               	</tr>
               	<tr>    
                    <td class="form_label">
                       	 描述:
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" name="weldingapply.describe" readOnly="readOnly"  style="width:100%;" required="true" requiredErrorText="描述不能为空" emptyText="请输入描述" />
                    </td>
                    <td class="form_label">
                       	 功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.position"  readOnly="readOnly" style="width:100%;" required="true" requiredErrorText="功能位置不能为空" emptyText="请输入功能位置" />
                    </td>
               		<td class="form_label">
                        	流程图:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="weldingapply.flowchart"  readOnly="readOnly" style="width:100%;"/>
                    </td>
              </tr>
              
              <tr>      
                <td class="form_label" rowspan="2">
                    	等轴图（版本）或设备图（版本）:
                </td>
            				<td colspan="1" class="form_label" width=120>
               				 名称/版本
           					 </td>
							<td colspan="1">
									<input class="nui-textbox"  readOnly="readOnly" name="weldingapply.equiaxedgraph" style="width:100%;"/>
							</td>

							<td class="form_label" style="height:48px;">
               				 焊缝号:
           					</td>
 							<td>
                				 	<input class="nui-textbox" readOnly="readOnly"  name="weldingapply.weldnumber" style="width:100%;" required="true" requiredErrorText="焊缝号不能为空" emptyText="请输入焊缝号" />
            					</td> 
								<td class="form_label">
                   				焊缝数量
               					</td>
               					<td colspan="1">
	                   				 	<input class="nui-textbox" readOnly="readOnly"  emptyText="请输入纯数字" style="width:100%;" vtype="float" floatErrorText="请输入数字"  name="weldingapply.numberwelds"/>
	               					</td>
               					 
               			
		       </tr>
                <tr>
                <td class="form_label" width=120>
               				 附件
           		</td>
           		<td id="fileHref">
                     
                    </td>
				<td  colspan="1" style="text-align:center;display: none;">
						<div >
							<input class="nui-textbox" style="width:100%" readOnly="readOnly"   id="fildid" name="weldingapply.fildid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input class="" style="width:70px" type="file" name="weldingapply.fildid" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
				</td>
                <td class="form_label">
	                        	制造级别（核岛为RCCM级别、常规岛为电力级别）: 
	            </td>
                <td>
        			<input class="nui-textbox" name="weldingapply.level" readOnly="readOnly"  style="width:100%;" required="true" requiredErrorText="制造级别不能为空" emptyText="请输入制造级别" /> 
 		        </td> 
 		        <td class="form_label">
			                       	 接头形式:
			                     </td>
	               					 <td colspan="1">
	               					 <input  name="weldingapply.form" readOnly="readOnly"  required="true" requiredErrorText="接头形式不能为空" emptyText="请选择接头形式" class="nui-dictcombobox"   dictTypeId="JTXS"  style="width:100%;" />
				                     </td>
                </tr> 
               <tr>
               		<td class="form_label">
                   	上游设备或部件名称(部件1):
               		</td>
					<td colspan="2">
						<input class="nui-textbox" required="true"  readOnly="readOnly" emptyText="请输入上游设备或部件名称(部件1)"  requiredErrorText="上游设备或部件名称(部件1)不能为空" style="width:100%;" name="weldingapply.upper"/>
					</td>
								
					<td class="form_label">
                   	 下游设备或部件名称(部件2):
               		</td>
					<td  colspan="1" style="text-align:center">
						<input class="nui-textbox" style="width:100%;" readOnly="readOnly"  name="weldingapply.down" required="true" requiredErrorText="下游设备或部件名称(部件2)不能为空" emptyText="请输入下游设备或部件名称(部件2):" />
					</td>
                    <td class="form_label">
                       	 工作温度（℃）/压力（MPa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;" readOnly="readOnly"  name="weldingapply.temperature"/>
                    </td>
             </tr>
             <tr>
             
             
                    <td class="form_label">
                        部件1材质
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" style="width:100%;" readOnly="readOnly"  name="weldingapply.component1material" required="true" requiredErrorText="部件1材质不能为空" emptyText="请输入部件1材质" />
                    </td>
                    
                    <td class="form_label">
                        部件2材质
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" style="width:100%;" readOnly="readOnly"  name="weldingapply.component2material" required="true" requiredErrorText="部件2材质不能为空" emptyText="请输入部件2材质" />
                    </td>
                    
                    <td class="form_label">
                        是否为CCM设备:
                    </td>
                    <td colspan="1">
	                    <div id="cbl2" name="weldingapply.whetherccm" readOnly="readOnly"  class="nui-checkboxlist" repeatItems="0" repeatLayout="table"
								textField="text" valueField="text" multiSelect="false" onload="onLoad" style="border:1px solid red;background: #FFFFE6;"
								url="/itmp/data/check.txt" dataField="checks" style="width:100%;" 
								required="true" requiredErrorText="是否为CCM设备不能为空" emptyText="请选择是否为CCM设备" >
						</div>
                    </td>
                    </tr>
                 <tr>
                    <td class="form_label">
                        部件1接口尺寸
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" readOnly="readOnly"  name="weldingapply.component1interfacesize" style="width:100%;" required="true" requiredErrorText="部件1接口尺寸不能为空" emptyText="请输入部件1接口尺寸" />
                    </td>
                    <td class="form_label">
                        部件2接口尺寸
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox"  readOnly="readOnly" name="weldingapply.component2interfacesize" style="width:100%;" required="true" requiredErrorText="部件2接口尺寸不能为空" emptyText="请输入部件2接口尺寸" />
                    </td>
                    
                     <td class="form_label">
                        地理位置
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" readOnly="readOnly"  name="weldingapply.geographicalposition" style="width:100%;" required="true" requiredErrorText="地理位置不能为空" emptyText="请输入地理位置" />
                    </td>
                    </tr>
            <tr>
              <td class="form_label">
                        部件1接口厚度
                    </td>
                    <td colspan="2">
	                    <input class="nui-textbox" readOnly="readOnly"  name="weldingapply.component1interfacethickness" 
	                    style="width:100%;" required="true" requiredErrorText="部件1接口厚度不能为空" emptyText="请输入部件1接口厚度" />
                    </td>
                    <td class="form_label">
                        部件2接口厚度
                    </td>
                    <td colspan="1">
	                    <input class="nui-textbox" readOnly="readOnly"  name="weldingapply.component2interfacethickness" 
	                    style="width:100%;" required="true" requiredErrorText="部件2接口厚度不能为空" emptyText="请输入部件2接口厚度" />
                    </td>      
                    
                    <td class="form_label">
                        是否属于重要敏感区域:
                    </td>
                    <td colspan="1">
	                    <div id="cbl1" name="weldingapply.geographical" readOnly="readOnly"  class="nui-checkboxlist" repeatItems="0" repeatLayout="table"
	                     required="true" requiredErrorText="是否属于重要敏感区域不能为空" emptyText="请选择是否属于重要敏感区域" 
								textField="text" valueField="text" multiSelect="false" onload="onLoad" style="border:1px solid red;background: #FFFFE6;"
								url="/itmp/data/check.txt" dataField="checks" >
						</div>
                    </td>
                    </tr>
              
                
                <tr>
                    <td class="form_label">
                        联系人/联系方式:
                    </td>
                    <td colspan="6">
                        <input class="nui-textbox" enabled="false" readOnly="readOnly"  id="contact" disabled="disabled" readonly="readonly" name="weldingapply.contact" style="width:100%;"/>
                    </td>
               </tr>
                    <tr>
                    	<td class="form_label">
		                        	专业
		                </td>
	                    <td colspan="2">
	                        <input id="zy" required="true"  readOnly="readOnly" requiredErrorText="专业不能为空" emptyText="请输入专业"  onvaluechanged="onvalue3" οnkeyup="lxfs()"  class="nui-textbox" style="width:100%;"/>
	                    </td>
	                    
	                    <td class="form_label">
		                        	姓名
		                </td>
	                    <td colspan="1">
	                        <input id="xm" required="true" readOnly="readOnly"  requiredErrorText="姓名不能为空" emptyText="请输入姓名"  onvaluechanged="onvalue3"  class="nui-textbox" style="width:100%;"/>
	                    </td>
	                    
	                    <td class="form_label">
		                        	电话
		                </td>
	                    <td colspan="1">
	                        <input id="mob" required="true" readOnly="readOnly"  requiredErrorText="电话不能为空" emptyText="请输入电话"  onvaluechanged="onvalue3"  class="nui-textbox" style="width:100%;"/>
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
            var equiaxedgraphfileid="";
            var grid = nui.get("datagrid1");
        	var jdid = parent.nui.get("jdid").getValue();
        	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
        	if(isadmin=="true"){
        		$(".changeReasons").hide();
        		$("#save").show();
        	}
        	//回显附件
        	function SetHref(){
		   		 var div = document.getElementById('fileHref');
		   		 var fileName = nui.get("fildid").value;
		   		 var fileId = nui.get("equiaxedgraphfileid").value;
		   		 div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileName + '\')" >' + fileName + '</a>';
		   	}
		   	//附件下载
			function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
		         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
		         document.body.appendChild(elemIF);
		         elemIF.style.display = "none";
			}
        	nui.get("jd").setValue(jdid);
//         	var formData = new nui.Form("#form1").getData(false,false);
        	  

        
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

        
        

			
            

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var weldingapply={};
                        weldingapply.uuid=data;
                        var json=nui.encode({weldingapply:weldingapply});
                         $.ajax({
		                    url:"com.cgn.itmp.weldingmanagement.weldingapplybiz.getWeldingapply.biz.ext",
		                    type:'POST',
		                    data:json,
		                    cache:false,
		                    contentType:'text/json',
		                    success:function(text){
		                     var form = new nui.Form("#dataform1");//将普通form转为nui的form
		                    form.setData(text);
		                    var str=text.weldingapply.contact;
							var strs=new Array();
							strs=str.split(",");
                            for (var i=0;i<strs.length ;i++ ){
                            	nui.get("zy").setValue(strs[0]);
                            	nui.get("xm").setValue(strs[1]);
                            	nui.get("mob").setValue(strs[2]);
                            }
                            str=text.weldingapply.applyno;
							strs=new Array();
							strs=str.split("-");
                        	nui.get("combobox1").setValue(strs[1]);
                            SetHref();
            	   			
							
		                    
		                    }
	                    });
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
                    function onOk(finishFirstActivityId) {
                        saveData(finishFirstActivityId);
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
							nui.get("fildid").setValue(data.list[0].name);
							nui.get("equiaxedgraphfileid").setValue(data.list[0].uri);
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
