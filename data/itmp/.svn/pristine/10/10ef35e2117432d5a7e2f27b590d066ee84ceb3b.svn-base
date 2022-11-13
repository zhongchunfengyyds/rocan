<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<!-- 
  - Author(s): ASUS
  - Date: 2018-12-15 15:11:24
  - Description:
-->
<head>
<title>
	<p id="titl"></p>
</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
      <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    <style type="text/css">
    	.mini-textarea .mini-textbox-border {
    		width: 405px!important;
    		height: 113px;
    	}
    	.mini-textbox{
    		width:412px!important;
    	}
    	body .mini-textarea {
    		height: 115px;
		}
		.mini-textarea .mini-textbox-input{
			height:100%;
		}
    </style>
</head>
<body>
<input name="pageType" class="nui-hidden"/>
        <div id="form1" style="padding-top:5px;">
            <!-- hidden域 -->
              <input class="nui-hidden" name="weldingapply.uuid"/>
	<table border="0" style="width:100%;">
    <tr id="cancl" >
        <td class="form_label">
                    取消原因:
                    </td>
                    <td>
                        <input class="nui-textarea" name="weldingapply.cancelreason"/>
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
            
                var form = new nui.Form("#form1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.weldingmanagement.weldingapplybiz.updateWeldingApplyCancelReason.biz.ext";
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

                var data = form.getData(false,true);
               	
               var json=nui.encode(data);
				 
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
                        if (infos.pageType == "cancel") {
                         var json = infos.record;
                            var form = new nui.Form("#form1");//将普通form转为nui的form
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