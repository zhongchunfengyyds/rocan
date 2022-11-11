<%@ page import="com.cgn.itmp.basecommon.StringUtil" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

 	<%
		String planFlag = request.getParameter("planFlag");//计划标识 1、计划完成 2、计划取消
		String modelFlag = request.getParameter("modelFlag");//模块标识
		String entity =  request.getParameter("entity");//业务表实体
		String middleEntity =  request.getParameter("middleEntity");//中间表实体
		String type =  request.getParameter("type");//中间表实体
		String title = "计划取消";
		if(planFlag.equals("1")){
		 title = "计划完成";
		}
		String processName =  request.getParameter("processName")+"_"+title;//流程名称
		String processDef  = request.getParameter("processDef");//流程定义名称
		//判断是否在流程状态
		String fieldName  = request.getParameter("fieldName");//流程状态：字段名
		String reason  = request.getParameter("reason");//流程状态：提示信息字段
		String relFieldName  = request.getParameter("relFieldName");//流程状态：中间表关联字段
		String tsName  = request.getParameter("tsName");//流程状态：提示字段
		
		
		IUserObject cu = CommonUtil.getUserObject();
		String userid = cu.getUserId();
		String username = cu.getUserRealName();
	%>
	
<%--
- Author(s): Sun
- Date: 2019-01-21 11:23:22
- Description:
    --%>
    <head>
        <title id="title">
           <%=title %>
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>

    </head>
    <style>
    	.columnCls {
    		background-color:#aaa
    	}
    	
    	 #datagrid2 .mini-grid-cell:nth-child(2){width:26px;}
    	
    </style>
 <body style="background-color:#f1f1f1;width:98%;height:95%;margin:0 auto;overflow: hidden;">
<!--         <div class="nui-panel" title="查询" style="width:100%;height:30%;" showToolbar="false" showFooter="true"> -->
<!--         </div> -->
<div class="nui-panel" title="待选列表"  style="width:100%;height:50%"    
   buttons="collapse"  showToolbar="true" >
       <div property="toolbar">       
       	 <div id="recordFromList" class="nui-form" align="center" style="height:20%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="<%=entity %>">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
                 <input class="nui-hidden" name="criteria/_orderby[2]/_property" value="datetime">
                <input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="desc">
                <!-- 非空过滤 -->
                 <input class="nui-hidden"  id="lcCon"/> 
<!--                  <input class="nui-hidden" name="criteria/_expr[4]/_op" value="notnull">  -->
                       <input class="nui-hidden" name="criteria/_expr[4]/isdelete" value="0"/>
                     <input class="nui-hidden" name="criteria/_expr[4]/_op" value="=">
                <table id="table1" class="table" style="height:100%">
                    <tr>
                    	<td class="form_label">
                            轮次:
                        </td>
                        <td colspan="1">
                            <input id="combo1" class="nui-combobox" style="width:50px;" valueField="id" 
						    required="true" allowInput="true" 
						    textField="text"  pinyinField="tag">
                        </td>
                        <td class="form_label">
                            状态:
                        </td>
                        <td colspan="1">
                            <div id="combobox2" class="nui-combobox"   popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >    <!-- style="width:100px;" -->    
							     <div property="columns">
							         <div header="状态" field="name"></div>
							     </div>
							</div>
                        </td>
                        <td class="form_label">
                            项号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/itemno"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                        </td>
                        <td class="form_label">
                            检查方法:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/method" />
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                        </td>
                        <td class="form_label">
                            维护项目:
                        </td>
                        <td colspan="1">
                        	<%
                                int mode = Integer.valueOf(StringUtil.isEmpty(modelFlag) ? "0" : modelFlag);
                                System.out.print("**************"+mode);
                                if( mode <=8){  //如果是专用检查计划的模块
                            %>
	                            <input class="nui-textbox" name="criteria/_expr[3]/detailed"/>
	                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <%
                                }else if( mode >= 13 && mode <= 24){
                            %>
                            	<input class="nui-textbox" name="criteria/_expr[3]/tasklist"/>
                            	<input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <%
                                }else{
                            %>
                            	<input class="nui-textbox" name="criteria/_expr[3]/rwqd"/>
                            	<input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            
                            <%} 
                            %>
                        </td>
                        <td colspan="1" style="display: none">
                            <input class="nui-textbox" name="criteria/_expr[5]/protype"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                            <%
                                if( mode >= 25 && mode <= 28){  //如果是专用检查计划的模块
                            %>
                            <input id='baseid' class="nui-textbox" name="criteria/_expr[6]/jd"/>
					        <input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
					        <input id='crewid' class="nui-textbox" name="criteria/_expr[7]/jz"/>
					        <input class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
                            <%
                                }else{
                            %>
                            <input id='baseid' class="nui-textbox" name="criteria/_expr[6]/base"/>
                            <input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
                            <input id='crewid' class="nui-textbox" name="criteria/_expr[7]/crew"/>
                            <input class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
                            <%
                                }
                            %>
                        </td>
                        <td colspan="1">
                            <a class="nui-button" onclick="search()">
                查询
            </a>
                        </td>
                         <td colspan="1">
                             <a class="nui-button" onclick="reset()">
                重置
            </a>
                        </td>
                    </tr>
                    <tr>
                    	<td class="form_label" colspan="2" id="bjbw" style="display: none">
                           被检部位:
                        </td>
                        <td colspan="2">
                            <input id="detectedsite" style="display: none" class="nui-textbox" name="criteria/_expr[10]/detectedsite" />
                            <input class="nui-hidden" name="criteria/_expr[10]/_op" value="like">
                            <input id="jcbw" style="display: none" class="nui-textbox" name="criteria/_expr[11]/jcbw" />
                            <input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
                        </td>
                        <td class="form_label" colspan="2" id="nrfw" style="display: none">
                            检查内容/检查范围:
                        </td>
                        <td colspan="5">
                            <input id="inspectionscope" style="display: none" class="nui-textbox" name="criteria/_expr[12]/inspectionscope" />
                            <input class="nui-hidden" name="criteria/_expr[12]/_op" value="like">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
       
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdgglentrys"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.basecommon.Common.queryDataByEntity.biz.ext" allowSortColumn="true"  allowCellSelect="true"
                         showPager="false"
                        multiSelect="true"
                        allowCellEdit= "true"
                        editNextOnEnterKey="true">  <!-- allowCellEdit="true" -->
                    <div property="columns">    
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                          <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                          <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                           <div field="processInstId" headerAlign="center" allowSort="true" visible="false">
                            processInstId
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
                             <a class="nui-button" onclick="add()">
                添加
            </a>
                        </td>
                        
                        	 <td colspan="1">                        
				 <a class="nui-button" onclick="onDel(1)"  style="display:inline-block;">删除</a> 
				 </td>
				  <td colspan="1">
	            <a class="nui-button" onclick="onDel(2)"  style="display:inline-block;right:20px;">清空</a> 
	            </td>
	            
				<td id="jh" class="form_label" style="width: 15%;padding-left: 5%;">校核人员</td>
<!-- 				 <td id="jhry" colspan="5"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<%--                         <input class="nui-hidden" id="fqry" value="<%=username %>" /> --%>
<!--                     </td> -->
                     <td colspan="5" id="jhrylabel">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                   		<input class="nui-hidden" id="fqry" value="<%=username %>" />
                   		
                    </td>
                    
<!-- 				<td colspan="2"> -->
<!-- 					<input  required="true" property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true" requiredErrorText="请输入校核人员" style="width:150px"  -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!-- 				</td> -->
				<td id="cs" class="form_label" style="width: 10%">抄送人员</td>
				<td id="csry" colspan="2" style="padding-right: 5%;">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list"  style="width:150px;" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
			
	             <td id="cg" colspan="1">
	            <a class="nui-button" onclick="onOk('')"  id="btnSave" style="display:inline-block;left: 80px;">保存至草稿</a> 
	            </td>
	             <td colspan="1">
	            <a class="nui-button" onclick="onOk('manualActivity')"  id="btnSubmit" style="display:inline-block;left: 80px;">提交</a> 
	            </td>
			</tr>
			</table>
      	 	</div>
       		<div style="width:100%;height:85%;overflow:hidden;"  class="dxlb">
            <div class="nui-fit">
                <div   id="datagrid2"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        allowCellSelect="true"
                        allowSortColumn="true"
                          oncellclick = "cellclick"
                           allowCellEdit= "true"
                         showPager="false"
                        multiSelect="true"
                        editNextOnEnterKey="true">  <!--allowCellEdit="true"  -->
                    <div property="columns"> 
                     <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                          <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                          <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                           <div field="processInstId" headerAlign="center" allowSort="true" visible="false">
                            processInstId
                        </div>
                    </div>
                </div>
            </div>
        </div>
       </div>
            </body>
        <script type="text/javascript">
            nui.parse();
            var firstlc = '';
            var grid = nui.get("datagrid1");
			var grid2 = nui.get("datagrid2");
			var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
			if (isadmin == 'true') { //如果是管理员
		        $('#jh').hide();
		         $('#jhrylabel').hide();
		        $('#cs').hide();
		        $('#csry').hide();
		        $('#cg').hide();
		    }
		    
		  	//审核人员设置
// 	     	nui.get('jhry').setAjaxType("POST");
// 	     	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
			 var dxlbColumn = grid.getColumns();//待选列表
              var yxlbColumn = grid2.getColumns();//已选列表
              
                        
			var planFlag = '<%=planFlag%>';
			var modelFlag = '<%=modelFlag%>';
			
			if(modelFlag == '1' || modelFlag == '2' ){
				$('#bjbw').show();
				$('#detectedsite').show();
			}else if(modelFlag == '17' || modelFlag == '23' ){
				$('#bjbw').show();
				$('#jcbw').show();
			}
			
			if(modelFlag == '1' || modelFlag == '2' || modelFlag == '3'|| modelFlag == '4'
				|| modelFlag == '7'|| modelFlag == '8'){
				$('#nrfw').show();
				$('#inspectionscope').show();
			}
			
			var zy = ['detectedsite','number','approachmode','method','program','tool','inspectplan'];
			var sy = ['medium','site','testprocedure','operatingpressure','designpressure','testpressure','firsttesttime','beforetesttime','nexttesttime'];
           // var formData = new nui.Form("#recordFromList").getData(false,false);
           // grid.load(formData);
           	var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
           var statusCombox = nui.get("combobox2");
			var statusValue = "";
			var lcurl = "com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases";
			if(jdid == "86"){//台山基地保留 CP/PP/SP/EP/DP五种
				   statusCombox.setData([{"id":"CP","name":"CP"},{"id":"PP","name":"PP"},{"id":"SP","name":"SP"},{"id":"EP","name":"EP"},{"id":"DP","name":"DP"}]);
					statusValue = "CP,PP,SP,EP,DP";
					lcurl = "com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase";
			}else{//其他基地保留P/S
				   statusCombox.setData([{"id":"P","name":"P"},{"id":"S","name":"S"}]);
				   statusValue = "P,S";
			}
// 			statusCombox.load(lcurl);
			//大修轮次设值
			var countrys = [];
			for(var i =1;i<=60;i++){
				countrys.push({id:'C'+i,text:'C'+i,tag:'C'+i});
			}
			//日常轮次设值
			var rccountrys = [];
			for(var i =1991;i<=2089;i++){
				rccountrys.push({id:i,text:i,tag:i});
			}
			
			var typeFlag = 1;//日常与大修标识，1为大修，2为大纲日常3、专用检查计划日常
			if(modelFlag == '2' || modelFlag == '4' || modelFlag == '6' || modelFlag == '8'){
				typeFlag =2;
			}else if( modelFlag == '10' || modelFlag == '12'
			|| modelFlag == '19' || modelFlag == '20'  || modelFlag == '21' || modelFlag == '22' || modelFlag == '23' || modelFlag == '24' || modelFlag == '25' || modelFlag == '26'){
				typeFlag =3;
			}

			var combo = nui.get("combo1");
			if(typeFlag == 1){
					combo.setData(countrys);
			}else{
				combo.setData(rccountrys);
			}
		
            $(function(){
            	var ptype = '<%=type%>';
            	var dictTypeId = "FLOW_FIELD"+modelFlag;
    	     	$.ajax({
                    url:"com.cgn.itmp.basecommon.DictionaryOperation.getDictInfoByType.biz.ext",
                    type:'POST',
                    cache:false,
                    data : "{dictTypeId:'"+dictTypeId+"',pdictTypeId:'FLOW_FIELD'}",
                    contentType:'text/json',
                    success:function(text){
                        var resultInfo = text.resultInfo;
                       
                        for(var i = 0;i<resultInfo.length;i++){
                        	var dictId = resultInfo[i].DICTID;
                        	var dictName =  resultInfo[i].DICTNAME;
                        	
                        	if(dictName.indexOf('C') != -1){
                        	 	column.visible  = false; 
                        	 	continue;
                        	}else if(!isNaN(dictName)){
                        		column.visible  = false; 
                        	 	continue;
                        	}
                        	var fields = dictId.split("@");
                        	if('zy' == ptype){
                        		if(sy.indexOf(fields[0]) != -1)continue;
                        	}
                        	if('sy' == ptype){
                        		if(zy.indexOf(fields[0]) != -1)continue;
                        	}
                        	var type = fields[1];
                        	var column = {};
                        	column.field = fields[0];
                        		
                        	column.header  = dictName; 
                        	column.displayField  = fields[0];
                        	
                        	if(type == 'jd'){//基地转换
							column.visible  = false; 
                        	}else if(type == 'jz'){//机组转换
								column.visible  = false; 
                        	}else if(type == 'time'){//日期转换
                        		column.renderer=timeRender;
                        	}else if(type == 'dic'){//公共字典转换
                        		column.dicType = fields[2];
                        		column.renderer = "dicRender";	
                        	}
                        	dxlbColumn.push(column);
                        	yxlbColumn.push(column);
                        	  	 
                   
                       	
                        }
                       
                         dxlbColumn[9].width=65;
            	         dxlbColumn[10].width=40;
            	         dxlbColumn[14].width=40;
                      
                        grid.setColumns(dxlbColumn);
                        grid2.setColumns(yxlbColumn);
                        
                        
                        // dxlbColumn[9].width=40;
                        /* console.log(yxlbColumn[4].field);  */
                     },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});
						 }
	          });
            });
		
	  //机组转换
        function jzRender(e){
             var val = "";
 	    	 nui.ajax({
                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznameByid.biz.ext",
                type: 'POST',
                async: false,
                data:"{jzid:'" + e.value + "'}",
                success: function (text) {
                	val =  text.jzname;
                }
            });						
			return val;
        }
            
                // 公共字典转换
            function dicRender(e){
             return nui.getDictText(e.column.dicType,e.value);
            }
            
		//查询
		function search() {
			nui.get('baseid').setValue(jdid);
			nui.get('crewid').setValue(jzid);
// 			for(var i = 1;i <=60;i++){
// 				var colName = "C"+i;
// 				grid.showColumn(colName);
// 				grid2.showColumn(colName);
// 			}
			var combo1 = nui.get("combo1").getValue();
			if(combo1 != ''){
			  if('' == firstlc || firstlc != combo1){
					grid2.clearRows();
			  }
			      grid.setColumns(dxlbColumn.slice());
                        grid2.setColumns(yxlbColumn.slice());
// 				var columns = gridColumn.slice();
				
				 var dxlbColumns = grid.getColumns();//待选列表
                var yxlbColumns = grid2.getColumns();//已选列表
                    
		   		var column = {};
            	column.header  = combo1; 
            
            	
            	/* alert(column.header); */
            	if(typeFlag == 1){
					column.field = combo1.toLowerCase();
					column.displayField  = combo1.toLowerCase();
					column.width = 40;
				}else if(typeFlag == 2){
				column.field = "n"+combo1;
            	column.displayField  = "n"+combo1;
            	column.width = 40;
				}else{
				column.field = "c"+combo1;
            	column.displayField  = "c"+combo1;
            	column.width = 40;
				}
						
				var index = 8;
				var lc =combo1;
				
				dxlbColumns.push(column);
				yxlbColumns.push(column);
				
				grid.setColumns(dxlbColumns);
				if(planFlag == '1'){//计划完成
				}else if(planFlag == '2'){//计划取消
					if (isNaN(lc)){
						lc = lc.substr(1,lc.length);
					}
					
					for(var i=parseInt(lc)+1;i<=parseInt(lc)+9;i++){
// 						grid2.showColumn("C"+i);
						column = {};
						column.header  = i; 
						/* alert(i); */
						if(typeFlag == 1){
						column.header  = "C"+i; 
						column.width = 40;
						}
						if(typeFlag == 2){
						column.field = "n"+i;
		            	column.displayField  = "n"+i;
		            	column.width = 40;
						}else{
						column.field = "c"+i;
		            	column.displayField  = "c"+i;
		            	column.width = 60;
		            	column.align = 'center';
						}
						
						/* alert(JSON.stringify(column)); */ 
						yxlbColumns.push(column);
					
					}
				}
				
				 //修改原因
                 var xgyycolumn = {};
                 xgyycolumn.field = "xgyy";
                 xgyycolumn.header  = "修改原因"; 
                   xgyycolumn.name = "xgyy";
//                 xgyycolumn.displayField  = "xgyy";
                xgyycolumn.required=true;
                var editor = {};
                editor.cls="nui-textarea";
                editor.type="textarea";
                editor.style="width: 100%;";
                xgyycolumn.editor=editor;
                 //轮次
                 var lccolumn = {};
                 lccolumn.field = "lc";
                 lccolumn.header  = "轮次"; 
                lccolumn.displayField  = "lc";
                lccolumn.width = 40;
                lccolumn.align = 'center';
                yxlbColumns.push(lccolumn);
                yxlbColumns.push(xgyycolumn);
                grid2.setColumns(yxlbColumns);
                     
// 				nui.get('lcCon').setName("criteria/_expr[4]/"+combo1);
				var form = new nui.Form("#recordFromList");
				var statusComboxValue = nui.get("combobox2").getValue();
				var lcValues = [];
				var queryJ = "";
				if(statusComboxValue != null && statusComboxValue != ''){
					lcValues = statusComboxValue.split(",");
				}else{//默认查全部状态数据
				lcValues = statusValue.split(",");
				
				}
				
				for(var i = 0;i < lcValues.length;i++){
						if(i>0)queryJ+=",";
						var lcValue = lcValues[i];
						if(typeFlag == 1){//大修
								if(lcValue == 'P'){
									queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
									queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+',"';
									index++;
									queryJ+=",";
									queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
									queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+'"';
									index++;
								}else if(lcValue == 'S'){
									queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
									queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+',"';
									index++;
									queryJ+=",";
									
									queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
									queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":",'+lcValue+',"';
									index++;
									queryJ+=",";
									
									queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
									queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+'"';
									index++;
								}else{
									queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
									queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+'"';
									index++;
								}
							
						}else if(typeFlag == 2){//大纲日常
								if(lcValue == 'P'){
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+',"';
								index++;
								queryJ+=",";
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+'"';
								index++;
							}else if(lcValue == 'S'){
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+',"';
								index++;
								queryJ+=",";
								
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":",'+lcValue+',"';
								index++;
								queryJ+=",";
								
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+'"';
								index++;
							}else{
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+'"';
								index++;
							}
						}if(typeFlag == 3){//专用检查计划日常
							if(lcValue == 'P'){
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/c'+ combo1 +  '":"'+lcValue+',"';
								index++;
								queryJ+=",";
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/c'+ combo1 +  '":"'+lcValue+'"';
								index++;
							}else if(lcValue == 'S'){
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/c'+ combo1 +  '":"'+lcValue+',"';
								index++;
								queryJ+=",";
								
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/c'+ combo1 +  '":",'+lcValue+',"';
								index++;
								queryJ+=",";
								
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/c'+ combo1 +  '":"'+lcValue+'"';
								index++;
							}else{
								queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
								queryJ += ',"criteria/_or[1]/_expr['+ index +']/c'+ combo1 +  '":"'+lcValue+'"';
								index++;
							}
						
						}
							
					}
					
			    var json = form.getData(false,false);
			    var jsonstr = nui.encode(json);
			    var str = jsonstr.substr(0,jsonstr.length-1);
			    if(queryJ != '')str += ","+queryJ;
			    str = nui.decode(str+"}");
			    grid.load(nui.decode(str));//grid查询
			    firstlc = combo1;
			}else{
				nui.alert("请先选择轮次","提示");
			}
			
			//var rows = grid2.data;
			//grid.removeRows(rows,true);
		}
		
		
		
		//重置查询条件
		function reset(){
		    var form = new nui.Form("#recordFromList");//将普通form转为nui的form
		    form.reset();
		}
		
		//enter键触发查询
		function onKeyEnter(e) {
		    search();
		}
		
		//判断状态是否有多个，多个提示【数据状态不符合规则】，并不允许添加
		function  checkStatus(rows){
			var result = false;
			var combo1copy;
			var combo1 = nui.get("combo1").getValue().toLowerCase();
			if(combo1.indexOf("c") == -1){
				combo1copy = combo1;
				combo1 = "n"+combo1;
			}
			for(var i=0;i<rows.length;i++){
					var lc = rows[i][combo1];
					if(lc == '' || lc == null || lc == "undefined"){
						lc = rows[i]["c"+combo1copy];
					}
					if(lc !='' && lc.split(',').length > 1){
						result = true;
						nui.alert('数据状态不符合规则，请重新选择','提示');
						break;
					}
			}
			return result;
		}
		//待选添加操作
		function add(){
			var rows = grid.getSelecteds();
			if(rows.length>0){
				 if(checkStatus(rows)){
				 	return;
				 }
				grid.removeRows(rows,true);
				var combo1 = nui.get("combo1").getValue().toLowerCase();
				var g2data =  grid2.data;
				var datas = new Array();
				if(grid2.data != null && g2data.length > 0){
					for(var i=0;i<g2data.length;i++){
						if(modelFlag <= 8){
							datas[i] = g2data[i].id;
						}else{
							datas[i] = g2data[i].uuid;
						}
					}
				}
				if(typeFlag == 2){
					combo1 = "n"+combo1;
				}else if(typeFlag == 3){
					combo1 = "c"+combo1;
				}
				for(var i=0;i<rows.length;i++){
					var flag = true;
					if(datas != null && datas.length > 0){
						var relid = '';
						if(modelFlag <= 8){
							relid = rows[i].id;
						}else{
							relid = rows[i].uuid;
						}
						if(datas.indexOf(relid) != -1){
							flag = false;
						}
					}
					var lc = rows[i][combo1];
					if(lc !='' && lc.split(',').length > 1){
						continue;
					}
					if(planFlag == '1'){//计划完成时，设置轮次的值
						if(lc == 'S' || lc == 'SP'){
							rows[i][combo1] = 'SF';
						}else if(lc == 'CP'){
							rows[i][combo1] = 'CF';
						}else if(lc == 'SP'){
							rows[i][combo1] = 'SF';
						}else if(lc == 'EP'){
							rows[i][combo1] = 'EF';
						}else if(lc == 'DP'){
							rows[i][combo1] = 'DF';
						}else{
							rows[i][combo1] = 'PF';
						}
					}else if(planFlag == '2'){//计划取消时，设置轮次的值
						if(lc == 'S' || lc == 'SP'){
							rows[i][combo1] = 'SC';
						}else if(lc == 'PP'){
							rows[i][combo1] = 'PC';
						}else if(lc == 'CP'){
							rows[i][combo1] = 'CC';
						}else if(lc == 'EP'){
							rows[i][combo1] = 'EC';
						}else if(lc == 'DP'){
							rows[i][combo1] = 'DC';
						}else{
							rows[i][combo1] = 'PC';
						}
					}
					rows[i]['lc'] = nui.get("combo1").getValue().toUpperCase();
					rows[i]['xgyy'] = " ";
					if(flag){
						grid2.addRow(rows[i],grid2.data.length);
					}
				}
			}
		
			if(planFlag == '1'){
				grid2.mergeColumns(["xgyy"]);//合并修改原因
			}
			
		}
		
		function onDel(type){
			if("1" == type){
				var rows = grid2.getSelecteds();
				for(var i=0;i<rows.length;i++){
					grid2.removeRow(rows[i],true);
					grid.addRow(rows[i],i);
					grid.addRowCls(rows[i],"columnCls");
					
				}
		// 		grid2.removeRows(rows,true);
		// 		grid.addRows(rows,0);
				
			}else if("2" == type){
				 search(); 
				 var rows = grid2.data;
				 grid2.removeRows(rows,true);
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
		function onOk(finishFirstActivityId) {
		    saveData(finishFirstActivityId);
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
		
		function saveData(finishFirstActivityId){
			var data = grid2.data;
			if(data.length>0){
				for(var k=0;k<data.length;k++){
					data[k].datetime = nui.formatDate (data[k].datetime , "yyyy-MM-dd HH:mm:ss" );
				}
			    var jsondata = {};
		    	jsondata.datas = data;
		    	jsondata.entityName = '<%=middleEntity%>';
		    	jsondata.modelFlag = '<%=modelFlag%>';
		    	jsondata.fieldName = '<%=fieldName %>';
		    	jsondata.reason = '<%=reason %>';
		    	jsondata.relFieldName = '<%=relFieldName %>';
		    	jsondata.tsName = '<%=tsName %>';
		    	jsondata = nui.encode(jsondata);
				$.ajax({
		                url:"com.cgn.itmp.basecommon.Common.getProcessStatus.biz.ext",
		                type:'POST',
		                data:jsondata,
		                cache:false,
		                contentType:'text/json',
		                success:function(datas){
		                	
		                	var returnJson = nui.decode(datas);
		                	if(returnJson.record != ''){
		                		nui.alert(returnJson.record,"提示");
		                	}else{
		                		var json = {};
						    for(var i = 0;i<data.length;i++){
						    	data[i].creator = nui.get('fqry').getValue();
						    }
						    
						    json.dataArray = data;
						    json.processInstName = "<%=processName%>";
						    json.processInstDesc =  "<%=processName%>";
						    json.processDefName = "<%=processDef%>";
						    json.entityType = "<%=middleEntity%>";
						    json.modelFlag = modelFlag;
						    json.isadmin = isadmin;
						    json.jhry = nui.get('jhry').getValue();
						    json.fqry = nui.get('fqry').getValue();
						    json.planFlag = planFlag;
						    json.finishFirstActivityId = finishFirstActivityId;
						    if(finishFirstActivityId !='' && json.jhry  == '' && !isadmin){
						    	nui.alert("请选择校核人员","提示");
						    	return;
						    }
					    	 nui.get("#btnSubmit").setEnabled(false);
					 		 nui.get("#btnSave").setEnabled(false);
						    json.ccry = nui.get('ccry').getValue();
						    
							var jsondatas = nui.encode(json);
							$.ajax({
						            url:"com.cgn.itmp.basecommon.Common.planComplate.biz.ext",
						            type:'POST',
						            data:jsondatas,
						            cache:false,
						            contentType:'text/json',
						            success:function(data){
						                var message = "已提交审核";
						                if(isadmin == 'true'){
						                	var message = "计划已更新";
						                }
						            if(finishFirstActivityId == ''){
						            	message = "保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！";
						            }
						            nui.alert(message,"成功",function(){
						            CloseWindow("cancel");
					            });
					           },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							  nui.get("#btnSubmit").setEnabled(true);
	            					nui.get("#btnSave").setEnabled(true);
							});
						 }
					        });
		                	}
		                },
                         error: function (jqXHR, textStatus, errorThrown) {
		                     nui.alert(jqXHR.responseText,'错误',function (action) {
		                     	 	nui.get("#btnSubmit").setEnabled(true);
	            					nui.get("#btnSave").setEnabled(true);
				        	});
               			 }
		            });
			}else{
				nui.alert("请选择数据","提示");
			}
		}
		
		//动态设置轮次可编辑
		var editor = new nui.ComboBox();
		editor.set({
			textField:'name',
			valueField:'id',
			dataField:'jsonObject',
			multiSelect:'true',
			 url:lcurl
		});
		
		
		function cellclick(e){
			
		if(planFlag == '1'){
			return;
		}
			var field = e.field;
			if(typeof(field) == 'undefined' || planFlag == '1' || field == 'xgyy'){
				return;
			}
		
			var header = e.column.header;
			if( ((header+'').toLowerCase().indexOf('c') != -1 || !isNaN(header))   && field != combo.getValue() && (e.record[field] == null || e.record[field] == '') ){//轮次字段时
				e.column.editor = editor;
			}else {
				//e.column.editor = "";
			}
		}

        </script>
        
        <style>
        .dxlb{position:relative;}
        .xuze{position:absolute;}
        </style>

</html>
