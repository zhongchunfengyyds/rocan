<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2018-12-26 19:12:53
- Description:
    --%>
    <head>
        <!-- <title>
            TDxglZqcontroll录入
        </title> -->
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <input class="nui-hidden" name="tdxglzqcontroll.uuid"/>
            
            <table style="width:80%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        基地:
                    </td>      
                     <td colspan="1">
                    <input class="nui-combobox"  dataField="jsonObject" id="jdid"
                      name="tdxglzqcontroll.jdid" onvaluechanged="reloadJz" required="true"
					requiredErrorText=" 基地不能为空"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id" emptyText="请选择"/>
					 </td> 
                    
                    
                    <td class="form_label">
                        机组:
                    </td>
                    
                     <td colspan="1">
                     <input class="nui-combobox" dataField="jsonObject" id="jzid"  textField="name" required="true"
					requiredErrorText="机组不能为空" url=""
                      name="tdxglzqcontroll.jzid"  valueField="id" emptyText="请选择"/>
                    </td>
                 
                </tr> 
                <!-- <tr>                 
                    <td class="form_label">
                        模块:
                    </td>                  
                     <td colspan="1">
                     <input class="nui-textbox" name="tdxglzqcontroll.mk" />
                    </td>                 
                </tr> -->
            </table>                      
         <fieldset id="fd1" style="width:650px;">
         <legend><label>大修周期</label></legend>  
            <table style="width:100%;height:80%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td >
                        显示周期: 
                    </td>
                 
                    <td colspan="1" style="width:500px!important;">                       
                        <input labelField="true" id="zq1"  name="tdxglzqcontroll.cstart" class="nui-spinner xszq" value="1" minValue="1" maxValue="60" style="float:left;"/>            
                        <input labelField="true" id="zq2"  name="tdxglzqcontroll.cend" class="nui-spinner xszq1" value="1" minValue="1" maxValue="60" style="float:left;"/>                           
                    </td>
                </tr>          
      </table>
      </fieldset>      
       <fieldset id="fd1" style="width:650px;"> 
        <legend><label>日常周期</label></legend>         
           <table style="width:100%;height:80%;table-layout:fixed;" class="nui-form-table">   
                <tr>
                    <td class="form_label">
                        日常周期:
                    </td>
                     <td colspan="1" style="width:500px!important;">                       
                        <input labelField="true" id="rc1"  name="tdxglzqcontroll.rcstart" class="nui-spinner rczq" value="1991" minValue="1991" maxValue="2089" style="float:left;"/>            
                        <input labelField="true" id="rc2"  name="tdxglzqcontroll.rcend" class="nui-spinner rczq1" value="1991" minValue="1991" maxValue="2089" style="float:left;"/>                           
                    </td>                                        
                </tr>
                 <tr>                  
                    <td colspan="1">
                        <input class="nui-hidden" name="tdxglzqcontroll.cvalue"/>
                        <input class="nui-hidden" name="tdxglzqcontroll.richangzq"/>                         
                    </td>                  
                    <td colspan="1">
                        <input class="nui-hidden" name="tdxglzqcontroll.isdelete" value = "0"/>                         
                    </td>
                </tr>
            </table>
             </fieldset>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="btn btn-default" onclick="onOk()">
                                <span class="fa fa-save"></span>保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="btn btn-second" onclick="onCancel()">
                                <span class="fa fa-times"></span>关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            
              var jdCombox = nui.get("jdid");
	          var jzCombox = nui.get("jzid");
             function reloadJz(e) {
		           var jdid = jdCombox.getValue();
			       jzCombox.setValue("");
				   var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
				   jzCombox.setUrl(url);   
		        }
			var tip = new nui.ToolTip();
			tip.set({
				target: document,
				selector: '.rczq',   //要添加提示元素的calss
				placement:'top',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip.setContent("最小值是1991，最大值2089");  //给提示框内容添加值
				} 
			});
			var tip1 = new nui.ToolTip();
			tip1.set({
				target: document,
				selector: '.rczq1',   //要添加提示元素的calss
				placement:'top',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip1.setContent("最小值是1991，最大值2089");  //给提示框内容添加值
				} 
			});
			var tip2 = new nui.ToolTip();
			tip2.set({
				target: document,
				selector: '.xszq',   //要添加提示元素的calss
				placement:'top',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip2.setContent("最小值是1，最大值60");  //给提示框内容添加值
				} 
			});
			var tip3 = new nui.ToolTip();
			tip3.set({
				target: document,
				selector: '.xszq1',   //要添加提示元素的calss
				placement:'top',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip3.setContent("最小值是1，最大值60");  //给提示框内容添加值
				} 
			});
			//保存数据
            function saveData(){
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var zq1=nui.get("zq1").getValue();
                var zq2=nui.get("zq2").getValue();
                if(zq1>zq2){
                 nui.alert("显示开始周期不能大于结束周期");
                 return;
                }
                var rc1=nui.get("rc1").getValue();
                var rc2=nui.get("rc2").getValue();
                 if(rc1>rc2){
                 nui.alert("日常开始周期不能大于结束周期");
                 return;
                }
                var urlStr = "com.cgn.itmp.systemset.CycleMgt.addTDxglZqcontroll.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.systemset.CycleMgt.updateTDxglZqcontroll.biz.ext";
                }
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                var data = form.getData(false,true);
                data.tdxglzqcontroll.cvalue = "C"+ data.tdxglzqcontroll.cstart+ "-C" + data.tdxglzqcontroll.cend;  
                data.tdxglzqcontroll.richangzq =  data.tdxglzqcontroll.rcstart+ "-" + data.tdxglzqcontroll.rcend;    
                var json = nui.encode(data);            
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.res == 0){
                            CloseWindow("saveSuccess");
                        }else{
                            nui.alert("保存失败,数据已经存在", "系统提示", function(action){
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
                            var jdid=json.tdxglzqcontroll.jdid;
                            var jzid=json.tdxglzqcontroll.jzid;
                            nui.get("jdid").setValue(jdid);
							var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
							nui.get("jzid").setUrl(url);
							nui.get("jzid").setValue(jzid);
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            nui.get("jdid").disable();
                            nui.get("jzid").disable();
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
