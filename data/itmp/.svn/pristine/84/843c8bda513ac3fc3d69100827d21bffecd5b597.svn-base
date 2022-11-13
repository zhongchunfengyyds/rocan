<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--
- Author(s): jirukang
- Date: 2019-10-17 10:00:48
- Description:缺陷显示选择附件导入数据页面
    --%>
<html>
<head>
    <title>缺陷显示选择导入数据</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
    <style>
        .yashi {
            color: #fff !important;
            background: #00a1e9;
            font-family: "微软雅黑";
            border-radius: 3px;
            line-height: 25px;
            text-decoration: none;
            text-align: center;
            display: inline-block;
            zoom: 1;
            cursor: pointer;
            vertical-align: middle;
            border: none;
        }

        .yashi:hover {
            background: #00335d;
            color: #fff;
            text-decoration: none;
            border-radius: 3px;
        }

        .mini-buttonedit-border {
            border-radius: 3px;
            border: 1px #dddddd solid;
        }

        .mini-buttonedit-border .mini-buttonedit-input:hover {
            border-radius: 3px;
            border: 1px #00a1e9 solid;
        }

        label {
            float: left;
            padding: 0 10px;
        }
    </style>
</head>
<body>
<table align="center" border="0" width="100%" class="form_table">
    <tr>
        <td align="left">
            <!-- <input type="button" value='下载导入模板' onclick="downloadTemp()" class="yashi"/> -->
        </td>
    </tr>
    <tr>
        <td width="95%" style="margin:20px auto;display: block;">
            <label>附件:</label> <input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile"
                                      limitType="*.xlsx;*.xls" limitSize="20MB"
                                      flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
                                      onfileselect="onfileselect"
                                      uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
                                      onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
                                      style="width:89%;"/>
            <input class="nui-hidden" id="fpath" name="filepath"/>
            <input class="nui-hidden" id="fname" name="filename"/>
        </td>
    </tr>
    <tr>
        <td align="left">
            <span style="color:red;font-size:13px">提示：1、导入文件中日期格式必须为yyyy-mm-dd或yyyy/mm/dd 例：2019-01-05或2019/01/05</span><br/>
            <span style="color:red;font-size:13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、模板中红色背景的字段为必填字段</span><br />
            <span style="color:red;font-size:13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、模板中的加号请使用全角(＋)</span><br />
 			<span id="GFFD_Tips" style="color:red;font-size:13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 
        </td>
    </tr>
    <tr>
        <td align="center">
            <input type="button" value='导入数据' onclick="importData()" class="yashi"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value='关闭' onclick="onCancel()" class="yashi"/><!-- 导入 -->
        </td>
    </tr>
</table>
<div id="importResult">

</div>

<div style="display:none;">
   <!--  <form id="downloadFile" method="post">
    </form> -->
</div>


<script type="text/javascript">
    nui.parse();
    var fData = null;
    var stencilplate=null;
    function SetData(data) {
        fData = data;
        var jdName = getCookie('jdname');
        var jzName = getCookie('jzname');
        if (jdName != "") {
            var  info = "是否确定导入" + jdName + "基地" + jzName + "机组数据?";
            nui.confirm(info, "提示", function (choose) {
                if (choose == 'cancel') {
                    //CloseWindow("");
                    window.CloseOwnerWindow();
                }
            });
        }
    }

    //上传附件操作
    function onfileselect() {
        startUpload();
    }

    function startUpload(e) {
        var fileupload = nui.get("fileName");
        fileupload.startUpload();
    }

    //上传成功时，回写附件的name、id
    function onUploadSuccess(e) {
        var appIconName = e.file.name;
        var appIconPath = nui.decode(e.serverData).ret.filePath;
        nui.get("fpath").setValue(appIconPath);
        nui.get("fname").setValue(appIconName);
    }

   /*  function downloadTemp() {
        var form = document.getElementById("downloadFile");
        
        form.action = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + fData.tempFileName + "&projectPath=example&loadFileName=" + fData.tempLoadName);
        form.submit();
    } */

	//导入文件处理
    function importData() {
         var filePath = encodeURIComponent(nui.get("fpath").getValue());
        if (filePath == null || filePath == "") {
            nui.alert("请选择要导入的文件！");
            return;
        }
        
        var json = "{excelFile:'" + filePath + "',entityName:'" + fData.entitfName + "',tempFile:'" + fData.tempFileName + "','jd':'" + getCookie('jdid') + "','jz':'" + getCookie('jzid') + "',type:'" + fData.type +  "',stencilplate:'"+fData.stencilplate+ "'}";
        nui.mask({
            el: document.body,
            cls: 'mini-mask-loading',
            html: '请稍等，导入数据中...'
        });
        //普通得导入
        var url="com.cgn.itmp.basecommon.Common.importTempleDataFormExcel.biz.ext";
       
        $.ajax({
            url:url,         
            type: 'POST',
            cache: false,
            data: json,
            contentType: 'text/json',
            success: function (text) {
                var html = "<span style='clolr:red'>";
                html += " 本次导入数据结果: ";
                html += " 需导入总条数为   " + (text.result)[0] + "条 ,";
                html += " 导入成功的有   " + (text.result)[1] + "条 ,";
                html += " 导入失败的有   " + (text.result)[2] + "条 。";
                html += " </span>";
                
                if (parseInt((text.result)[2]) > 0) {
                    html += "<br/>";
                    html += "<input type='hidden' id='errorFile' value='" + (text.result)[3] + "' >";
                    html += "<a href='#' onClick='downloadError()' >导出错误的返回结果</a>";

                }
                $("#importResult").html(html);
                nui.unmask(document.body);

            },
            error: function (jqXHR, textStatus, errorThrown) {
                nui.unmask(document.body);
            }

        });

    }

	//下载错误处理
    function downloadError() {
        var file = $('#errorFile').val();

//         var elemIF = document.createElement("iframe");
<%--         elemIF.src = "<%=request.getContextPath()%>/"+file; --%>
//         elemIF.style.display = "none";
//         document.body.appendChild(elemIF);
       window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + file.replace("\\", "/").split("/")[1] + "&projectPath=temp&loadFileName=" + file.replace("\\", "/").split("/")[1]);
    }

	
    function onCancel() {
        CloseWindow("cancel");
    }


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
    
    
   
</script>
</body>
</html>