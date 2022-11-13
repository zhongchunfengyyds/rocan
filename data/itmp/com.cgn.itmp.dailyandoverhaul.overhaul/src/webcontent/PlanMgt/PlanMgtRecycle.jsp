<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-11 16:24:20
- Description:
    --%>
    <head>
        <title>
           回收站
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
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.overhaul.PlanMgt.PlanMgtSearch">
                <!-- 排序字段 -->
                  <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="updtime">
       				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table id="table1" class="table" style="height:100%">
                    <tr> 
                        <td colspan="1">
                            <input class="nui-hidden" name="criteria/_expr[1]/isdelete" value="1"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                            <input class="nui-hidden" id="con_jdid"name="criteria/_expr[2]/jdid" />
                             <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> 
                             <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
                        </td>
                    </tr>
                </table>
                </div>
           </div> 
        
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxgldxgljhgls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.overhaul.PlanMgt.queryTDxglDxglJhgls.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
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
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="jdid" headerAlign="center" allowSort="true" visible="false">
                            基地
                        </div>
                        <div field="jzid" headerAlign="center" allowSort="true" visible="false">
                            机组
                        </div>
                        <div field="xh" headerAlign="center" allowSort="true" >
                            大修轮次
                        </div>
                        <div field="zzlx" renderer="zzlxRenderer" headerAlign="center" allowSort="true" >
                            类型
                        </div>
                        <div field="zzmc" headerAlign="center" allowSort="true" >
                            名称
                        </div>
                        <div field="bc" headerAlign="center" allowSort="true" >
                            版次
                        </div>
                        <div field="fj" renderer="setFile" headerAlign="center" allowSort="true" >
                            附件
                        </div>
                         <div field="adduser" headerAlign="center" allowSort="true"  >
                          上传者
                        </div>
                        <div field="addtime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                          上传日期
                        </div>
                        <div field="upduser" headerAlign="center" allowSort="true" >
                            删除人
                        </div>
                        <div field="updtime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                            删除时间
                        </div>
                        <div field="yjjsr" headerAlign="center" allowSort="true" visible="false">
                            收件人
                        </div>
                       
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                    </div>
                </div>
            </div>
            <div property="footer" align="center" style="margin-top:10px;">
            <a class="nui-button btn btn-default btn-xs" onclick="back()">
               恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" id="remove" onclick="remove()">
               彻底删除
            </a>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");

            var jdid = getCookie('jdid');
			nui.get('con_jdid').setValue(jdid);
			if (jdid != null && jdid != "") {
				var formData = new nui.Form("#form1").getData(false, false);
				grid.load(formData);
			}
			var role = '<%=userRoleCodeList %>';
            function setFormData(data) {
            	if(data.isJdgly){
					if (role.indexOf(",ITMP_CJGLY") <0) {
						 $("#remove").hide();
					 }
				}
            }
          //类型
            function zzlxRenderer(e){
				return nui.getDictText("SEC_TYPE",e.value);
			}

        //恢复
                    function back(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tdxgldxgljhgls:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({//com.cgn.itmp.dailyandoverhaul.overhaul.PlanMgt.LogicBackDeleteTDxglDxglJhgls
                                        url:"com.cgn.itmp.dailyandoverhaul.overhaul.PlanMgt.LogicBackDeleteTDxglDxglJhgls.biz.ext",
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
           
                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tdxgldxgljhgls:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.overhaul.PlanMgt.deleteTDxglDxglJhgls.biz.ext",
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
						 			var fileId = e.record.fileId;
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
