<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): cuiK
- Date: 2019-01-09 10:27:20
- Description:
    --%>
    <head>
        <title>
             程序管理录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">        </script>
         <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tcgndgglcxgl.uuid"/>
            <input class="nui-hidden" id="fpath" name="tcgndgglcxgl.filepath"/>
            <input class="nui-hidden" id="fname" name="tcgndgglcxgl.filename"/>
			<input class="nui-hidden" id="fid" name="tcgndgglcxgl.fileid"/>  
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label"  align="center">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox"  dataField="jsonObject" id="jd"
                      name="tcgndgglcxgl.dzid" onvaluechanged="reloadJz"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                     <td class="form_label" align="center">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" dataField="jsonObject" id="jz" textField="name" 
                      url="" name="tcgndgglcxgl.jzid"  valueField="id"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcxgl.name"/>
                    </td>
                    <td class="form_label">
                        类型:
                    </td>
                     <td colspan="1">
                        <input id="lx"   class="nui-dictcombobox"  name="tcgndgglcxgl.lx" dictTypeId="CXLX"/>
                        
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        简码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  name="tcgndgglcxgl.jm" />
                    </td>
                    <td class="form_label">
                        程序编码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  name="tcgndgglcxgl.cxbm"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        版本号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  name="tcgndgglcxgl.bbh"/>
                    </td>
                    <td class="form_label">
                        生效日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tcgndgglcxgl.sxrq"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                       状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcxgl.status"/>
                    </td>
                    <td class="form_label">
                        编写单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcxgl.bxdw"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="2">
                    	<input class="nui-hidden" name="tcgndgglcxgl.filename"/>
						<a id="fj" href=""></a>
                    </td>
                 <td colspan="1">
          
                        <input class="nui-textbox" name="tcgndgglcxgl.isdelete"  value="0" visible="false"/>
                    </td>
                </tr>
                
            </table>
            
        </div>
        <script type="text/javascript">
            nui.parse();
					 
					 
				var form = new nui.Form("#dataform1");//将普通form转为nui的form	 
					var fields = form.getFields();                
		            for (var i = 0, l = fields.length; i < l; i++) {
		                var c = fields[i];
		                if (c.setReadOnly) c.setEnabled(false);     //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
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
							var baseid = json.tcgndgglcxgl.dzid;
							var crewid = json.tcgndgglcxgl.jzid;
							var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + baseid;
				   			nui.get("jz").setUrl(url);
				   			nui.get("jz").setValue(crewid);
				   			var fildid = json.tcgndgglcxgl.fildid;
				   			if(fildid != null && fildid != ''){
				   				var href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="+json.tcgndgglcxgl.fildid;
					   			$('#fj').html(json.tcgndgglcxgl.fj); 
					   			$('#fj').attr('href',href);
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
                    //上传附件操作
	            	function onfileselect(){
						startUpload();
					}
					function startUpload(e) {
				        var fileupload = nui.get("fileName");
				        fileupload.startUpload();
				    }
				    //上传成功时，回写附件的name、id
				  function onUploadSuccess(e){
					var appIconName = e.file.name;

					var appIconPath = nui.decode(e.serverData).ret.filePath;
					//var appIconData = nui.decode(e.serverData).ret.fileValue;
					nui.get("fpath").setValue(appIconPath);
					nui.get("fname").setValue(appIconName);
				}
                </script>
            </body>
        </html>
