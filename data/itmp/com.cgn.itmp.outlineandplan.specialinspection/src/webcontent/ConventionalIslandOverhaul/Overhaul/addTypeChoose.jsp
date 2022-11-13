<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-02-18 17:46:13
- Description:
    --%>
<head>
    <title>

    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
</head>
<body style="margin: 28px;">
<table>
    <tr>
        <td>
            <span>检查计划类型:</span>
            <input zzCombo="CGDRCCombo" name="criteria/_expr[1]/type" vtype="maxLength:128"
                   class="nui-combobox nui-form-input" id="CGDRC"
                   dataField="dictObject"
                   url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=CGDRC"
                   textField="dictName" valueField="dictID" emptyText="请选择" required="false" allowInput="true"
                   showNullItem="true" nullItemText="请选择..."/>
            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
        </td>
    </tr>
    <tr>
        <td style="text-align:center;margin-top:30px;display:block;" colspan="4">
            <a class="nui-button"  onclick="onOk()">
               确认
            </a>
            <span style="display:inline-block;width:25px;">
                            </span>
            <a class="nui-button"  onclick="onCancel()">
                关闭
            </a>
        </td>
    </tr>
</table>

<script type="text/javascript">
    function saveData() {
        var type = nui.get("CGDRC").getValue();
        if ("RCTY" == type) {
            nui.open({showMaxButton : true,
                url: "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addCurrencyForm.jsp",
                title: "请选择专用检查计划类型",
                width: 874,
                height: 500,
                onload: function () {

                },
                ondestroy: function (action) {
                    onCancel();
                }
            });
        } else if ("RCGD" == type) {
            nui.open({showMaxButton : true,
                url: "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addConduitForm.jsp",
                title: "请选择专用检查计划类型",
                width: 874,
                height: 500,
                onload: function () {

                },
                ondestroy: function (action) {
                    onCancel();
                }
            });


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
