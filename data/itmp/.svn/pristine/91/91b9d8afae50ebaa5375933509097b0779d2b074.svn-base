<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

 	<%
		String flag = request.getParameter("flag");//1、报备 2、送检
		String entity =  request.getParameter("entityType");//业务表实体
		String title = "";
		if(flag.equals("2")){
			 title = "设备仪器送检";
			}else if(flag.equals("1")){
				title = "设备仪器报备";	
			}else{
				title = "入库";
			}
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
    	.col-sm-4{
    		width:auto!important;
    	}
    	.mini-listbox-view{
    		width:123px;
    	}
    </style>
 <body style="background-color:#f1f1f1;width:98%;height:95%;margin:0 auto;overflow: hidden;">
<div class="nui-panel" title="待选列表"  style="width:100%;height:50%"    
   buttons="collapse"  showToolbar="true" >
       <div property="toolbar">       
       	 <div id="recordFromList" class="nui-form" align="center" style="height:20%">
       		 <input class="nui-hidden" name="criteria/_entity" value="<%=entity %>">
       		 
   		    <input class="nui-hidden" name="criteria/_expr[7]/syzt" value="YBF">
                <input class="nui-hidden" name="criteria/_expr[7]/_op" value="<>">
                
                <input class="nui-hidden" id="sy" name="criteria/_expr[5]/syzt">
                <input class="nui-hidden" id="zyzts" name="criteria/_expr[5]/_op" value="<>">
                
                    
                <div class="row">
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>器具名称：</label>
                    <input class="nui-textbox" name="criteria/_expr[1]/qjmc"/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                </div>
            </div>
              <div class="col-sm-4 form-inline input-control input-width">
                <div>
                     <label>出厂编号：</label>
                    <input class="nui-textbox" name="criteria/_expr[2]/ccbh"/>
                    <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>规格型号：</label>
                    <input class="nui-textbox" name="criteria/_expr[3]/ggxh"/>
                    <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                </div>
            </div>
        </div>   
        <div class="row">
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>测量范围：</label>
                    <input class="nui-textbox" name="criteria/_expr[4]/clfw"/>
                    <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>有效期：</label>
                    <input class="nui-dictcombobox" name="" id="sbyxq"
                             dictTypeId="YXQ"url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=YXQ" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
					<!--<input class="nui-hidden" name="criteria/_expr[5]/_op" value="like"> -->
					<!--<input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all"> -->
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label>报备情况：</label>
                    <input class="nui-dictcombobox" name="criteria/_expr[6]/bbqk"
                            dictTypeId="BBQK" url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=BBQK" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
                    <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group text-right">
                    <a class="nui-button btn btn-default btn-xs" onclick="search()">
                查询
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
                重置
            </a>
            <input class="nui-hidden" name="criteria/_expr[8]/isdelete" value="0"/>
            <input class="nui-hidden" name="criteria/_expr[8]/_op" value="=">
            <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="end">
            
            <input class="nui-hidden" name="criteria/_expr[9]/jdyxqz" id="yxqstart"/>
            <input class="nui-hidden" name="criteria/_expr[9]/_op" value=">">
            
            <input class="nui-hidden" name="criteria/_expr[10]/jdyxqz" id="yxqend"/>
            <input class="nui-hidden" name="criteria/_expr[10]/_op" value="<=">
            
             <input class="nui-hidden" id="con_jdid" name="criteria/_expr[11]/jd" /> 
           <input class="nui-hidden" name="criteria/_expr[11]/_op" value="like"> 
           <input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="end">
                </div>
            </div>
        </div>  
            </div>
        </div>
       
            <div class="nui-fit">
                <div 
                        id="dxgrid"
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
                          <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                            <div field="qjmc" headerAlign="center" allowSort="true" >
					                            器具名称
					                        </div>
					                        <div field="ccbh" headerAlign="center" allowSort="true">
					                            出厂编号
					                        </div>
					                        <div field="sccj" headerAlign="center" allowSort="true" >
					                            生产厂家
					                        </div>
					                        <div field="ggxh" headerAlign="center" allowSort="true" >
					                            规格型号
					                        </div>
					                        <div field="jdzq" headerAlign="center" allowSort="true" >
					                            检定周期
					                        </div>
					                        <div field="jdyxqz" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
					                            检定有效期至
					                        </div>
					                        <div field="bbqk" headerAlign="center" allowSort="true" renderer="bbqkRenderer">
					                            报备情况
					                        </div>
					                        <div field="syzt" headerAlign="center" allowSort="true" renderer="syztRenderer">
					                            使用状态
					                        </div>
					                        <div field="fzr" headerAlign="center" allowSort="true" >
					                            负责人
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
                             <a class="nui-button  btn btn-default" onclick="add()">
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
	            <a class="nui-button btn btn-default" onclick="onOk()"  id="btnSubmit" style="display:inline-block;left: 80px;">保存</a> 
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
                        allowSortColumn="true"
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
            <div field="qjmc" headerAlign="center" allowSort="true" >
					                            器具名称
					                        </div>
					                        <div field="ccbh" headerAlign="center" allowSort="true" >
					                            出厂编号
					                        </div>
					                        <div field="sccj" headerAlign="center" allowSort="true" >
					                            生产厂家
					                        </div>
					                        <div field="ggxh" headerAlign="center" allowSort="true" >
					                            规格型号
					                        </div>
					                        <div field="jdzq" headerAlign="center" allowSort="true" >
					                            检定周期
					                        </div>
					                        <div field="jdyxqz" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
					                            检定有效期至
					                        </div>
					                        <div field="bbqk" headerAlign="center" allowSort="true" renderer="bbqkRenderer">
					                            报备情况
					                        </div>
					                        <div field="syzt" headerAlign="center" allowSort="true" renderer="syztRenderer">
					                            使用状态
					                        </div>
					                        <div field="fzr" headerAlign="center" allowSort="true" >
					                            负责人
					                        </div>
                    </div>
                </div>
            </div>
        </div>
            </body>
        <script type="text/javascript">
            nui.parse();
            var dxgrid = nui.get("dxgrid");
			var yxgrid = nui.get("yxgrid");
			var flag = '<%=flag%>';
		
			var syzt = "";
			if(flag==2){
				nui.get("sy").setValue("SJ");
				nui.get("zyzts").setValue("<>");
			}else if(flag==1){	
				nui.get("sy").setValue("SYZ");
				nui.get("zyzts").setValue("<>");
			}else{
				nui.get("sy").setValue("SJ");
				nui.get("zyzts").setValue("=");
			}
           	var jdid = getCookie('jdid');
            nui.get('con_jdid').setValue(jdid);
            search();
		//查询
		function search() {
							 //设置起始有效期和终止有效期
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
                                    var form = new nui.Form("#recordFromList");
                                    var json = form.getData(false,false);
                                    
                                    
                                    dxgrid.load(json);//grid查询
//                                     yxgrid.clearRows();
		
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
		
		//待选添加操作
		function add(){
			var rows = dxgrid.getSelecteds();
			dxgrid.removeRows(rows,true);
			if(rows.length>0){
			
				for(var i=0;i<rows.length;i++){
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
				search();
				 yxgrid.clearRows();
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
			delete data[0].orderindex;
			if(data.length>0){
				if(flag == 1){//报备
			 	  nui.confirm("确定报备吗？","系统提示",
	                function(action){
	                    if(action=="ok"){
	                        var json = nui.encode({tdxglsysyfacilityinfos:data});
	                        yxgrid.loading("正在报备中,请稍等...");
	                        $.ajax({
	                            url:"com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.bbTDxglSysyFacilityinfos.biz.ext",
	                            type:'POST',
	                            data:json,
	                            cache: false,
	                            contentType:'text/json',
	                            success:function(text){
	                                var returnJson = nui.decode(text);
	                                   yxgrid.unmask();
	                                if(returnJson.exception == null){
	                                    nui.alert("报备成功", "系统提示", function(action){
	                                    onCancel();
	                                        });
                                    }else{
                                        nui.alert("报备失败", "系统提示");
                                	}
                                },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
                        	});
                    	}
                    });
                    
				}else if(flag==2){//送检
					     nui.confirm("确定送检吗？","系统提示",
	                    function(action){
	                        if(action=="ok"){
	                            var json = nui.encode({tdxglsysyfacilityinfos:data});
	                            yxgrid.loading("正在送检中,请稍等...");
	                            $.ajax({
	                                url:"com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.sjTDxglSysyFacilityinfos.biz.ext",
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
	    		return nui.getDictText("SYZT",e.value);
	    	}
				    	
        </script>
        
        <style>
        .dxlb{position:relative;}
        .xuze{position:absolute;}
        </style>

</html>
