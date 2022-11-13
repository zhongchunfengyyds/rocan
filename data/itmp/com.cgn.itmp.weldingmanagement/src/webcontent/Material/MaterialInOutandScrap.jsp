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
    
</head>
<body>
<input name="pageType" class="nui-hidden"/>
        <div id="T_DXGL_SYSY_FACILITYINFO" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="materials.uuid"/>
            <input class="nui-hidden" name="materials.name"/>
            <input class="nui-hidden" name="materials.standard"/>
            <input class="nui-hidden" name="materials.brand"/>
            <input class="nui-hidden" name="materials.specifications"/>
            <input class="nui-hidden" name="materials.batchnumber"/>
            <input class="nui-hidden" name="materials.packing"/>
            <input class="nui-hidden" id="inventory" name="materials.inventory"/>
            <input class="nui-hidden" name="materials.measurement"/>
            <input class="nui-hidden" name="materials.validuntil"/>
            <input class="nui-hidden" name="materials.attribution"/>
            <input class="nui-hidden" name="materials.minimum"/>
            <input class="nui-hidden" name="materials.remarks"/>
            <input class="nui-hidden" name="materials.isdel"/>
            <input class="nui-hidden" name="materials.remarks"/>
             <input class="nui-hidden" name="materials.JD"/>
              <input class="nui-hidden" name="materials.model"/>
              <input class="nui-hidden" name="materials.isbf"/>
              
	<table border="0" style="width:100%;">
	 <tr id="in">
        <td class="form_label">
                      入库数量:
                    </td>
                    <td>
                        <input class="nui-textarea" vtype="int" required="true" id="rksl"/>
                    </td>       
    </tr>
    <tr id="out" style="display:none">
        <td class="form_label">
                      退库数量:
                    </td>
                    <td>
                        <input class="nui-textarea" vtype="int" required="true" id="tksl"/>
                    </td>       
    </tr>
    <tr id="no" style="display:none">
        <td class="form_label">
                    报废原因:
                    </td>
                    <td>
                        <input class="nui-textarea" id="bfyy"/>
                    </td>       
    </tr>
    <!-- <tr style="display:none">
                    <td class="form_label">
                        报备情况:
                    </td>
                    <td>
                        <input id="bbqk" class="nui-dictcombobox" name="material.bbqk"
                        dictTypeId="BBQK"/>
                    </td>
                    <td class="form_label">
                        使用状态:
                    </td>
                    <td>
                        <input id="syzt" class="nui-dictcombobox" name="material.syzt"
                        dictTypeId="SYZT"/>
                    </td>
                </tr> -->
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
			var pagetype="";
var jdid=getCookie('jdid');

            function saveData(){
            if(pagetype=="no"){
            if(nui.get("bfyy").value==""){
            	nui.alert("请填写报废原因。");
            	return;
            }
            
            }
                var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                form.setChanged(false);
				var rksl=nui.get("rksl").getValue();
				var tksl=nui.get("tksl").getValue();
				var bfyy=nui.get("bfyy").getValue();
				var inventory =nui.get("inventory").getValue();//库存
                //保存
                var urlStr = "com.cgn.itmp.weldingmanagement.materialbiz.updateMaterialInOutScrap.biz.ext";
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

                var data1 = form.getData(false,true);
               	if(rksl!=""){
	               	 if(parseInt(rksl)<=0){
	                	nui.alert("请输入不小于0的数");
	                	return;
	              	  }
               		data1.materials.inventory +=parseInt(rksl);
               	}
               	if(tksl!=""){
               		if(parseInt(tksl)<=0){
	                	nui.alert("请输入不小于0的数");
	                	return;
	              	  }
               		if(data1.materials.inventory-parseInt(tksl)>=0){
                		data1.materials.inventory -=parseInt(tksl);
                	}else{
                	nui.alert("退库数量不能大于库存数量！")
                	return;
                	}
               	}
                if(bfyy!=""){
                	data1.materials.bfyy=bfyy;
                	data1.materials.isbf="YBF";
                }
               var json=nui.encode({materials:data1.materials,base:jdid});
              /*  var json = nui.encode({data:material,uuid:data1.materials.uuid,inventory:data1.materials.inventory
               ,rksl:rksl,tksl:tksl,bfyy:bfyy,entity:"com.cgn.itmp.weldingmanagement.Material.Material"}); */
				 
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
						
						//如果是点击入库类型页面
						
                        if (infos.pageType == "in") {
                      		
                      		
                            var json = infos.record;
                            
							/* json.material.bbqk="KB";
							json.material.syzt="YBF"; */
                            var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            
                           
                                              
                        }
						//如果是点击出库类型页面
                        if (infos.pageType == "out") {
                       		
                            var json = infos.record;
							/* json.material.bbqk="KB";
							json.material.syzt="YBF"; */
                            var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                             document.getElementById("in").style.display="none";
                              document.getElementById("out").style.display="";
                              document.getElementById("no").style.display="none";                  
                        }
                        //如果是点击报废类型页面
                        if (infos.pageType == "no") {
                 			
                       		pagetype="no";
                            var json = infos.record;
							/* json.material.bbqk="KB";
							json.material.syzt="YBF"; */
                            var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            document.getElementById("out").style.display="none";
                            document.getElementById("in").style.display="none";
                             document.getElementById("no").style.display="";                  
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