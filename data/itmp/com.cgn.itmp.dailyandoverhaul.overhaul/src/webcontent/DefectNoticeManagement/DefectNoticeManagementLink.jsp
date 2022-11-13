<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@page import="com.eos.data.datacontext.IUserObject"%>
 <%@page import="com.eos.foundation.common.utils.StringUtil"%>
 <%@page import="com.eos.foundation.eoscommon.ConfigurationUtil"%>
<%@page import="com.eos.foundation.eoscommon.BusinessDictUtil"%>
 <%	
	 Object sessionUserObject = session.getAttribute("userObject");
	 IUserObject userObject = null;
	boolean isLogin = false;
	if(sessionUserObject!=null){
		userObject = (com.eos.data.datacontext.UserObject)sessionUserObject;
		String userid = userObject.getUserId();
		if(userid!=null && userid.trim().length()>0){
			isLogin = true;
		}
	}
 
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-07 13:46:43
- Description:
    --%>
    <head>
       
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tddxglqxgl.uuid"/>
             <input class="nui-hidden" id="jdid" name="tddxglqxgl.jdid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
			<tr>
                   <td class="form_label">
                      	  大修轮次:
                    </td> 
                    <td>
					<input class="nui-textbox"  name="tddxglqxgl.dxlc" readonly="readonly" style="width: 100%;"/>
					</td>
					
                    <td class="form_label">
                      	  请求条件:
                    </td> 
                    <td>
					<input class="nui-textbox"  name="tddxglqxgl.xh" readonly="readonly" style="width: 100%;"/>
					</td>
                  
                </tr>
				
                <tr>
                   <td class="form_label">
                          机组状态
                    </td>
                    <td colspan="1">
                   <input property="editor" class="nui-dictcombobox" checkRecursive ="true" renderer="jzztRenderer" name="tddxglqxgl.jzstatu"
								style="width: 100%;" dataField="id" dictTypeId="NBJY_JZSTATU" readonly="readonly"/>
                    </td>
                    <td class="form_label">
                        工单号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tddxglqxgl.gdh" readonly="readonly"style="width: 100%;"/>
                    </td>
                  
                </tr>
                <tr>
                  <td class="form_label">
                        工作内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.gznr" readonly="readonly" style="width: 100%;"/>
                    </td>
                    <td class="form_label">
                        缺陷通知单号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tddxglqxgl.qxtzdh"  readonly="readonly" style="width: 100%;"/>
                    </td>
                   
                </tr>
                <tr>
                 <td class="form_label">
                        标题:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.title" readonly="readonly" style="width: 100%;"/>
                    </td>
                    <td class="form_label">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.gnwz" readonly="readonly" style="width: 100%;"/>
                    </td>
                  
                  
                </tr>
                <tr>
               
                  <td class="form_label">
                        通知单描述:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.tzdms" readonly="readonly" style="width: 100%;"/>
                    </td>
                  <td class="form_label">
                        通知单日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tddxglqxgl.tzdrq"readonly="readonly" dateFormat="yyyy-MM-dd" style="width: 100%;"/>
                    </td>
                 
                </tr>
                <tr>
                  
                   <td class="form_label">
                        状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" name="tddxglqxgl.statu" renderer="getqxstatus" dataField="id"
							style="width: 100%;" dictTypeId="QXSTATUS" readonly="readonly"/>
                    </td>
                	 <td class="form_label">
                        责任部门:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.zrbm"readonly="readonly" style="width: 100%;"/>
                    </td>
                </tr>
                <tr class="nui-hidden">
                    <td colspan="1">
                        <input class="nui-hidden" name="tddxglqxgl.isdelete" value = "0" style="width: 100%;"/>                   
                 
                    </td>
                    <td colspan="1">
                        <input class="nui-hidden" name="tddxglqxgl.updtime" />                   
                 
                    </td>
                </tr>
                
            </table>
        <!--     <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" iconCls="icon-save" onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" iconCls="icon-cancel" onclick="onCancel()">
                               关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div> -->
        </div>
        <script type="text/javascript">
            nui.parse();
            
	          var jzCombox = nui.get("jizu");
	          var jdid= getCookie('jdid');
	          nui.get("jdid").setValue(jdid);
	          jzCombox.setValue("");
			   var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
			   jzCombox.setUrl(url);   
           
           
           //缺陷状态
			function getqxstatus(e){
            	return nui.getDictText("QXSTATUS",e.value);
            }

            function saveData(){
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.addTdDxglQxgl.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.updateTdDxglQxgl.biz.ext";
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

 			//机组状态
            function jzztRenderer(e){
				return nui.getDictText("NBJY_JZSTATU",e.value);
			}
                   //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);

                      
                        if (infos.pageType == "edit") {
                            var json = infos.record;
							var status=json.tddxglqxgl.jzstatu;
							if(status==null&&status==""){
								//document.getElementById("dx").style.display="none";
								//document.getElementById("rq").style.display="table-row";
							}else{
								if(status=="N"){
								//document.getElementById("dx").style.display="none";
								//document.getElementById("rq").style.display="table-row";
								}else if(status=="O"){
								//document.getElementById("dx").style.display="table-row";
								//document.getElementById("rq").style.display="none";
								}
							} 
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
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
                </script>
            </body>
        </html>
