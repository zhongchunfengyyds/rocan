<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
 	<%

    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dataTime = df.format(new Date());
    /* UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
 */
		String flag = request.getParameter("flag");//1、出借 2、归还
		String entity =  request.getParameter("entityType");//业务表实体
		String title = "";
		if(flag.equals("2")){
			 title = "归还";
			}else if(flag.equals("1")){
				title = "出借";
			}else if(flag.equals("3")){
				title = "送检";
			}else if(flag.equals("4")){
				title = "送修";
			}else if(flag.equals("5")){
				title = "报废";
			}
	%>
	
    <head>
        <title id="title">
           <%=title%>
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
    </head>
    <style>
    	.columnCls {
    		background-color:#aaa
    	}
    	.col-sm-4 {
			width: auto; 
		}
    </style>
 <body style="background-color:#f1f1f1;width:98%;height:95%;margin:0 auto;overflow: hidden;">
<div class="nui-panel" title="待选列表"  style="width:100%;height:50%"    
   buttons="collapse"  showToolbar="true" >
       <div property="toolbar">       
       	 <div id="recordFromList" class="nui-form" align="center" style="height:20%">
       	 <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
       		 <input class="nui-hidden" name="criteria/_entity" value="<%=entity %>">
       		 
       		  <input class="nui-hidden" name="criteria/_expr[7]/state" value="YBF">
                <input class="nui-hidden" name="criteria/_expr[7]/_op" value="<>">
                
                <input class="nui-hidden" id="sy" name="criteria/_expr[5]/state">
                <input class="nui-hidden" id="zyzts" name="criteria/_expr[5]/_op" value="<>">
                
   		  		<input class="nui-hidden" name="criteria/_expr[11]/isdel" value="0" /> 
				<input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
				<input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="all">
                
                    
                <div class="row">
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>设备编号</label>
                    <input class="nui-textbox" id="number" name="criteria/_expr[1]/number"/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                </div>
            </div>
              <div class="col-sm-4 form-inline input-control input-width">
                <div>
                     <label>设备名称</label>
                    <input class="nui-textbox" id="name" name="criteria/_expr[2]/name"/>
                    <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                
            </div>
            <div class="col-sm-4">
                <div class="form-group text-right">
                <a class="nui-button btn btn-default btn-xs" onclick="search()">
                查询
            	</a>
            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
               重置
            </a>
            <input class="nui-hidden" id="con_jdid" name="criteria/_expr[3]/jd" /> 
           <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like"> 
           <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end">
                </div>
            </div>
        </div>    
            </div>
        </div>
       
            <div class="nui-fit">
                <div 
                        id="dxgrid"
                        dataField="machines"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.machinebiz.queryMachinereturn.biz.ext" allowSortColumn="true"  allowCellSelect="true"
                         showPager="false"
                         showReloadButton="false"
                        multiSelect="true"
                        allowCellEdit= "true"
                        editNextOnEnterKey="true">  <!-- allowCellEdit="true" -->
                    <div property="columns">    
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                          <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            设备编号
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="equipmenttype" headerAlign="center" allowSort="true" >
                            设备型号
                        </div>
                        <div field="input" headerAlign="center" allowSort="true" >
                            输入电压
                        </div>
                        <div field="currentrange" headerAlign="center" allowSort="true" >
                            电流调节范围
                        </div>
                        <div field="manufacturer" headerAlign="center" allowSort="true" >
                            生产厂家
                        </div>
                        <div field="certificate" headerAlign="center" allowSort="true" >
                            生产合格证明书（请上传附件）
                        </div>
                        <div field="verification" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            检定有效期
                        </div>
                        <div field="state" headerAlign="center" allowSort="true" renderer="syztRenderer">
                            状态
                        </div>
                        <div field="location" headerAlign="center" allowSort="true" renderer="szwzRenderer">
                            所在位置
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
            </body>
          
        <body style="width:98%;height:100%;">
        
        <div class="nui-panel" title="已选列表"  style="width:100%;height:50%;"   buttons="collapse"  showToolbar="true" >
       		<div>       
	               			<table>
	               			 <tr id="jhryId">
	               			              <td colspan="1">
                             <a class="nui-button btn btn-default" onclick="add()">
                添加
            </a>
                        </td>
                        
                        	 <td colspan="1">                        
				 <a class="nui-button btn btn-default" onclick="onDel(1)"  style="display:inline-block;">删除</a> 
				 </td>
				  <td colspan="1">
	            <a class="nui-button btn btn-default" onclick="onDel(2)"  style="display:inline-block;right:20px;">清空</a> 
	            </td>
	            
	             <td colspan="1">
	            <a class="nui-button btn btn-default" onclick="onOk()"  id="btnSubmit" style="display:inline-block;left: 80px;">确认</a> 
	            </td>
	            <td colspan="1">
	            <a class="nui-button btn btn-default" onclick="onCancel()"  id="btnCancel" style="display:inline-block;left: 80px;">关闭</a> 
	            </td>
			</tr>
			</table>
      	 	</div>
       		<div style="width:100%;height:85%;overflow:hidden;"  class="dxlb">
            <div class="nui-fit">
                <div   id="yxgrid"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        allowCellSelect="true"
                        allowSortColumn="false"
                           allowCellEdit= "true"
                         showPager="false"
                        multiSelect="true"
                        editNextOnEnterKey="true">  <!--allowCellEdit="true"  -->
                    <div property="columns"> 
                     <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                          <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
            				         <div field="number" headerAlign="center" allowSort="true" >
                            设备编号
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="equipmenttype" headerAlign="center" allowSort="true" >
                            设备型号
                        </div>
                        <div field="input" headerAlign="center" allowSort="true" >
                            输入电压
                        </div>
                        <div field="currentrange" headerAlign="center" allowSort="true" >
                            电流调节范围
                        </div>
                        <div field="manufacturer" headerAlign="center" allowSort="true" >
                            生产厂家
                        </div>
                        <div field="certificate" headerAlign="center" allowSort="true">
                            设备合格证明书（上传附件）
                        </div>
                       
                	<!-- <div name="jyrq" field="borrowtime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                	借用日期
                	
                	<input id="addtime" property="editor" class="nui-datepicker sjsj" style="width: 100%;" timeFormat="HH:mm:ss" showTime="true" showOkButton="true" showClearButton="false"/>
                	</div>   -->
                        <div field="verification" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            检定有效期
                        </div>
                        <div field="state" headerAlign="center" allowSort="true" renderer="syztRenderer">
                            状态
                        </div>
                        <div name="location" field="location" headerAlign="center" allowSort="true" renderer="szwzRenderer">
                            所在位置
                            <input property="editor" required="true" class="nui-dictcombobox" dictTypeId="SZWZ" style="width: 100%;"/>
                        </div>
                         <div name="jydw" field="borrowunit"  headerAlign="center" allowSort="true" >
                	借用单位
                	
                		<input property="editor" required="true" onvalidation="hasIllegalChar(e,255,true,true)" class="nui-textbox" style="width: 100%;"/>
                	</div>  
                		<div name="jyr" field="borrowperson" headerAlign="center" allowSort="true" >
                	借用人
                	
                	<input property="editor" required="true" onvalidation="hasIllegalChar(e,255,true,true)" class="nui-textbox" style="width: 100%;"/>
                	</div>
                        <div name="ghdw" field="borrowunit"  headerAlign="center" allowSort="true" >
                	归还单位
                	</div>  
                		<div name="ghr" field="borrowperson" headerAlign="center" allowSort="true" >
                	归还人
<!--                 	<input property="editor" required="true" class="nui-textbox" style="width: 100%;"/> -->
                	</div>
                	
                    </div>
                </div>
            </div>
        </div>
            </body>
        <script type="text/javascript">
            nui.parse();
          /*   window.onload=function setValue() {
	            var t = yxgrid.getColumn("jyrq");
	            t.setValue(new Date());
	        } */
	        
	        

	        var jdid=getCookie('jdid');
	       	nui.get("con_jdid").setValue(jdid);
	        var formData = new nui.Form("#recordFromList").getData(false,false);
            var datatime='<%=dataTime %>';
           /*  alert(datatime) */
            var dxgrid = nui.get("dxgrid");
			var yxgrid = nui.get("yxgrid");
			var flag = '<%=flag%>';
			
			var syzt = "";
			yxgrid.updateColumn("location", {readOnly:true});
			if(flag==2){
				nui.get("sy").setValue("SYZ");
				nui.get("zyzts").setValue("=");
				yxgrid.updateColumn("location", {readOnly:false});
				yxgrid.hideColumn("jydw");
				yxgrid.hideColumn("jyr");
				
			}else if(flag==1){	
				nui.get("sy").setValue("ZKZ");
				nui.get("zyzts").setValue("=");
				
				yxgrid.hideColumn("ghdw");
				yxgrid.hideColumn("ghr");
				
			}else if(flag==3){	
				nui.get("sy").setValue("ZKZ");
				nui.get("zyzts").setValue("=");
				yxgrid.hideColumn("jydw");
				yxgrid.hideColumn("jyr");
				yxgrid.hideColumn("ghdw");
				yxgrid.hideColumn("ghr");
			}else if(flag==4){	
				nui.get("sy").setValue("ZKZ");
				nui.get("zyzts").setValue("=");
				yxgrid.hideColumn("jydw");
				yxgrid.hideColumn("jyr");
				yxgrid.hideColumn("ghdw");
				yxgrid.hideColumn("ghr");
			}else if(flag==5){	
				nui.get("sy").setValue("ZKZ");
				nui.get("zyzts").setValue("=");
				yxgrid.hideColumn("jydw");
				yxgrid.hideColumn("jyr");
				yxgrid.hideColumn("ghdw");
				yxgrid.hideColumn("ghr");
			}
			/* else{
				nui.get("sy").setValue("SJ");
				nui.get("zyzts").setValue("=");
			} */
           	var jdid = getCookie('jdid');
            nui.get('con_jdid').setValue(jdid);
            search();
		 
		function search() {
							 /* //设置起始有效期和终止有效期
                                var sbyxq = nui.get("sbyxq").getValue();

                                if(sbyxq != null && sbyxq != ''){
                                	
                            	   if(sbyxq == 'TMS'){//设备有效期为两个月时
                            	      nui.get("yxqstart").setValue(doGetTime(0));
	                                  nui.get("yxqend").setValue(doGetTime(2));
	                                }else if(sbyxq=='SMS'){//设备有效期为6个月时
	                                 nui.get("yxqstart").setValue(doGetTime(0));
	                                  nui.get("yxqend").setValue(doGetTime(6));
	                                }else if(sbyxq == 'YGQ'){//设备有效期已过期
	                                  nui.get("yxqstart").setValue("");
	                                  nui.get("yxqend").setValue(doGetTime(0));
	                                }
                                }else{
                              		 nui.get("yxqstart").setValue("");
	                                 nui.get("yxqend").setValue("");
                                } 
                                */
                                    
                                var  data={};
                                data.name=nui.get("name").value;
                                data.number=nui.get('number').value;
                                data.state=nui.get("sy").value;
                                data.ids=notinuuid();
                                data.jd=jdid;
                                    
                                    
                                    dxgrid.load(data);//grid查询
//                                     yxgrid.clearRows();
				
		}
		function notinuuid(){
			
			var data=nui.get("yxgrid").getData();
			var ids="";
			for(var i=0;i<data.length;i++){
				ids+=data[i].uuid;
				if(i==data.lenth-1){
					break;
				}
					ids+=",";
			}
			return ids;
		}
		
		//重置查询条件
		function reset(){
		    var form = new nui.Form("#recordFromList");//将普通form转为nui的form
		   
		    form.reset();
		   if(flag==2){
				nui.get("sy").setValue("SYZ");
				nui.get("zyzts").setValue("=");
			}else if(flag==1){	
				nui.get("sy").setValue("ZKZ");
				nui.get("zyzts").setValue("=");
			}else if(flag==3){	
				nui.get("sy").setValue("ZKZ");
				nui.get("zyzts").setValue("=");		
			}else if(flag==4){	
				nui.get("sy").setValue("ZKZ");
				nui.get("zyzts").setValue("=");	
			}else if(flag==5){	
				nui.get("sy").setValue("ZKZ");
				nui.get("zyzts").setValue("=");			
			}
			nui.get("con_jdid").setValue(jdid);
			
		}
		
		//enter键触发查询
		function onKeyEnter(e) {
		nui.get("con_jdid").setValue(jdid);
		    search();
		}
		
		//待选添加操作
		function add(){
			var rows = dxgrid.getSelecteds();
			dxgrid.removeRows(rows,true);
			if(rows.length>0){
				for(var i=0;i<rows.length;i++){
					if(flag==2){
						if(typeof(rows[i].locations)!="undefined"){
							rows[i].location=rows[i].locations
						}
					
					}
					 yxgrid.addRow(rows[i],yxgrid.data.length);
				}
				
				  
			 }
			}
		
		function onDel(type){
			if("1" == type){
				var rows = yxgrid.getSelecteds();
				for(var i=0;i<rows.length;i++){
					yxgrid.removeRow(rows[i],true);
					dxgrid.addRow(rows[i],i);
					dxgrid.addRowCls(rows[i],"columnCls");
					
				}
			}else if("2" == type){
				 yxgrid.clearRows();
				search();
			}
		}
		
	    //日期转换
        function timeRender(e){
        	return nui.formatDate(e.cellHtml,'yyyy-MM-dd HH:mm:ss');
        }                           
		                                
		//页面间传输json数据
		function setFormData(data){
		    //跨页面传递的数据对象，克隆后才可以安全使用
		    var infos = nui.clone(data);
		    type = infos.type;
		}
		
		 function onCloseClick(e) {
		    var obj = e.sender;
		    obj.setText("");
		    obj.setValue("");
		}
		
		//确定保存或更新
		function onOk() {
		    saveData();
		}
		
		//取消
		function onCancel() {
		    CloseWindow("cancel");
		}
		
		//关闭窗口
		function CloseWindow(action) {
		    if (window.CloseOwnerWindow)
		    return window.CloseOwnerWindow(action);
		    else window.close();
		}
		
		function saveData(){
		
			var data = yxgrid.data;
			var data1=[{"uuid":"null","number":"null","name":"null","equipmenttype":"null","input":"null"
	                    	,"currentrange":"null","manufacturer":"null","certificate":"null","verification":"null"
	                    	,"state":"null","unit":"null","operateperson":"null","operatetime":"null",'jd':"null"}];
			if(data.length>0){
				if(flag == 1){//出借
					for (var i = 0; i < data.length; i++) {
						if(typeof(data[i].borrowunit)=="undefined"){
							nui.alert("借用单位不能为空!");
							return;
						}else if(typeof(data[i].borrowperson)=="undefined"){
							nui.alert("借用人不能为空!");
							return;
						}
					}
			 	  nui.confirm("确定出借吗？","系统提示",
	                function(action){
	                    if(action=="ok"){
	                        var json = nui.encode({data:data,data1:data1,entity:"com.cgn.itmp.weldingmanagement.Machine.Machine",
	                        entity1:"com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord"});
	                          
	                        yxgrid.loading("正在出借中,请稍等...");
	                        $.ajax({
	                            url:"com.cgn.itmp.weldingmanagement.machinebiz.updateMachinesZt.biz.ext",
	                            type:'POST',
	                            data:json,
	                            cache: false,
	                            contentType:'text/json',
	                            success:function(text){
	                                var returnJson = nui.decode(text);
	                                   yxgrid.unmask();
	                                if(returnJson.exception == null){
	                                    nui.alert("出借成功", "系统提示", function(action){
	                                    onCancel();
	                                        });
                                    }else{
                                        nui.alert("出借失败", "系统提示");
                                	}
                                },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
                        	});
                    	}
                    });
                    
				}else if(flag==2){//归还
					     nui.confirm("确定归还吗？","系统提示",
	                    function(action){
	                        if(action=="ok"){
	                            var json = nui.encode({data:data,data1:data1,entity:"com.cgn.itmp.weldingmanagement.Machine.Machine",
	                        entity1:"com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord"});
	                            yxgrid.loading("正在归还中,请稍等...");
	                            $.ajax({
	                                url:"com.cgn.itmp.weldingmanagement.machinebiz.updateMachinesztToZkz.biz.ext",
	                                type:'POST',
	                                data:json,
	                                cache: false,
	                                contentType:'text/json',
	                                success:function(text){
	                                    var returnJson = nui.decode(text);
	                                       yxgrid.unmask();
	                                    if(returnJson.exception == null){
	                                        nui.alert("归还成功", "系统提示", function(action){
	                                         onCancel();
	                                            });
	                                    }else{
	                                        nui.alert("归还失败", "系统提示");
	                                    }
	                                },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
	                            });
	                        }
	                    });
				}else if(flag==3){//送检
					     nui.confirm("确定送检吗？","系统提示",
	                    function(action){
	                        if(action=="ok"){
	                            var json = nui.encode({data:data,data1:data1,entity:"com.cgn.itmp.weldingmanagement.Machine.Machine",
	                        entity1:"com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord"});
	                            yxgrid.loading("正在送检中,请稍等...");
	                            $.ajax({
	                                url:"com.cgn.itmp.weldingmanagement.machinebiz.updateMachinesztToSj.biz.ext",
	                                type:'POST',
	                                data:json,
	                                cache: false,
	                                contentType:'text/json',
	                                success:function(text){
	                                    var returnJson = nui.decode(text);
	                                       yxgrid.unmask();
	                                    if(returnJson.exception == null){
	                                        nui.alert("送检成功", "系统提示", function(action){
	                                         onCancel();
	                                            });
	                                    }else{
	                                        nui.alert("送检失败", "系统提示");
	                                    }
	                                },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
	                            });
	                        }
	                    });
				}else if(flag==4){//送修
					     nui.confirm("确定送修吗？","系统提示",
	                    function(action){
	                        if(action=="ok"){
	                            var json = nui.encode({data:data,data1:data1,entity:"com.cgn.itmp.weldingmanagement.Machine.Machine",
	                        entity1:"com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord"});
	                            yxgrid.loading("正在送修中,请稍等...");
	                            $.ajax({
	                                url:"com.cgn.itmp.weldingmanagement.machinebiz.UpdateMachinesztToSxz.biz.ext",
	                                type:'POST',
	                                data:json,
	                                cache: false,
	                                contentType:'text/json',
	                                success:function(text){
	                                    var returnJson = nui.decode(text);
	                                       yxgrid.unmask();
	                                    if(returnJson.exception == null){
	                                        nui.alert("送修成功", "系统提示", function(action){
	                                         onCancel();
	                                            });
	                                    }else{
	                                        nui.alert("送修失败", "系统提示");
	                                    }
	                                },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
	                            });
	                        }
	                    });
				}else if(flag==5){//报废
					     nui.confirm("确定报废吗？","系统提示",
	                    function(action){
	                        if(action=="ok"){
	                            var json = nui.encode({data:data,data1:data1,entity:"com.cgn.itmp.weldingmanagement.Machine.Machine",
	                        entity1:"com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord"});
	                            yxgrid.loading("正在报废中,请稍等...");
	                            $.ajax({
	                                url:"com.cgn.itmp.weldingmanagement.machinebiz.UpdateMachinesztToYbf.biz.ext",
	                                type:'POST',
	                                data:json,
	                                cache: false,
	                                contentType:'text/json',
	                                success:function(text){
	                                    var returnJson = nui.decode(text);
	                                       yxgrid.unmask();
	                                    if(returnJson.exception == null){
	                                        nui.alert("报废成功", "系统提示", function(action){
	                                         onCancel();
	                                            });
	                                    }else{
	                                        nui.alert("报废失败", "系统提示");
	                                    }
	                                },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
	                            });
	                        }
	                    });
				}else{
					   nui.confirm("确定入库吗？","系统提示",
	                    function(action){
	                        if(action=="ok"){
	                            var json = nui.encode({tdxglsysyfacilityinfos:data});
	                            yxgrid.loading("正在入库中,请稍等...");
	                            $.ajax({
	                                url:"com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.RkTDxglSysyFacilityinfos.biz.ext",
	                                type:'POST',
	                                data:json,
	                                cache: false,
	                                contentType:'text/json',
	                                success:function(text){
	                                    var returnJson = nui.decode(text);
	                                       yxgrid.unmask();
	                                    if(returnJson.exception == null){
	                                        nui.alert("入库成功", "系统提示", function(action){
	                                         onCancel();
	                                            });
	                                    }else{
	                                        nui.alert("入库失败", "系统提示");
	                                    }
	                                },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
	                            });
	                        }
	                    });
				
				}
			}else{
				nui.alert("请选择数据","提示");
			}
		}
		
		
		  //报备情况公共代码转换
	    	function bbqkRenderer(e){
	    		return nui.getDictText("BBQK",e.value);
	    	}
	    	//使用状态公共代码转换
	    	function syztRenderer(e){			    
	    		if(e.row.syzt=="YBF"){
					e.rowStyle = 'color:gray';
				}
	    		return nui.getDictText("HJGLZT",e.value);
	    	}
	    	function szwzRenderer(e){
	    	
	    		return nui.getDictText("SZWZ",e.value);
	    	}
				    	
        </script>
        
        <style>
        .dxlb{position:relative;}
        .xuze{position:absolute;}
        </style>

</html>
