<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-14 10:51:27
- Description:
    --%>
    <head>
        <title>
            焊材新增
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
       <script type="text/javascript" src="<%= request.getContextPath()%>/knowledgebase/knowledgebase/encyclopedia/common.js"></script>
        	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        	<style type="text/css">
        		textarea{
overflow:auto;
}
        	</style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <div class="nui-hidden" name="material.uuid">
            </div>
            <div class="nui-hidden" name="material.standard">
            </div>
            <input class="nui-hidden" name="material.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1">                        
                      <input id="jd" class="nui-combobox" style="width: 100%" name="material.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                   <!--  <td colspan="1">
                        <input class="nui-combobox" style="width: 100%" name="material.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id"/>
                    </td> -->
                    <td class="form_label">
                        名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" onvalidation="hasIllegalChar(e,255,false,true)" name="material.name" required="true" emptyText="请输入名称" requiredErrorText="名称不能为空"/>
                    </td>
                    
                </tr>
                <tr>
                
                <td class="form_label">
                        标准:
                    </td>
                    <td colspan="1">
                <input class="nui-dictcombobox" dictTypeId="BZ" required="true" onvalidation="hasIllegalChar(e,255,true,true)"  emptyText="请选择标准" requiredErrorText="标准不能为空" style="width: 100%" value="AWS" name="material.standard"/>
                 </td>
                 <td class="form_label">
                        型号:
                    </td>
                    <td colspan="1">
                    <input class="nui-textbox" style="width: 100%" name="material.model" emptyText="请输入型号"  onvalidation="hasIllegalChar(e,255,true,true)"  required="true" requiredErrorText="型号不能为空"/>
                      
                    </td>
                    </tr>
                <tr><td class="form_label">
                        标准牌号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" style="width: 100%" name="material.brand" onvalidation="hasIllegalChar(e,255,true,true)"  emptyText="请输入标准牌号" requiredErrorText="标准牌号不能为空"/>
                    </td>
                
                    <td class="form_label"> 
                        规格:
                    </td>
                    <td colspan="1">
                    
                        <input class="nui-textbox" style="width: 100%" name="material.specifications" onvalidation="hasIllegalChar(e,255,true,true)"  required="true" emptyText="请输入规格"  requiredErrorText="规格不能为空" />
                    </td>
                   </tr>
                <tr> <td class="form_label">
                        批号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.batchnumber" onvalidation="hasIllegalChar(e,255,true,true)"  required="true" emptyText="请输入批号" requiredErrorText="批号不能为空"/>
                    </td>
                
                    <td class="form_label">
                        包装方式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.packing" onvalidation="hasIllegalChar(e,255,true,true)"  required="true" emptyText="请输入包装方式" requiredErrorText="包装方式不能为空"/>
                    </td>
                   </tr>
                <tr> <td class="form_label">
                        库存数量:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" vtype="int" intErrorText="请输入整数" onvalidation="hasIllegalChar(e,255,true,true)"  required="true" required="true" name="material.inventory" emptyText="请输入库存数量" requiredErrorText="库存数量不能为空"/>
                    </td>
                
                    <td class="form_label">
                        计量单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.measurement" onvalidation="hasIllegalChar(e,255,true,true)"  required="true" emptyText="请输入计量单位" requiredErrorText="计量单位不能为空"/>
                    </td>
                   </tr>
                <tr> <td class="form_label">
                 最小库存提醒:      
                    </td>
                    <td colspan="1">
                    	<input class="nui-textbox" style="width: 100%" vtype="int" intErrorText="请输入整数" onvalidation="hasIllegalChar(e,255,true,true)"  name="material.minimum" required="true" emptyText="请输入最小库存提醒" requiredErrorText="最小库存提醒不能为空"/>
                    </td>
                
                    <td class="form_label">
                        归属单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.attribution" onvalidation="hasIllegalChar(e,255,true,true)"  required="true" emptyText="请输入归属单位" requiredErrorText="归属单位不能为空"/>
                    </td>
                    </tr>
                <tr><td class="form_label">
                         有效期至:
                    </td>
                    <td colspan="1">
                    	<input id="date1" style="width: 100%" class="nui-datepicker" name="material.validuntil" emptyText="请选择有效期" required="true" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" requiredErrorText="有效期不能为空"/>
                    </td>
                <td class="form_label" colspan="2">
                    </td>
                    
                         </tr>
                    <td class="form_label">
          备注:              
                    </td>
                    <td colspan="3">
                          <input class="nui-textarea" style="width: 100%" onvalidation="hasIllegalChar(e,4000,false,true)"  name="material.remarks"/>
                    </td>
                    	 <input class="nui-hidden" name="material.isbf" value="ZC"/>
                    	 <input class="nui-hidden" name="material.kucunremind"/>
                </tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" id="btnSave" onclick="onOk()">
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
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.weldingmanagement.materialbiz.AddMaterialbyReminder.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.weldingmanagement.materialbiz.updateMaterialByReminder.biz.ext";
                }
                form.validate();
                 if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
				nui.get("#btnSave").setEnabled(false);//按钮置灰
                var data = form.getData(false,true);
                var json = nui.encode({material:data.material,base:jdid});

                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                        	if(pageType=="add"){
                        	CloseWindow("addSuccess");
                        	}else if(pageType=="edit"){
                        		CloseWindow("updateSuccess");
                        	}
                            
                        }else{
                            nui.alert("保存失败", "系统提示", function(action){
                                nui.get("#btnSave").setEnabled(true);//恢复
                                if(action == "ok" || action == "close"){
                                    //CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									 nui.get("#btnSave").setEnabled(true);//恢复
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
 						var json = infos.record;
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            form.setData(json);
                            form.setChanged(false);
                        }else if (infos.pageType == "show"){
                        	form.setData(json);
                            form.setChanged(false);
                            
                            $("#btnSave").hide();
                            $(".mini-buttonedit-buttons").hide();
						    //设置表单只读模式
                            labelModel(form);
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
                    
                     function onDrawDate(e) {
            var date = e.date;
            var d = new Date();

            if (date.getTime() < d.getTime()) {
                e.allowSelect = false;
            }
        }
                </script>
            </body>
        </html>
