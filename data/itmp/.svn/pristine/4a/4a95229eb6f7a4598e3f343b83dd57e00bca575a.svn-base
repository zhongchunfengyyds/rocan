<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
	
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
            <div id="form1" >
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.TsdStandardLibrarySearch">
                <!-- 排序字段 -->
				  <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="deltime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">  
                <table id="table1" class="table" style="height:100%">
                   <tr>
                        <td colspan="1">
                            <input class="nui-hidden" name="criteria/_expr[1]/isdelete" value="1"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                            
                              <input class="nui-hidden" id="con_jdid" name="criteria/_expr[2]/jd" /> 
					           <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> 
					           <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
                        </td>
                      
                    </tr>
                </table>                
             </div>
       
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglsysytsdinfos"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.queryTDxglSysyTsdinfos.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        multiSelect="true"
                        allowSortColumn="true"
                        sortMode="client"
                        onselectionchanged="selectionChanged"
                        >

                    <div property="columns">  
	                    <div type="indexcolumn">
	                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="jzname" headerAlign="center" align="center" allowSort="true" >
                           	机组
                        </div>
                        <div field="gnwz" headerAlign="center" align="center" allowSort="true" >
                          	 功能位置
                        </div>
                        <div field="js" headerAlign="center" align="center" allowSort="true" >
                           	进水
                        </div>
                        <div field="pq" headerAlign="center" align="center" allowSort="true" >
                           	排气
                        </div>
                        <div field="fd" headerAlign="center" align="center" allowSort="true" >
                			封堵
                        </div>
                         <div field="fileRealName" renderer="setFileTP" headerAlign="center" align="center" allowSort="true" >
                          	 图片
                         </div>
                        <div field="fileRealName2" renderer="setFileTZ" headerAlign="center" align="center" allowSort="true" >
                          	 图纸
                         </div>
                         <div field="deluser" headerAlign="center" align="center" allowSort="true" >
                          	 删除人
                         </div>
                        <div field="deltime" headerAlign="center" align="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
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
	            var formData = new nui.Form("#form1").getData(false,false);
	            grid.load(formData);
            }

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tdxglsysytsdinfos:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.deleteTDxglSysyTsdinfos.biz.ext",
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
                                    var json = nui.encode({tdxglsysytsdinfos:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({  
                                        url:"com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.hfdeleteTDxglSysyTsdinfos.biz.ext",
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
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function search() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }
                               

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
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
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
                                    }
                                }
                                
                                //预览页面附件显示 
					           function setFileTP(e){
					           
					            var fileRealName = e.record.fileRealName;
					 			var filepath = e.record.filePath;
					 			var fileId = e.record.tp;
								if(fileRealName == null || fileRealName == 'null'){
									return "";
								}
					           	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
					           	return html;
					           }
					           //预览页面附件显示 
					           function setFileTZ(e){
					           
					            var fileRealName = e.record.fileRealName2;
					 			var filepath = e.record.filePath2;
					 			var fileId = e.record.tz;
								if(fileRealName == null || fileRealName == 'null'){
									return "";
								}
					           	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
					           	return html;
					           }
					           //点击附件下载
							    function load(fileId) {
							        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId=" + fileId;
							    }
    </script>
</body>
</html>