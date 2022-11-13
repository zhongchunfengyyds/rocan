<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@page import="com.eos.data.datacontext.IUserObject"%>
 <%@page import="com.eos.foundation.common.utils.StringUtil"%>
 <%@page import="com.eos.foundation.eoscommon.ConfigurationUtil"%>
<%@page import="com.eos.foundation.eoscommon.BusinessDictUtil"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
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
            <input class="nui-hidden" name="tddxglqxgl.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="tddxglqxgl.uuid"/>
             <input class="nui-hidden" id="jdid" name="tddxglqxgl.jdid"/>
               <input class="nui-hidden" name="tddxglqxgl.addtime"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
            	<tr>
            		<td class="form_label">
                          大修轮次
                    </td>
                    <td colspan="1">
						<div  id="dxlc" allowResize="false" 
								width="70" headerAlign="center" allowSort="true">
								<div id="combobox1" name="tddxglqxgl.dxlc" property="editor" class="nui-combobox" style="width:100%;"  textField="name" valueField="id" 
							     url=""  multiSelect="false"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
								</div>
							</div>
					</td>
					 <td class="form_label">
                        请求条件:
                    </td> 
				<td>
				<input id="xh" class="nui-textbox"  name="tddxglqxgl.xh" style="width: 100%;"/>
				</td>
            	</tr>
                <tr>
                   <td class="form_label">
                          机组状态
                    </td>
                    <td colspan="1">
                   <input property="editor" id="status" class="nui-dictcombobox"  checkRecursive ="true" renderer="jzztRenderer" name="tddxglqxgl.jzstatu"
							style="width: 100%;" dataField="id" dictTypeId="NBJY_JZSTATU" required="true" requiredErrorText="机组状态不能为空"/>
                    </td>
                    <td class="form_label">
                        工单号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tddxglqxgl.gdh" required="true" requiredErrorText="工单号不能为空" style="width: 100%;"/>
                    </td>
                  
                </tr>
                <tr>
                  <td class="form_label">
                        工作内容:
                    </td>
                    <td colspan="1">
                        <textarea class="nui-textarea" name="tddxglqxgl.gznr"  style="width: 100%;"/></textarea>
                    </td>
                    <td class="form_label">
                        缺陷通知单号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tddxglqxgl.qxtzdh" required="true" requiredErrorText="缺陷通知单号不能为空" style="width: 100%;"/>
                    </td>
                   
                </tr>

                <tr>
                 <td class="form_label">
                        标题:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.title" required="true" requiredErrorText="标题不能为空" style="width: 100%;"/>
                    </td>
                    <td class="form_label">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.gnwz" required="true" requiredErrorText="功能位置不能为空" style="width: 100%;"/>
                    </td>
                  
                </tr>
                <tr>
                
                  <td class="form_label">
                        通知单描述:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.tzdms" required="true" requiredErrorText="通知单描述不能为空" style="width: 100%;"/>
                    </td>
                 <td class="form_label">
                        通知单日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tddxglqxgl.tzdrq"  dateFormat="yyyy-MM-dd" style="width: 100%;"/>
                    </td>
                 
                 
                </tr>
                <tr>
                   <td class="form_label">
                        状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" name="tddxglqxgl.statu" renderer="getqxstatus" dataField="id"
							dictTypeId="QXSTATUS" required="true" requiredErrorText="状态不能为空" style="width: 100%;"/>
                    </td>
                   <td class="form_label">
                        责任部门:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="tddxglqxgl.zrbm" required="true" requiredErrorText=" 责任部门不能为空" style="width: 100%;"/>
                    </td>
                   
            
                    
                </tr> 
                <tr class="nui-hidden">
                    <td colspan="1">
                        <input class="nui-hidden" name="tddxglqxgl.isdelete" value = "0"/>                   
                 
                    </td>
                    <td colspan="1">
                        <input class="nui-hidden" name="tddxglqxgl.updtime"/>                   
                 
                    </td>
                </tr>
                
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button"  onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
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
	          //var jzCombox = nui.get("jizu");
	          var jdid= getCookie('jdid');
	          nui.get("jdid").setValue(jdid);
	          //jzCombox.setValue("");
			   //var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
			   //jzCombox.setUrl(url);   
           	   nui.get("combobox1").load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
		 	function getjzstatus(e){
				var jzstatu=e.value;
				if(jzstatu=="N"){
					nui.get("xh").setValue('N');
				}else if(jzstatu=="O"){
					nui.get("xh").setValue();
				}
			
			}
			 
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
                data.tddxglqxgl.tzdrq=nui.formatDate(data.tddxglqxgl.tzdrq,'yyyy-MM-dd');
                data.tddxglqxgl.addtime=nui.formatDate(new Date(),'yyyy-MM-dd HH:mm:ss');
                data.tddxglqxgl.dxlc = nui.get("combobox1").getValue();
                
               var lc=data.tddxglqxgl.dxlc;
               if(lc!="" &&lc!=null && lc < 10 && lc.length < 2){
	               var num=0;
	               	data.tddxglqxgl.dxlc=num+lc;
               }
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
					 function onCloseClick(e) {
		    var obj = e.sender;
		    obj.setText("");
		    obj.setValue("");
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
nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                      
                        if (infos.pageType == "edit") {
                            var json = infos.record;
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
