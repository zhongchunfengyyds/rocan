<%@page pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<%@include file="/common/skins/skin0/component.jsp" %>
<h:css href="/css/style1/style-custom.css"/>
<html>
<%--
- Author(s): chy
- Date: 2017-04-11 10:40:59
- Description:
    --%>
    <head>
    <!-- <script src="scripts/jquery.min.js"></script> -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
  	<script src="<%= request.getContextPath() %>/scripts/html5shiv.min.js"></script>
  	<script src="<%= request.getContextPath() %>/scripts/respond.min.js"></script>
	<![endif]-->
        <title>
            CgnEmail录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        

        <style type="text/css">
        		#id1_container{margin-top:-170px}
        		.nui-form-table td.{
        			border-collapse: collapse;
    				height: 20px;
        		}
        		.form_label {
   					background: #FFF;
				}
				.form-control {
    				width: 100%;
    				padding: 0px 0px;
   				}
        		/*日期控件*/
/*单日期控件开始*/
	.bs-docs-section{
		background-color:#fff;
	}
	.mini-buttonedit {
    	width: 100%;
    }
	.mini-buttonedit-icon:before{
    	content: "\f073";
    	background:#fff;
    }
	.mini-buttonedit-icon {
    	background: #fff !important; 
    	display: inline-block;
	    font: normal normal normal 14px/1 FontAwesome;
	    font-size: inherit;
	    text-rendering: auto;
	    -webkit-font-smoothing: antialiased;
		content: "\f073";
	}
	.mini-popup {
	    border: 1px solid #ddd;
	    padding: 4px;
	    border-radius: 4px;
	    background: #fff;
    	max-width: 290px;	    
	}
	.mini-calendar-header {
	    height: 25px;
	    text-align: center;
	    background: #fff;
	    border-bottom: solid 1px #a7abb0;
	}
	.mini-calendar-footer {
	    padding: 4px;
	    padding-bottom: 5px;
	    background: #fff;
	    border-top: solid 1px #c9c9c9;
	    text-align: center;
	}
	.mini-calendar-tadayButton, .mini-calendar-clearButton, .mini-calendar-okButton, .mini-calendar-cancelButton {
	    border-color: #004a86;
	    background: #004a86;
	    color: #fff;
	    display: inline-block;
	    font-size: 9pt;
	    font-family: "microsoft yahei" !important;
	    text-decoration: none;
	    padding: 4px;
	    padding-left: 0px;
	    padding-right: 0px;
	    width: 52px;
	    text-align: center;
	    outline: none;
	    cursor: pointer;
	    vertical-align: middle;
	}
	.calendar-date {
	    border: 1px solid #ddd;
	    padding: 4px;
	    border-radius: 4px;
	    background: #fff;
	}
	.daterangepicker .calendar th, .daterangepicker .calendar td {
	    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
	    white-space: nowrap;
	    text-align: center;
	    min-width: 32px;
	}
	.mini-calendar-date {
		font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif !important;
		font-size: 10pt !important;
	    white-space: nowrap;
	    text-align: center;
	    min-width: 32px;
	    /* border: solid 1px white; */
	}
	.mini-calendar-daysheader {
		font-weight:bold !important;
	}
	.daterangepicker td.active, .daterangepicker td.active:hover {
	    background-color: #004a86;
	    border-color: #004a86;
	    color: #fff;
	}
	.mini-calendar .mini-calendar-selected, .mini-calendar .mini-calendar-date:hover {
	    background-color: #004a86;
	    border-color: #004a86;
	    color: #fff;
	}
	.mini-calendar-tadayButton:hover, .mini-calendar-clearButton:hover, .mini-calendar-okButton:hover, .mini-calendar-cancelButton:hover {
		background-color:#666;
	}
	 .mini-timespinner {
		width: 110px !important;
	}
	.mini-calendar {
		width: 250px !important;
	    height: 220px;
	    border: 0px;
	}
	.mini-labelfield {
	    display: block;
	    width: 210px !important;;
	    margin-bottom: 5px;
	}
        </style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="cgnemail.mailid"/>
            <div class="panel panel-default">
  			<div class="panel-heading">邮件参数</div>
  				<div class="panel-body">
           			<table style="width:100%;height:100px;table-layout:fixed;" class="nui-form-table">
                		<tr>
                    		<td class="form_label" style="width: 80;">
                       			 邮件名称:
                    		</td>
                    		<td colspan="1">
                        		<input class="nui-textbox form-control"  id="cgnemail.emailname" name="cgnemail.emailname" required="required"  />
                    		</td>
                    		<td class="form_label" style="width: 80;">
                        		邮件标题:
                    		</td>
                    		<td colspan="1">
                        		<input class="nui-textbox form-control" name="cgnemail.emailtitle" required="required"/>
                    		</td>
                		</tr>
                		<tr>
                    		<td class="form_label" style="width: 80;">
                       	 		创建时间:
                    		</td>
                    		<td colspan="1">
                        		<input class="nui-datepicker " name="cgnemail.cteatetime"   />
                    		</td>
                    		<td class="form_label" style="width: 80;">
                        		邮件类型:
                    		</td>
                    		<td colspan="1">
                        		<input class="nui-textbox form-control" name="cgnemail.emailtype"/>
                    		</td>
                		</tr>
                	</table>
            	</div>
            </div>
            <input class="nui-hidden"  id="cgnemail.content" name="cgnemail.content"  required="required"/>
            <div class="panel panel-default">
  			<div class="panel-heading">邮件内容:</div>
  				<div class="panel-body">
  					<table style="width:100%;height:100px;table-layout:fixed;" class="nui-form-table">
  						<tr style="width: 100%;height:550px">
  							<td style="text-align:center;" colspan="3" >
  								<w:richtext id="id1"  width="100%" height="300"  name="cgnemail.content"  />
  							</td>
  						</tr>
  					</table>
  				</div>
  			</div>
            <!--<table style="width:100%;height:100px;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        邮件名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  id="cgnemail.emailname" name="cgnemail.emailname" required="required"  />
                    </td>
                    <td class="form_label">
                        邮件标题:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="cgnemail.emailtitle" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                       	 创建时间:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="cgnemail.cteatetime"   />
                    </td>
                    <td class="form_label">
                        邮件类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="cgnemail.emailtype"/>
                    </td>
                </tr>
                 <tr style="width: 100%;height:350px">
            		 	 	<td class="form_label">
		                        邮件内容:
		                    </td>
		                    <input class="nui-hidden"  id="cgnemail.content" name="cgnemail.content"  required="required"/>
                       	 	 <td style="text-align:center;" colspan="3" >
                    				<w:richtext id="id1"  width="100%" height="100"  name="cgnemail.content"  />
                    	     </td>
                    	</tr>
            </table>-->
            
            <div class="toolbar bg-info" style="paddin:0px; margin-bottom: 20px; background: #fff;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="btn btn-default" onclick="onOk()">
                                <span class="fa fa-save" style="color: #fff;"></span>保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="btn btn-default" onclick="onCancel()">
                                <span class="fa fa-close" style="color: #fff;"></span>取消
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
                form.validate();
                if(form.isValid()==false) return;
	            var flg=false;
                //保存
                var urlStr = "com.cgn.components.coframe.framework.cgnemailbiz.addCgnEmail.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.components.coframe.framework.cgnemailbiz.updateCgnEmail.biz.ext";
                }else{
	                //验证邮件名称是否重复
	                var emailName= nui.get("cgnemail.emailname").getValue();
	                var enamiDate= nui.encode({"emailname":emailName});
	                $.ajax({
	                    url:"<%=request.getContextPath()%>/com.cgn.components.coframe.framework.cgnemailbiz.queryCgnEmailByName.biz.ext",
	                    type:'POST',
	                    data:enamiDate,
	                    cache:false,
	                    async : false ,
	                    contentType:'text/json',
	                    success:function(text){
	                        var returnJson = nui.decode(text);
	                        	if(returnJson.result.length>0){
	                        		nui.alert("邮件名称重复！！！");
	                        		flg=true;
	                        	}
	                        }
	                });
                }
                
                if(flg)return;
                var content =  $id("id1").getValue();  
                if(!content){ 
                	nui.alert("邮件内容为空！！！");
                	return;
                }
                nui.get("cgnemail.content").setValue(content); 
                
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
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);

                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);

                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;

                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            $id("id1").setValue(json.cgnemail.content);
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
