<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): ASUS
- Date: 2019-01-02 15:39:17
- Description:
    --%>
    <head>
        <title>
            焊工资质录入
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
             <input class="nui-hidden" name="tdxglzzsqglhgzzgl.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        姓名:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglzzsqglhgzzgl.name"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        性别:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" name="tdxglzzsqglhgzzgl.sex" dictTypeId="XB"/>
                    </td>
                    <td class="form_label">
                        员工号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglzzsqglhgzzgl.empnubmer"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        身份证号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglzzsqglhgzzgl.idnumber"/>
                    </td>
                    <td class="form_label">
                        作业项目代号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglzzsqglhgzzgl.zyxmdh"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        批准日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tdxglzzsqglhgzzgl.pzrq"/>
                    </td>
                    <td class="form_label">
                        有效日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tdxglzzsqglhgzzgl.yxrq"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        发证机关:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglzzsqglhgzzgl.fzjg"/>
                    </td>
                    <td class="form_label">
                        证明文件:
                    </td>
                    <td colspan="1">
                        <input class="nui-htmlfile" name="tdxglzzsqglhgzzgl.zmwj"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" name="tdxglzzsqglhgzzgl.zt" dictTypeId="WSZT"/>
                    </td>
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglzzsqglhgzzgl.bz"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input class="nui-textbox" name="tdxglzzsqglhgzzgl.isdelete" value="0" visible="false"/>
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
                var urlStr = "com.cgn.itmp.dailyandoverhaul.authorization.WelderQualificationMgt.addTDxglZzsqglHgzzgl.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.dailyandoverhaul.authorization.WelderQualificationMgt.updateTDxglZzsqglHgzzgl.biz.ext";
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
