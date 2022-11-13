<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): ASUS
  - Date: 2018-12-14 11:08:40
  - Description:
-->
<head>
<title>回收站</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
</head>
<body style="width:98%;height:95%;margin:0 auto;">
      <div id="T_DXGL_SYSY_FACILITYINFO" >
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="tdxglsysyfacilityinfo/_entity" value="com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.EquipmentInstrumentLibrarySearch">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="tdxglsysyfacilityinfo/_orderby[1]/_property" value="deltime">
				 <input class="nui-hidden" name="tdxglsysyfacilityinfo/_orderby[1]/_sort" value="desc"> 
                <table id="table1" class="table" style="height:100%">
                     <tr> 
                        <td colspan="1">
                            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[1]/isdelete" value="1"/>
                            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[1]/_likeRule" value="all">
                            
                             <input class="nui-hidden" id="con_jdid" name="tdxglsysyfacilityinfo/_expr[2]/jd" /> 
					           <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[2]/_op" value="like"> 
					           <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[2]/_likeRule" value="end">
                        </td>
                    </tr>          
                </table>
     </div>
        
 
      
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglsysyfacilityinfos"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.queryTDxglSysyFacilityinfos.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        allowSortColumn="true"
                        sortMode="client"
                        onselectionchanged="selectionChanged"
                       >

                    <div property="columns">  
                        <div type="checkcolumn">
                        </div>
                        
                         <div field="qjmc" headerAlign="center" align="center" allowSort="true" >
                             	器具名称
                        </div>
                        <div field="ccbh" headerAlign="center" align="center" allowSort="true" >
                           	出厂编号
                        </div>
                        <div field="sccj" headerAlign="center" align="center" allowSort="true" >
                           	生产厂家
                        </div>
                        <div field="ggxh" headerAlign="center" align="center" allowSort="true" >
                           	规格型号
                        </div>
                        <div field="jdzq" headerAlign="center" align="center" allowSort="true" >
                           	检定周期
                        </div>
                        <div field="jdyxqz" headerAlign="center" align="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                			有效期
                        </div>
                        <div field="bbqk" headerAlign="center" align="center" allowSort="true" renderer="bbqkRenderer">
                                                    报备情况
                         </div>
                        <div field="syzt" headerAlign="center" align="center" allowSort="true" renderer="syztRenderer">
                                                    使用状态
                        </div>
                        <div field="fzr" headerAlign="center" align="center" allowSort="true" >
                                                    负责人
                        </div>
                        <div field="fileRealName" renderer="setFile" headerAlign="center" align="center" allowSort="true" >
                 			附件
                        </div>
                         <div field="deluser" headerAlign="center" align="center" allowSort="true" >
                                                    删除人
                        </div>
                        <div field="deltime" headerAlign="center" align="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                 			删除时间
                        </div>
                    
                    </div>
                </div>
            </div>
   <div property="footer" align="center" style="margin-top:10px;">
            <a class="nui-button btn btn-default btn-xs" onclick="back()">
             恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="remove()">
                彻底删除
            </a>
        </div>
        
    <script type="text/javascript">
    		 nui.parse();
            var grid = nui.get("datagrid1");
            var jdid=getCookie('jdid');
			nui.get('con_jdid').setValue(jdid);
           	if(jdid!=null && jdid!=""){
            	
	            var formData = new nui.Form("#T_DXGL_SYSY_FACILITYINFO").getData(false,false);
	            grid.load(formData);
            }

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tdxglsysyfacilityinfos:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.deleteTDxglSysyFacilityinfos.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                                grid.reload();
                                                nui.alert("删除成功", "系统提示", function(action){
                                                    });
                                                }else{
                                                    grid.unmask();
                                                    nui.alert("删除失败", "系统提示");
                                                }
                                            }
                                            });
                                        }
                                        });
                                    }else{
                                        nui.alert("请选中一条记录！");
                                    }
                                }
                                
                                //恢复
                    function back(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    for(var i=0;i<rows.length;i++){
			                    		delete rows[i].orderindex;
			                    	}
                                    var json = nui.encode({tdxglsysyfacilityinfos:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({  
                                        url:"com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.hfdeleteTDxglSysyFacilityinfos.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                                grid.reload();
                                                nui.alert("恢复成功", "系统提示", function(action){
                                                    });
                                                }else{
                                                    grid.unmask();
                                                    nui.alert("恢复失败", "系统提示");
                                                }
                                            }
                                            });
                                        }
                                        });
                                    }else{
                                        nui.alert("请选中一条记录！");
                                    }
                                } 

                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function search() {
                                    var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }
                               

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
                                    form.reset();
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    search();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                       
                                    }else{
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
			    	
			    	function setFile(e){
						            var fileRealName = e.record.fileRealName;
						 			var filepath = e.record.filePath;
						 			var fileId = e.record.fileId;
									if(fileRealName == null || fileRealName == 'null'){
										return "";
									}
						           	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
						           	return html;
					           }
					           //点击附件下载
					           	function load(fileId){
								  window.location.href="com.cgn.itmp.basecommon.fileDownload.flow?fileId="+fileId;
								}
                            </script>
</body>
</html>