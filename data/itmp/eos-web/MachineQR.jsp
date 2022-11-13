<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-12 13:45:01
- Description:
    --%>
    <head>
        <title>
         	  焊机查看详情
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <%
		 String machineid= request.getParameter("machineid"); //展示页面
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
            <!-- hidden域-->
            <div class="nui-hidden" name="machine.uuid">
            </div>
            <input class="nui-hidden" name="machine.uuid"/>
            <table style="width:95%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1">                        
                      <input id="jd" class="nui-textbox" style="width: 100%;height:100%" name="machine.jd"  readonly="readonly"  id="jd"   />
                    </td>
<!--                     <td class="form_label" colspan="2"> -->
<!--                      机组 --> 
<!--                     </td> -->
<!--                     <td colspan="1"> -->
<!--                         <input class="nui-combobox" style="width: 100%" name="machine.jz" required="true" requiredErrorText="机组不能为空"  -->
<!--                         dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id"/> -->
<!--                     </td> -->
                    
                </tr>
                <tr>
                    <td class="form_label">
                        设备编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%;height:100%;" name="machine.number" requiredErrorText="必填项不能为空" />
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%;height:100%;" name="machine.name" requiredErrorText="必填项不能为空"/>
                    </td>
                 </tr>
                <tr>   <td class="form_label">
                        设备型号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%;height:100%;" name="machine.equipmenttype" requiredErrorText="必填项不能为空"/>
                    </td>
               </tr>
                <tr>
                    <td class="form_label">
                        输入电压:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%;height:100%;" name="machine.input" requiredErrorText="必填项不能为空"/>
                    </td>
                   </tr>
                <tr>  <td class="form_label">
                        电流调节范围:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%;height:100%;" name="machine.currentrange" requiredErrorText="必填项不能为空"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        生产厂家:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width: 100%;height:100%;" name="machine.manufacturer" requiredErrorText="必填项不能为空"/>
                    </td>
                  </tr>
                   
                <tr> 
                 <td class="form_label">
                         检定有效期:
                    </td>
                    <td colspan="1">
                     <input class="nui-textbox" readonly="readonly" style="width: 100%;height:100%;" name="machine.verification" requiredErrorText="必填项不能为空"/>
                    </td>
                    </tr>
                <tr>
                    <td class="form_label">
                   状态:    
                    </td>
                    <td colspan="1">
                      <input class="nui-textbox"  id="stu" readonly="readonly" style="width:100%;height:100%" dictTypeId="HJGLZT" name="machine.state" />
                    </td>
                </tr>
               
                <tr>
                    <td class="form_label">
                        所在位置:
                    </td>
                    <td colspan="1" >
                        <input class="nui-textbox" readonly="readonly"  textField="text" valueField="id" id="szlocation" style="width: 100%;height:100%" name="machine.locations" />
                    </td>
                    <input class="nui-hidden" name="machine.createtime"/>
                </tr>
            </table>
        </div>
        <script type="text/javascript">
        nui.parse();
        setFormData();
    	
    	var datalz=[
    	{"id":"9#工具库","text":"9#工具库"},
    	{"id":"8#工具库","text":"8#工具库"},
    	{"id":"9AC","text":"9AC"},
    	{"id":"8AC","text":"8AC"},
    	{"id":"AF专用库","text":"AF专用库"},
    	{"id":"损坏库","text":"损坏库"},
    	{"id":"焊接工具库（二级库）","text":"焊接工具库（二级库）"}
    	];
//     	function onvalue1(e){
//     		if(e.value=="ZKZ"){
//     			document.getElementById("sss").innerHTML='<input class="nui-combobox" textField="text" valueField="id" id="szlocation" style="width: 100%;" name="machine.location" />';
//     			nui.parse();
//     			nui.get('szlocation').load(datalz);
//     		}else{
//         		document.getElementById("sss").innerHTML='<input class="nui-combobox" readonly="readonly" style="width: 100%;" name="machine.location" />';
//         		nui.parse();
//     		}
//     	}
    	
                //初始化二维码表格数据
                function setFormData(){
                	var form = new nui.Form("#dataform1");//将普通form转为nui的form
                    form.setChanged(false);
                    var json = nui.encode({id:'<%=machineid %>',type:"machine"});
                    $.ajax({
                        url:"com.cgn.itmp.weldingmanagement.welderbiz.QRwelder.biz.ext",
                        type:'POST',
                        data:json,
                        cache:false,
                        contentType:'text/json',
                        success:function(text){
                        	
//                         	if(text.data.state=='ZKZ'){
// //     							document.getElementById("sss").innerHTML='<input class="nui-combobox" textField="text" valueField="id" id="szlocation" style="width: 100%;" name="machine.location" />';
//     		        			nui.parse();
// //     		        			nui.get('szlocation').load(datalz);
//     						}
                                var form = new nui.Form("#dataform1");//将普通form转为nui的form
                                form.setData({machine:text.data});
                                nui.get("jd").setValue(text.data.JD);
                                form.setChanged(false);
                        }
                    });
					
                    
                }

             
                
              
                </script>
            </body>
        </html>
