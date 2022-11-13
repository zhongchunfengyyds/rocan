<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2018-12-26 17:00:11
- Description:
    --%>
    <head>
        <title>
            	回收站列表
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
    </head>
    <body style="width:98%;height:95%;margin:0 auto;">
            <div id="form1"> 
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.groupplant.ConferenceActionMgt.ConferenceActionMgtSearch">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="scsj">
       			<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table id="table1" class="table" style="height:100%">
                    <tr>
         				
                        <td colspan="1">
                            <input class="nui-hidden" name="criteria/_expr[1]/isdelete" value="1"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                        </td>
                       
                    </tr>
                </table>
                </div>
           </div> 
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tqcjsglhyxdgls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.groupplant.ConferenceActionMgt.queryTQcjsglHyxdgls.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                     	allowSortColumn="true" sortMode="client"
                        onselectionchanged="selectionChanged"
                        >

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="ly" headerAlign="center" allowSort="true" >
                            来源
                        </div>
                        <div field="gkzxz" headerAlign="center" allowSort="true" width="130">
                            归口专项组/归口部门
                        </div>
                        <div field="hyxdnr" headerAlign="center" allowSort="true" width="120">
                            会议行动内容
                        </div>
                        <div field="zrr" headerAlign="center" allowSort="true" >
                            责任人
                        </div>
                        <div field="wcbz" headerAlign="center" allowSort="true" >
                            完成标准
                        </div>
                        <div field="wcqx" headerAlign="center" allowSort="true" >
                            完成期限
                        </div>
                        <div field="jzqk" headerAlign="center" allowSort="true" >
                            进展情况
                        </div>
                        <div field="dqzt" renderer="dqztRenderer" headerAlign="center" allowSort="true" >
                            当前状态
                        </div>
                        <div field="waswcyyjhxjh" headerAlign="center" allowSort="true" width="200">
                            未按期完成原因及后续计划
                        </div>
                        <div field="fj" renderer="setFile" headerAlign="center" allowSort="true" >
                            附件
                        </div>
                        <div field="scr" headerAlign="center" allowSort="true" >
                            删除人
                        </div>
                        <div field="scsj" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                            删除时间
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            回收站
                        </div>
                    </div>
                </div>
            </div>
            
          <div property="footer" align="center" style="margin-top:10px;">
            <a class="nui-button btn btn-default btn-xs" onclick="hf()">
              恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="remove()">
                彻底删除
            </a>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");

            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
			//恢复
			  function hf(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tqcjsglhyxdgls:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.groupplant.ConferenceActionMgt.hfdeleteTQcjsglHyxdgls.biz.ext",
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
			 //组织
            	function dqztRenderer(e){
		    		return nui.getDictText("DQZT",e.value);
		    	}
             //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tqcjsglhyxdgls:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.groupplant.ConferenceActionMgt.deleteTQcjsglHyxdgls.biz.ext",
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
                                function setFile(e){
						            var fileRealName = e.record.fileRealName;
						 			var filepath = e.record.filePath;
						 			var fileId = e.record.fildid;
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
