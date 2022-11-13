<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-10-11 11:14:01
  - Description:
-->
<head>
<title>升版提醒详情页</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    
</head>
<body>
          <div id="dataform1">
          	 <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                      程序编码
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.cxbm"/>
                    </td>
                    <td class="form_label">
                      名称
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.name"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                 类型
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="upgrade_query.lx"/>
                    </td>
                    <td class="form_label">
                       简码
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.jm"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                       版本号
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.bbh"/>
                    </td>
                    <td class="form_label">
                           生效日期
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="upgrade_query.sxrq"/>
                    </td>
                </tr>
                
                
                 <tr>
                    <td class="form_label">
                       责任人
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.zrr"/>
                    </td>
                    <td class="form_label">
                         编写单位
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="upgrade_query.bxdw"/>
                    </td>
                </tr>
                
                 <tr>
                    <td class="form_label">
                       附件
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.fj"/>
                    </td>
                    
                    <td class="form_label">
                          下次升版时间
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="upgrade_query.xcsbsj"/>
                    </td>
                </tr>
                 <tr>
                    <td class="form_label">
                      基	地
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.jd"/>
                    </td>
                    <td class="form_label">
                          附件id
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.fjid"/>
                    </td>
                </tr>
                            <tr>
                    <td class="form_label">
                      添加时间
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.addtime"/>
                    </td>
                    <td class="form_label">
                       状态
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.status"/>
                    </td>
                </tr>
                
                                     <tr>
                    <td class="form_label">
                    升版提醒名称
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.txname"/>
                    </td>
                    <td class="form_label">
                        发起人
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.fqr"/>
                    </td>
                </tr>
                                                     <tr>
                    <td class="form_label">
                    发起时间
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="upgrade_query.fqsj"/>
                    </td>
                    <td class="form_label">
                       提醒天数
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.txday"/>
                    </td>
                </tr>
                                                               <tr>
                    <td class="form_label">
                     提醒人
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.txr"/>
                    </td>
                    <td class="form_label">
                         提醒状态
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="upgrade_query.zt"/>
                    </td>
                </tr>
                                                                       <tr>
                    <td class="form_label">
                        提醒时间
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="upgrade_query.txdate"/>
                    </td>
                </tr>
                
            </table>
          
          
          
          </div>      
	<script type="text/javascript">
    	nui.parse();
            	var id = getQueryString("id");
            	 queryAllById(id);
            	
    	     function getQueryString(name) {
				var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
				var r = window.location.search.substr(1).match(reg);
				if (r != null) return unescape(r[2]); return null;
			}  
			function  queryAllById(id){
			var data ={uuid : id};
			var json ={upgrade_query : data};
			 json = nui.encode(json);
					$.ajax({
								url : "com.cgn.itmp.outlineandplan.base.ProgramManagement.getUpgrade.biz.ext",
                                type:'POST',
                                data:json,
                                cache: false,
                                contentType:'text/json',
                                success:function(text){
	                            var form = new nui.Form("#dataform1");
	                            form.setData(text);
	                            form.setChanged(false);
                                }
                              	    });
			
			}   
			
		/* 	function setFormData(data){
			   var infos = nui.clone(data);
			   var id =  infos.uuid;
			 queryAllById(id);
			
			} */
    	
    	
    </script>
</body>
</html>