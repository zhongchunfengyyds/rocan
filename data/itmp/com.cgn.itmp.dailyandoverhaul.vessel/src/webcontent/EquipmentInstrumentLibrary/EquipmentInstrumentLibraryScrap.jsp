<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): ASUS
  - Date: 2018-12-15 15:11:24
  - Description:
-->
<head>
<title>报废</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    
</head>
<body>
<input name="pageType" class="nui-hidden"/>
        <div id="T_DXGL_SYSY_FACILITYINFO" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tdxglsysyfacilityinfo.uuid"/>
	<table border="0" style="width:100%;">
	 <tr>
        <td class="form_label">
                      报废原因:
                    </td>
                    <td>
                        <input class="nui-textarea" name="tdxglsysyfacilityinfo.bfyy"/>
                    </td>       
    </tr>
    <tr style="display:none">
                    <td class="form_label">
                        报备情况:
                    </td>
                    <td>
                        <input id="bbqk" class="nui-dictcombobox" name="tdxglsysyfacilityinfo.bbqk"
                        dictTypeId="BBQK"/>
                    </td>
                    <td class="form_label">
                        使用状态:
                    </td>
                    <td>
                        <input id="syzt" class="nui-dictcombobox" name="tdxglsysyfacilityinfo.syzt"
                        dictTypeId="SYZT"/>
                    </td>
                </tr>
	</table>	
	   <table width="100%" border="0" height="80px">
                    <tr>
                        <td style="text-align:center;" colspan="4" width:80px>
                            <a class="nui-button" onclick="onOk()">
                                确定
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
	<script type="text/javascript">
   
           nui.parse();

            function saveData(){
				
                var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.updateTDxglSysyFacilityinfo.biz.ext";
               
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
                        if (infos.pageType == "no") {
                            var json = infos.record;
							json.tdxglsysyfacilityinfo.bbqk="KB";
							json.tdxglsysyfacilityinfo.syzt="YBF";
                            var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
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