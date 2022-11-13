<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-10-25 15:16:12
  - Description:
-->
<head>
<title>回收站</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    
</head>
<body>
		         <div id="form1"> 
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNoticeEntity">
                <!-- 排序字段 -->
                   <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="scsj">
       				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table id="table1" class="table" style="height:100%">
                    <tr> 
                        <td colspan="1">
                            <input class="nui-hidden" name="criteria/_expr[1]/isdel" value="1"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                            <input class="nui-hidden" id="jdid"
									name="criteria/_expr[2]/jdid" /> <input class="nui-hidden"
									name="criteria/_expr[2]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="end">
                        </td>
                    </tr>
                </table>
                </div>
           </div> 
           
                <div 
                        id="datagrid1"
                        dataField="tinspectdefectnotices"
                        class="nui-datagrid"
                        style="width:100%;height:500px;"
                        url="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.tinspectdefectnoticebiz.queryTInspectDefectNotices.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        allowSortColumn="false">

                    <div property="columns">
                     <div type="checkcolumn">
                        </div>
                        <div type="indexcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="jdid" headerAlign="center" allowSort="true" visible="false">
                            基地id
                        </div>
                        <div field="jzid" headerAlign="center" allowSort="true" visible="false">
                            机组id
                        </div>
                        <div field="xh" headerAlign="center" allowSort="true" visible="false">
                          序号
                        </div>
                        
                        <div field="jylb" headerAlign="center" allowSort="true" renderer="applyRender" >
                            检验类别                 
                        
                        </div>
                        <div field="sbbm" headerAlign="center" allowSort="true" >
                            设备编码
                        </div>
                        <div field="gznr" headerAlign="center" allowSort="true" >
                            工作内容
                        </div>
                        <div field="gzfzr" headerAlign="center" allowSort="true" >
                            工作负责人
                        </div>
                        <div field="gzph" headerAlign="center" allowSort="true" >
                            工作票号
                        </div>
                        <div field="jyrq" headerAlign="center" allowSort="true"  dateFormat="yyyy-MM-dd HH:mm:ss" >
                            检验日期
                        </div>
                        <div field="tzsj" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                            通知时间
                        </div>
                        <div field="clqk" headerAlign="center" allowSort="true" >
                            处理情况
                        </div>
                        <div field="cljy" headerAlign="center" allowSort="true" >
                            处理建议
                        </div>
                        <div field="clfzbm" headerAlign="center" allowSort="true" >
                            处理负责部门
                        </div>
                        <div field="qxms" headerAlign="center" allowSort="true" >
                            缺陷描述
                        </div>
                        <div field="cljg" headerAlign="center" allowSort="true" >
                            处理结果
                        </div>
                        <div field="dqjz" headerAlign="center" allowSort="true" >
                            当前进展
                        </div>
                      	<div field="fujian" allowResize="false" width="120"
						renderer="setFile" headerAlign="center" allowSort="true">
                            附件					
                        </div>
                        <div field="bz" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="scr" headerAlign="center" allowSort="true" >
                            删除人
                        </div>
                        <div field="scsj" headerAlign="center" allowSort="true" >
                            删除时间
                        </div>
                        <div field="addtime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                            添加时间
                        </div>
                    </div>
                </div>
		  <div property="footer" align="center">
            <a class="nui-button" onclick="back()">
               恢复
            </a>
            <a class="nui-button" onclick="remove()">
                彻底删除
            </a>
        </div>


	<script type="text/javascript">
    	nui.parse();
            var grid = nui.get("datagrid1");

             var jdid = getCookie('jdid');
			nui.get('jdid').setValue(jdid);
			if (jdid != null && jdid != "") {
				var formData = new nui.Form("#form1").getData(false, false);
				grid.load(formData);
			}
    	 function back(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tinspectdefectnotices:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({//com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.LogicBackDeleteTdDxglQxgls
                                        url:"com.cgn.itmp.inspectcomponentmanage.conventionalislandand.tinspectdefectnoticebiz.backdeleteTInspectDefectNotice.biz.ext",
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
                                            },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});
						 }
                                            });
                                        }
                                        });
                                    }else{
                                        nui.alert("请选中一条记录！");
                                    }
                                }
                         		 //检验类别
                               function applyRender(e){
						              return  nui.getDictText("JYLB",e.value);
						        }    
						        //附件
					function setFile(e) {
						var fileRealName = e.record.fujian;
						var filepath = e.record.filepath;
						var fileId = e.record.fildid;
					
						if (fileRealName == null || fileRealName == 'null') {
							return "";
						}
						var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
						return html;
					}
					function load(fileId,fileRealName) {
					 var elemIF = document.createElement("iframe");
					 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
					 document.body.appendChild(elemIF);
					 elemIF.style.display = "none";
				}
				        function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tinspectdefectnotices:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.inspectcomponentmanage.conventionalislandand.tinspectdefectnoticebiz.deleteTInspectDefectNotices.biz.ext",
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
    </script>
</body>
</html>