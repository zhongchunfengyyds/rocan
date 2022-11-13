<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String type=request.getParameter("type"); %>
<html>
<!-- 
  - Author(s): swh
  - Date: 2019-12-01 11:23:03
  - Description:
-->
<head>
<title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
</head>
<body>
<div id="form2" class="nui-form" style="width: 100%; height:35%;" align="center"  >
				<table class="table" style="width: 100%; height:100%;"table-layout:fixed;" class="nui-form-table" >
						<tr >
						
						
						<td style="width: 16% !important;"  colspan="1" class="form_label">选择任务代执行人</td>
					 <td colspan="1" style="width: 16% !important;">
                        <input property="editor" id="dzxr" multi="true" name="dzxr" class="nui-textboxlist" dataField="list"
		                      	style="width: 100%;height:100%;"
		                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
		                       textField="empcodename" ScrollBar="Vertical" searchField="keyword" />
                    </td>
						</tr>
					</table>
					请以上人员及时完成任务并填写任务[进展情况、当前状态、未按时完成原因及后续计划、附件]等
					</div>
<div class="" style="padding:30px 0 0 0 ;background:white;border-top:1px solid #cad9ea!important;">
        <table width="100%" >
            <tr>
                <td style="text-align:center; border:0px" colspan="4">
                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
                        确定
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="onCancel()">
                        关闭
                    </a>
                </td>
            </tr>
        </table>
    </div>


	<script type="text/javascript">
    	nui.parse();
    	var type='<%=type %>';
    	var datas=[{}];
    	      
    	function onCancel(){
            CloseWindow("cancel");
        }
        function CloseWindow(action){

        if(action=="close"){
            }else if(window.CloseOwnerWindow){
            	return window.CloseOwnerWindow(action);
            }else{
	            return window.close();
            }
        }
        function setData(data){
    		datas=data;
    	}
        function onSubmit(){
        	var dzxr=nui.get("dzxr").value;
        	var userText=nui.get("dzxr").text;
        	if (dzxr=="") {
                nui.alert("请选择执行人","系统提示",function(action){
                });
            }else{
//             com.cgn.itmp.dailyandoverhaul.groupplant.ComprehensiveIndexMgt.commonrenw.biz.ext
	        	var json=nui.encode({user:dzxr,data:datas,type:type,userText:userText});
	        	$.ajax({
	                url:"com.cgn.itmp.dailyandoverhaul.groupplant.ComprehensiveIndexMgt.commonrenw.biz.ext",
	                type:'POST',
	                data:json,
	                cache: false,
	                contentType:'text/json',
	                success:function(text){
	                	
	                if(text.result){
		                nui.alert("发送成功","系统提示",function(action){
			                CloseWindow("saveSuccess");
		                });
	                }else{
	                	nui.alert("发送失败","系统提示",function(action){
// 	                		CloseWindow("saveSuccess");
		                });
	                }
	            	}
	        	});
            }
        }
                    //关闭窗口
                    function CloseWindow(action) {
                        if (action == "close" && form.isChanged()) {
                            if (confirm("数据被修改了，是否先保存至草稿箱？")) {
                                saveData("");
                            }
                        }
                        if (window.CloseOwnerWindow)
                            return window.CloseOwnerWindow(action);
                        else window.close();
                    }
        
    </script>
</body>
</html>