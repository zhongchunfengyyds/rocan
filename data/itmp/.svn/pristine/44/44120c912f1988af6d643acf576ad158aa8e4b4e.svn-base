<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-17 10:00:48
- Description:缺陷显示详情信息实体录入页面
    --%>
    <head>
        <title>
            缺陷显示详情信息实体录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <div class="nui-hidden" name="defectsshowdetailedinformation.uuid">
            </div>
            <input class="nui-hidden" name="defectsshowdetailedinformation.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" name="defectsshowdetailedinformation.jd"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" name="defectsshowdetailedinformation.jz"/>
                    </td>
                    <td class="form_label">
                        大修轮次:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.overhaulsequence"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.equipmentname"/>
                    </td>
                    <td class="form_label">
                        部件名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.componentname"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        被检部位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.checklocation"/>
                    </td>
                    <td class="form_label">
                        检查内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.inspectioncontent"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.inspectionmethod"/>
                    </td>
                    <td class="form_label">
                        模板:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.stencilplate"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        缺陷显示编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.defectdisplaynumber"/>
                    </td>
                    <td class="form_label">
                        缺陷显示所在螺栓/螺母标识号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.boltsnutsnumber"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        显示位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.displayposition"/>
                    </td>
                    <td class="form_label">
                        显示信号幅值:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.displaysignalmagnitude"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        标定螺栓/螺母上人工刻伤0.5mm显示信号幅值(V):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.signalamplitude_n1"/>
                    </td>
                    <td class="form_label">
                        标定螺栓/螺母上人工刻伤1mm显示信号幅值(V):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.signalamplitude_n2"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        标定螺栓/螺母上人工刻伤2mm显示信号幅值(V):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.signalamplitude_n3"/>
                    </td>
                    <td class="form_label">
                        是否超标缺陷:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.influence"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="defectsshowdetailedinformation.strategyadjustment"/>
                    </td>
                    
                    <td colspan="1">
                        <input class="nui-hidden" name="defectsshowdetailedinformation.isdel" value="0"/>
                    </td>
                </tr>
                
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
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
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();

            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.addDefectsshowdetailedinformation.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.updateDefectsshowdetailedinformation.biz.ext";
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
