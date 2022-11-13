<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-15 17:20:49
- Description:
    --%>
    <head>
        <title>
            焊工查看详情
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
	     <style type="text/css">
	     	#grid_0 table td,#grid_0 table th{height: 0px;}
			
			.mini-checkcolumn{width:30px;}
			#datagrid1 .mini-grid-table,#datagrid2 .mini-grid-table{width:100%!important;}
				*{
		 	margin:0;
		 	padding:0;
		 }
		 #table1 td{
		 	font-size:28px!important;
		 	padding:20px;
		 }
		 
		 input{
		 	height:100%;
		 }
		 .mini-required .mini-textbox-border, .mini-required .mini-buttonedit-border,.mini-buttonedit-border{
		 	height:100%;
		 }
		 .mini-buttonedit-input,.mini-textbox-input,.mini-textbox,.mini-textbox-border {
		 	height:40px!important;
		 	font-size:28px!important;
		 	border: none!important;
		 }
.mini-buttonedit-border {
    background: white;
    border: none!important;
    }
    .mini-textbox-border {
    border: none!important;
}
.mini-button-text {
    line-height: 26px;
    font-size: 24px;
    }
    .mini-grid-headerCell-inner{
    	 font-size: 20px;
    }
	     </style>
	     
	     <%
		 String welderid= request.getParameter("welderid"); //展示页面
		 %>
    </head>
    <body style="height:100%">
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1"   style="padding-top:5px;height:auto"  >
            <!-- hidden域 -->
            <div class="nui-hidden" name="welder.uuid">
            </div>
            <div class="nui-hidden" name="welder.isdel">
            </div>
            <input class="nui-hidden" name="welder.uuid"/>	
            <table id="table1" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table"  >
	            <input class="nui-hidden" name="welder.certificates" id="welder.certificates"/>
	            <input class="nui-hidden" name="tdxglsysyfacilityinfo.uuid"/>
	            <input class="nui-hidden" id="fpath" name="welder.filepath"/>
	            <input class="nui-hidden" id="filename" name="filename"/>
	            <input class="nui-hidden" id="fname" name="welder.filename"/>
				<input class="nui-hidden" id="fid" name="welder.fileid"/> 
	                <tr>
	                <td class="form_label">
	                      基地
                    </td>
                    <td colspan="1">                        
                      <input id="jd" class="nui-textbox" name="welder.jd"  style="width:100%" readonly="readonly" />
                    </td>
                    <tr>
                        <td class="form_label">
                            姓名:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.name" onvalidation="onCheck" style="width:100%"/>
                        </td>
                        <tr/>
                        <tr>
                        <td class="form_label">
                            所属公司:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.company" onvalidation="onCheck" style="width:100%"/>
                        </td>
                         <tr/>
                        <tr>
                        <td class="form_label">
                            员工号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.empnumber" onvalidation="onCheck" style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="form_label">
                            焊工代码:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.code" onvalidation="onCheck" style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            特种作业名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.special" onvalidation="onCheck" style="width:100%"/>
                        </td>
                         <tr/>
                        <tr>
                        <td class="form_label">
                            作业类别:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.job" onvalidation="onCheck" style="width:100%"/>
                        </td>
                         <tr/>
                        <tr>
                        <td class="form_label">
                            发证机关:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.authority" onvalidation="onCheck" style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="form_label">
                            操作项目:
                        </td>
                        <td colspan="1">
                           <input  name="welder.items" class="nui-textbox" readonly="readonly"  dictTypeId="CZXM"  emptyText="请选择操作项目" style="width:100%;height:100%" />
                        </td>
                         <tr/>
                        <tr>
                        <td class="form_label">
                            操作证编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.operatingnumber" id="welder_operatingnumber" onvalidation="onCheck" style="width:100%;"/>
                        </td>
                         <tr/>
                        <tr>
                        <td class="form_label">
                            证件有效期:
                        </td>
                        <td colspan="1">
                        <input property="editor" class="nui-textbox" readonly="readonly"
							style="width: 100%;" requiredErrorText="有效日期不能为空"
							onvaluechanged="doChangeState"   name="welder.validity" onvalidation="onCheck" />
                        
<!--                             <input class="nui-textbox" name="welder.validity"/> -->
                        </td>
                    </tr>
                    <tr>
                         <td class="form_label">
                            复审日期:
                        </td>
                        <td colspan="1">
                        <input property="editor" class="nui-textbox" readonly="readonly"
							 onvalidation="onCheck" style="width:100%" requiredErrorText="有效日期不能为空"
							onvaluechanged="doChangeState"    name="welder.review"/>
                            
                        </td>
                         <tr/>
                        <tr>
                        <td class="form_label">
                            初领日期:
                        </td>
                        <td colspan="1">
                        <input property="editor" class="nui-textbox" readonly="readonly"
							 onvalidation="onCheck" style="width:100%" requiredErrorText="有效日期不能为空"
							onvaluechanged="doChangeState"   name="welder.initial"/>
                           
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            状态:
                        </td>
                        <td colspan="1">
                        <input class="nui-textbox"   dictTypeId="WSZT" name="welder.status" id="status" onvalidation="onCheck" style="width:100%;height:100%"/>

                        </td>
                         <tr/>
                       
                        <tr>
                        <td class="form_label">
                            备注:
                            
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" name="welder.remarks" style="width:100%"/>
                        </td>
                    </tr>
                   
                    
                </table>
            </div>
        </fieldset>
        
        <!-- 从表的修改 -->
        <div style="width:100%;height:55%" >
           
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;height:10%;">
                        <table style="width:100%;height:100%;">
                            <tr>
                                <td style="width:80%;font-size:28px!important;padding:20px;">
                                    资质证信息
                                </td>
                            </tr>
                        </table>
                    </div>
                   
                    <div 
                            id="grid_0"
                            class="nui-datagrid"
                            style="width:100%;height:70%;"
                            showPager="false"
                            sortMode="client"
                            dataField="welder.certificates"
                            allowCellEdit="false"
                            allowCellSelect="true"
                           
                            multiSelect="true"
                            editNextOnEnterKey="true" onCellBeginEdit="onCellBeginEdit">
                            
                        <div property="columns" style="width: 100%;">
                            
									 
                            <div field="cernumber" allowSort="true" align="left" headerAlign="center"   width="60px">
                                证书编号
                                
                            </div>
                            <div field="projcode" allowSort="true" align="left" headerAlign="center" width="250">
                                项目代号
                                
                            </div>
                            <div field="validdate" allowSort="true" align="left" width="60px" headerAlign="center" width="" dateFormat="yyyy-MM-dd" renderer="setDate" >
                                有效时间 			
<!--                                 <input class="nui-textbox" enabled="true" name="validdate" property="editor" required="false" visible="true"/> -->
                            </div>
                            <div field="office" allowSort="true" align="left" headerAlign="center" width="60px">
                                发证机关
                                
                            </div>    
                            <div field="remarks" allowSort="true" align="left" headerAlign="center" width="60px">
                                备注
                                
                            </div>
                            <div field="fileRealName" headerAlign="center" allowSort="true"
						visible="false">fileRealName</div>
						<div field="operatingnumber" headerAlign="center" allowSort="true"
						visible="false">operatingnumber</div>
                        </div>
                       
						 
                        </div>
                        
                    </div>
                
            
        </div>
        <script type="text/javascript">
        
            nui.parse();
            var file;
           	var filename;
           	
            
            var nowStart = null;
            var nowEnd = null;
            var grid1=nui.get("grid_0");
            setFormData();
                //页面间传输json数据
            function setFormData(){
               	var form = new nui.Form("#dataform1");//将普通form转为nui的form
                form.setChanged(false);
                var json = nui.encode({id:'<%=welderid %>',type:"welder"});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.welderbiz.QRwelder.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    grid1.setData(text.data.certificates);
                    form.setData({welder:text.data});
                    nui.get("jd").setValue(text.data.jd);
                    form.setChanged(false);
                    }
                });
             }
                    


                    function onfileselect(e) {
                    	
                        startUpload(e);
                    }

                    function startUpload(e) {
                    	
                        var fileupload = e.sender;
                        
                        fileupload.startUpload();
                    }

                  //上传成功时，回写附件的name、id
                    function onUploadSuccess(e) {
                 		fileName = e.file.name;
                 		filePath = nui.decode(e.serverData).ret.filePath;
                 		var json = {};
                 		json.filename = fileName;
                 		json.filepath = filePath;
                 		json = nui.encode(json);
                 		$.ajax({
                            url: "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
                            type: 'POST',
                            data: json,
                            cache: false,
                            contentType: 'text/json',
                            success: function (text) {
                            	file.record.fildid = text.fileid;
                            }
                        });
                    }
                    
                    //上传成功时，回写附件的name、id
                    function onUploadSuccess1(e) {
                    	
                    	 var appIconName = e.file.name;

     					var appIconPath = nui.decode(e.serverData).ret.filePath;
     					//var appIconData = nui.decode(e.serverData).ret.fileValue;
     					nui.get("fpath").setValue(appIconPath);
     					nui.get("fname").setValue(appIconName);
                    }

                    function onuploadcomplete(e) {
                        
                    }
                    
                    function onCellBeginEdit(e) {
                    	
                        var field = e.field, value = e.value;
                        
                        if (field == "fj") {
                           file = e;
                        }
                    }
                   function onCheck(e){
                   
	       if (e.isValid) {
	         if(e.value==""){
	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }
	       }
	     }
	     
	     function setDate(e){
	     if(e.value!=null){
	     	return nui.formatDate(new Date(e.value),"yyyy-MM-dd");
	     }
	     
	     
	     	
	     }
					
					
                    </script>
                </body>
            </html>
