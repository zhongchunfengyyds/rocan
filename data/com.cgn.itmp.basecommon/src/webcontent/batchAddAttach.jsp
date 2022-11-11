<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>

    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <!-- 
  - Author(s): xuzhikang
  - Date: 2019-03-12 09:44:36
  - Description:
-->

    <head>
        <title>batchAddAttach</title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%=request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
        <script type="text/javascript"
            src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
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
                <label>附件:</label>
                <div id="progress" class="progress" style="display:none;">
                    <div class="progress-item"></div>
                </div>
                <div style="display: flex;">
                    <input id="fname" class="nui-textbox" name="filename" style="width: 100%" readonly="readonly"
                        name="" requiredErrorText="附件不能为空" required="true" />
                    <input id="fpath" style="display: none" class="nui-textbox" name="filepath" />
                    <form id="uploadform" enctype="multipart/form-data">
                        <input style="width:70px" type="file" name="file" id="selectInput" accept="*"
                            onchange="fileSub1(this)">
                    </form>
                </div>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <span style="color:red;font-size:10px">注：1、导入文件仅支持压缩文件.zip格式</span><br />
                    <span
                        style="color:red;font-size:10px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、压缩文件中不可存在文件夹，否则将会导致附件解析失败</span><br />
                    <span style="color:red;font-size:10px" id="message"></span>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <input type="button" value='导入附件' onclick="importData()" class="yashi" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" value='关闭' onclick="onCancel()" class="yashi" />
                </td>
            </tr>
        </table>


        <script type="text/javascript">
            nui.parse();

            var fData = null;

            function SetData (data) {
                fData = data;
                var mess = "";
                if (data.page == "CKT") {
                    mess = "压缩包内文件命名对应【参考图例名称】";
                } else if (data.page == "CXGL") {
                    mess = "压缩包内文件命名对应【简码】";
                } else if (data.page == "JDS") {
                    mess = "压缩包内文件命名对应【出厂编号】";
                } else if (data.page == "WSSQ") {
                    mess = "压缩包内文件命名对应【证书编号】";
                } else if (data.page == "GYPD") {
                    mess = "压缩包内文件命名对应【工艺评定报告号】";
                } else if (data.page == "HJGL") {
                    mess = "压缩包内文件命名对应【设备编号】";
                } else if (data.page == "HCGL") {
                    mess = "压缩包内文件命名对应【焊材名称】";
                } else if (data.page == "HGGL") {
                    mess = "压缩包内文件命名对应【操作证书编号】";
                } else if (data.page == "HG" || data.page == "HDWX") {
                    mess = "压缩包内文件命名对应【身份证号】";
                } else if (data.page == "GYKBH") {
                    mess = "压缩包内文件命名对应【WPS 编号】";
                } else if (data.page == "BGBM") {
                    mess = "压缩包内文件命名对应【报告编码】";
                } else if (data.page == "SJNAME") {
                    mess = "压缩包内文件命名对应【书籍名称】";
                } else if (data.page.indexOf("FILENAME_") != -1) {
                    mess = "压缩包内文件命名对应【文件名称】";
                } else if (data.page == "STATUTENAME") {
                    mess = "压缩包内文件命名对应【法规名称】";
                } else if (data.page == "CHAPTERNUMANDNAME") {
                    mess = "压缩包内文件命名对应【章节编号和名称】";
                } else if (data.page == "CRITERIONNAME") {
                    mess = "压缩包内文件命名对应【标准名称】";
                } else if (data.page == "CHINESSTERMNAME") {//术语
                    mess = "压缩包内文件命名对应【中文术语名称】";
                } else if (data.page == "PAPERSNAME") {//专家解读
                    mess = "压缩包内文件命名对应【文件名称】";
                } else if (data.page == "WJNAME") {//专家解读
                    mess = "压缩包内文件命名对应【文件名称】";
                }
                if (mess != "") {
                    $("#message").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、" + mess);
                }

            }

            function fileSub1 (file) {
                var fv = file.value;
                if (fv) {
                    // 			$("#progress").css('display','none');
                    document.querySelector("#progress .progress-item").style.width = "0%";
                    $("#uploadform").ajaxSubmit({
                        type: "post",
                        dataType: "json",
                        url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploadbd.jsp",
                        processData: false,
                        contentType: false,
                        xhr: function () {
                            var xhr = $.ajaxSettings.xhr();
                            if (xhr.upload) {
                                xhr.upload.addEventListener('progress', function (event) {
                                    var percent = Math.floor(event.loaded / event.total * 100);
                                    document.querySelector("#progress .progress-item").style.width = percent + "%";
                                }, false);
                            }
                            return xhr;
                        },
                        success: function (data) {
                            if (data.code == 1) {
                                nui.get("fname").setValue(data.list[0].name);
                                nui.get("fpath").setValue(data.list[0].uri);
                            } else {
                                nui.alert("上传失败:" + data.message);
                            }
                            $('#selectInput').val('')
                        }
                    });
                } else {
                    return false;
                }
            }

            //上传附件操作
            function onfileselect () {

                startUpload();
            }

            function startUpload (e) {

                var fileupload = nui.get("fileName");
                fileupload.startUpload();
            }

            //上传成功时，回写附件的name、id
            function onUploadSuccess (e) {

                var appIconName = e.file.name;
                var appIconPath = nui.decode(e.serverData).ret.filePath;
                nui.get("fpath").setValue(appIconPath);
                nui.get("fname").setValue(appIconName);
            }


            function importData () {
                var filePath = encodeURIComponent(nui.get("fpath").getValue());
                if (filePath == null || filePath == "") {
                    nui.alert("请选择要导入的文件！");
                    return;
                }

                var json = "{filePath:'" + filePath + "',pageSource:'" + fData.page + "',power:'" + getCookie("jdid") + "',crew:'" + getCookie("jzid") + "'}";
                nui.mask({
                    el: document.body,
                    cls: 'mini-mask-loading',
                    html: '请稍等，解析附件中...'
                });
                $.ajax({
                    url: "com.cgn.itmp.basecommon.Common.batchAddAttach.biz.ext",
                    type: 'POST',
                    cache: false,
                    data: json,
                    contentType: 'text/json',
                    success: function (text) {
                        nui.unmask(document.body);
                        nui.alert("<div style='text-align:left'>" + text.result.mess + "</div>");
                        //	if(text.result == "1"){
                        //		nui.alert("导入附件成功!");
                        //	}else{
                        // 		nui.alert("附件解析失败!");
                        //	}


                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        nui.unmask(document.body);
                    }

                });

            }


            function downloadError () {
                var file = $('#errorFile').val();
                var form = document.getElementById("downloadFile");
                form.action = "com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + file + "&projectPath=temp";
                form.submit();
            }

            function onCancel () {
                CloseWindow("cancel");
            }


            function CloseWindow (action) {
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