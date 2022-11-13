<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-14 10:51:27
- Description:
    --%>
    <head>
        <title>
            焊材详情
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        	<%
		 String materialid= request.getParameter("materialid"); //展示页面
		 %> 
		 <style type="text/css">
		 	*{
		 	margin:0;
		 	padding:0;
		 }
		 body td{
		 	font-size:28px!important;
		 	padding:20px;
		 }
		 input{
		 	height:100%;
		 }
		 .mini-required .mini-textbox-border, .mini-required .mini-buttonedit-border,.mini-buttonedit-border{
		 	height:100%;
		 }
		 .mini-buttonedit-input,.mini-textbox-input,.mini-textbox,.mini-textbox-border {
		 	height:40px!important;
		 	font-size:28px!important;
		 	border: none!important;
		 }
.mini-buttonedit-border {
    background: white;
    border: none!important;
    }
    .mini-textbox-border {
    border: none!important;
}
.mini-button-text {
    line-height: 26px;
    font-size: 24px;
    }
		 </style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <div class="nui-hidden" name="material.uuid">
            </div>
            <div class="nui-hidden" name="material.standard">
            </div>
            <input class="nui-hidden" name="material.uuid"/>
            <table style="width:95%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1">      
                    <input id="jd" class="nui-textbox" style="width: 100%" name="material.jd"  readonly="readonly"     />                  
                    </td>
                    </tr>
                <tr>
                    <td class="form_label">
                        名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.name" readonly="readonly" emptyText="请输入名称" requiredErrorText="名称不能为空"/>
                    </td>
                    
                </tr>
                <tr>
                
                <td class="form_label">
                        标准:
                    </td>
                    <td colspan="1">
                <input class="nui-textbox" dictTypeId="BZ"    name="material.standard" style="width:100%;height:100%" readonly="readonly" />
                 </td>
                  </tr>
                <tr>
                 <td class="form_label">
                        型号:
                    </td>
                    <td colspan="1">
                    <input class="nui-textbox" style="width: 100%" name="material.model" emptyText="请输入型号"  readonly="readonly" requiredErrorText="型号不能为空"/>
                      
                    </td>
                    </tr>
                <tr><td class="form_label">
                        标准牌号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%" name="material.brand" emptyText="请输入标准牌号" requiredErrorText="标准牌号不能为空"/>
                    </td>
                 </tr>
                <tr>
                    <td class="form_label"> 
                        规格:
                    </td>
                    <td colspan="1">
                    
                        <input class="nui-textbox" style="width: 100%" name="material.specifications" readonly="readonly" emptyText="请输入规格"  requiredErrorText="规格不能为空" />
                    </td>
                   </tr>
                <tr> <td class="form_label">
                        批号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.batchnumber" readonly="readonly" emptyText="请输入批号" requiredErrorText="批号不能为空"/>
                    </td>
                 </tr>
                <tr>
                    <td class="form_label">
                        包装方式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.packing" readonly="readonly" emptyText="请输入包装方式" requiredErrorText="包装方式不能为空"/>
                    </td>
                   </tr>
                <tr> <td class="form_label">
                        库存数量:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" vtype="int" readonly="readonly" name="material.inventory" emptyText="请输入库存数量" requiredErrorText="库存数量不能为空"/>
                    </td>
                 </tr>
                <tr>
                    <td class="form_label">
                        计量单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.measurement" readonly="readonly" emptyText="请输入计量单位" requiredErrorText="计量单位不能为空"/>
                    </td>
                   </tr>
                <tr> <td class="form_label">
                 最小库存提醒:      
                    </td>
                    <td colspan="1">
                    	<input class="nui-textbox" style="width: 100%" name="material.minimum" readonly="readonly" emptyText="请输入最小库存提醒" requiredErrorText="最小库存提醒不能为空"/>
                    </td>
                 </tr>
                <tr>
                    <td class="form_label">
                        归属单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" name="material.attribution" readonly="readonly" emptyText="请输入 归属单位" requiredErrorText="归属单位不能为空"/>
                    </td>
                    </tr>
                <tr><td class="form_label">
                         有效期至:
                    </td>
                    <td colspan="1">
                    	<input id="date1" style="width: 100%" class="nui-textbox" name="material.validuntil" emptyText="请选择有效期" readonly="readonly" requiredErrorText="必填项不能为空" dateFormat="yyyy"/>
                    </td>
                    
                         </tr>
                    <td class="form_label">
          备注:              
                    </td>
                    <td colspan="1">
                          <input class="nui-textbox" readonly="readonly" style="width: 100%" name="material.remarks"/>
                    </td>
                    	 <input class="nui-hidden" name="material.isbf" value="ZC"/>
                   		<input class="nui-hidden" name="material.createtime"/>
                </tr>
            </table>
            
        </div>
        <script type="text/javascript">
            nui.parse();
            setFormData();
          //初始化二维码表格数据
            function setFormData(){
            	
            	var form = new nui.Form("#dataform1");//将普通form转为nui的form
                form.setChanged(false);
                
            	var id='<%=materialid %>';
            	
                var json = nui.encode({id:id,type:"material"});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.welderbiz.QRwelder.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	
                    	var form = new nui.Form("#dataform1");//将普通form转为nui的form
                        form.setData({material:text.data});
                        nui.get("jd").setValue(text.data.jd);
                        form.setChanged(false);
                    }
                });
				
                
            }

                </script>
            </body>
        </html>
