<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserRealName();
 %><html>
<%--
- Author(s): cuiK
- Date: 2019-01-07 16:34:41
- Description:
    --%>
    <head>
        <title>
            参考图例管理录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript">
        </script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
         <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
         <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tcgndgglcktlgl.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    
                    <td class="form_label">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" dataField="jsonObject" id="jz" textField="name" 
                      url=""
                      name="tcgndgglcktlgl.jzid"  valueField="id" readonly="readonly"/>
                    </td>
                
                    <td class="form_label">
                        参考图例编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcktlgl.cktlbh" readonly="readonly"/>
                    </td>
                    </tr>
                <tr>
                    <td class="form_label">
                        参考图例名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcktlgl.cktlmc" readonly="readonly"/>
                    </td>
              
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="1">
                     	<input class="nui-hidden" name="tcgndgglcktlgl.fj"/>
                     	<a id="fj" href=""></a>
                    </td>
                      </tr>
                <tr style="display: none">
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcktlgl.isdelete" value="0" visible="false"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcktlgl.scr" value="<%=userName %>" visible="false"/>
                    </td>
                     <td colspan="1">
                        <input id="fildid" class="nui-hidden" name="tcgndgglcktlgl.fildid" visible="false" />
                    </td>
                </tr>
                
            </table>
        </div>
        <div style="display:none;">
        <form id="downloadFile" method="post">
        </form>
 </div>
        <script type="text/javascript">
            nui.parse();

            function saveData(){
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.dggl.cxgl.tcgndgglcktlglbiz.addTCgnDgglCktlgl.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.dggl.cxgl.tcgndgglcktlglbiz.updateTCgnDgglCktlgl.biz.ext";
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
                        }
                        });
                    }
        
                    //页面间传输json数据
                    function setFormData(data){
                        var infos = nui.clone(data);

                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);

                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;
							var baseid = json.tcgndgglcktlgl.jd;
							var crewid = json.tcgndgglcktlgl.jzid;
							var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + baseid;
				   			nui.get("jz").setUrl(url);
				   			nui.get("jz").setValue(crewid);
				   			var fildid = json.tcgndgglcktlgl.fildid;
				   			if(fildid != null && fildid != ''){
				   				var href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="+json.tcgndgglcktlgl.fildid;
					   			$('#fj').html(json.tcgndgglcktlgl.fj); 
					   			$('#fj').attr('href',href);
				   			}
				   			
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                        }
                    }
					    function JZRenderer(e){	
			     	    var val = "";
			     	    	nui.ajax({
				                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznameByid.biz.ext",
				                type: 'POST',
				                async: false,
				                data:"{jzid:'" + e.row.jzid + "'}",
				                success: function (text) {
				                	val =  text.jzname;
				                }
				            });						
							return val;
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
