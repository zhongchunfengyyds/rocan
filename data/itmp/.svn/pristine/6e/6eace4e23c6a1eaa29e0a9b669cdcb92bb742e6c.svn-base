<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-07 13:46:43
- Description:
    --%>
    <head>
    
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        
    </head>
    <body style="width:98%;height:95%;">
         <div id="form1"> 
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.DefectNoticeManagement">
                <!-- 排序字段 -->
                   <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="updtime">
       				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table id="table1" class="table" style="height:100%">
                    <tr> 
         			<!-- 	<td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[0]/name" emptyText="名称查询"/>
                            <input class="nui-hidden" name="criteria/_expr[0]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[0]/_likeRule" value="end">
                        </td> -->
                        <td colspan="1">
                            <input class="nui-hidden" name="criteria/_expr[1]/isdelete" value="1"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                            <input class="nui-hidden" id="con_jdid"
									name="criteria/_expr[2]/jdid" /> <input class="nui-hidden"
									name="criteria/_expr[2]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="end">
                        </td>
                     <!--    <td>
                        	  <a class="nui-button" onclick="search()">
						                查询
						      </a>
                        </td>
                        <td>   
	                        <a class="nui-button" onclick="reset()">
								          重置
							</a>
                        </td> -->
                    </tr>
                </table>
                </div>
           </div> 
     
            <div class="nui-fit">
                <div id="datagrid1" dataField="tddxglqxgls" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.queryTdDxglQxgls.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="true" sortMode="client">
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
						   <div field="dxlc"  headerAlign="center"  allowSort="true">
                            大修轮次
                        </div>
                         <div field="jzstatu"  headerAlign="center" renderer="jzztRenderer" allowSort="true">
                            机组状态
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="gznr" headerAlign="center" allowSort="true" >
                            工作内容
                        </div>
                        <div field="qxtzdh" headerAlign="center" allowSort="true" >
                            缺陷通知单号
                        </div>
                        <div field="title" headerAlign="center" allowSort="true" >
                            标题
                        </div>
                        <div field="xh" headerAlign="center" allowSort="true" visible="false">
                            请求条件
                        </div>
                       
                         <div field="gnwz" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="tzdms" headerAlign="center" allowSort="true" >
                            通知单描述
                        </div>
                          <div field="tzdrq" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            通知单日期
                        </div>
                        <div field="statu" headerAlign="center" allowSort="true" renderer="getqxstatus">
                           状态
                        </div>
                        <div field="zrbm" headerAlign="center" allowSort="true">
                            责任部门
                        </div>
                        <div field="yhstatu" headerAlign="center" allowSort="true" visible="false">
                            用户状态
                        </div>
                      
                        <div field="upduser" headerAlign="center" allowSort="true" >
                            删除人
                        </div>
                        <div field="updtime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                            修改时间
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            删除标志
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div property="footer" align="center" style="margin-top:10px;">
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
			nui.get('con_jdid').setValue(jdid);
			if (jdid != null && jdid != "") {
				var formData = new nui.Form("#form1").getData(false, false);
				grid.load(formData);
			}
            	//机组状态
            function jzztRenderer(e){
				return nui.getDictText("NBJY_JZSTATU",e.value);
			}
			//缺陷状态
			function getqxstatus(e){
            	return nui.getDictText("QXSTATUS",e.value);
            }
             //恢复
                    function back(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tddxglqxgls:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({//com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.LogicBackDeleteTdDxglQxgls
                                        url:"com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.LogicBackDeleteTdDxglQxgls.biz.ext",
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
                                    var json = nui.encode({tddxglqxgls:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.deleteTdDxglQxgls.biz.ext",
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
                            </script>
                        </body>
                    </html>
