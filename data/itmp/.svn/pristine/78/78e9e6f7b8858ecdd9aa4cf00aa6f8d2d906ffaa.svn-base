<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-16 16:22:13
- Description:
    --%>
    <head>
        <title>
            焊接质量计划管理 - 新增
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <div class="nui-hidden" name="quality.uuid">
            </div>
            <div class="nui-hidden" name="quality.isdel">
            </div>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1">                        
                      <input id="jd" style="width: 100%" class="nui-combobox" name="quality.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                    <td class="form_label">
                      机组
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" style="width: 100%" name="quality.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id"/>
                    </td>
                    
                </tr>
                <tr>
                <td class="form_label">
                        NDNP:
                    </td>
                    <td class="form_label">
                        焊接质量计划(WQS):
                    </td>
                    <td class="form_label">
                        大修轮次:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.rounds"/>
                    </td>
                <td class="form_label">
                        质量计划编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.qualitynumber"/>
                    </td>
                    
                
                    <td class="form_label">
                        版本:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.edition"/>
                    </td>
                    </tr>
                    </table>
                <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                
               <tr>
                    <td class="form_label">
                        申请单号:
                    </td>
                    <td colspan="3">
                        <input class="nui-textbox" style="width: 100%" name="quality.applyno"/>
                    </td>
                    <td class="form_label">
                        部件1:
                    </td>
                    <td class="form_label">
                        部件2:
                    </td>
                     <td class="form_label">
                        地理位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.applyno"/>
                    </td>
                     <td class="form_label">
                        焊接位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.applyno"/>
                    </td>
                    </tr>
                
                <tr>
                
                    <td class="form_label">
                        主票号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.ticketnumber"/>
                    </td>
                    <td class="form_label">
                        被焊母材:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.ticketnumber"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.ticketnumber"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.ticketnumber"/>
                    </td>
                    <td class="form_label">
                        制造级别:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.ticketnumber"/>
                    </td>
                <td class="form_label">
                        接头形式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.ticketnumber"/>
                    </td>
 
 </tr>
 <tr>              
 					
					<td class="form_label">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td class="form_label">
                        接口外径/mm:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td class="form_label">
                        焊接填充材料:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td class="form_label">
                        批号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    </tr>
                    <tr>
                    <td class="form_label">
                        图纸号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
             		<td class="form_label">
                        接口厚度/mm:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td class="form_label">
                        焊工工艺评定:
                    </td>
                    <td colspan="3">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>        
                    </tr>
                <tr>
                     <td class="form_label">
                        焊接号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
             		<td class="form_label">
                        母材材质:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>
                    <td class="form_label">
                        焊接方法:
                    </td>
                    <td colspan="3">
                        <input class="nui-textbox" style="width: 100%" name="quality.position"/>
                    </td>        
                    </tr>
                	<tr class="nui-hidden">
				<td colspan="3"><input class="nui-textbox" style="width: 100%" value="0" visible="false"
					name="quality.isdel" /></td>
			</tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" onclick="onOk()">
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
            var jzid = parent.nui.get("jzid").getValue();
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
        	nui.get('jz').setAjaxType("POST");
        	nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
        	nui.get("jz").setValue(jzid);
            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.weldingmanagement.qualitybiz.addQuality.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.weldingmanagement.qualitybiz.updateQuality.biz.ext";
                }
                form.validate();
                if(form.isValid()==false) return;

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
