<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2018-12-15 16:49:25
- Description:
    --%>
    <head>
        <title>
           回收站
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body style="width:98%;height:95%;">
         <div id="form1"> 
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.programManagement.TCgnDgglSbtx">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="deldate">
   				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
   				 <input class="nui-hidden" name="criteria/_expr[2]/isdel" value="1"/>
                <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table id="table1" class="table" style="height:100%">
                    <tr> 
                        <td colspan="1">
                           <!--  <input class="nui-hidden" name="criteria/_expr[2]/isdel" value="1"/> -->
                        </td>
                    </tr>
                </table>
                </div>
           </div> 
                 <div class="nui-fit">
                <div id="datagrid1" dataField="TCgnDgglSbtx" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.outlineandplan.base.ProgramManagement.QueryTCgnDgglSbtx.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"  allowSortColumn="true"  sortMode="client">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uu_id
                        </div>
  
						  <div field="txname" headerAlign="center" allowSort="true" >
                           	到期提醒名称
                        </div>  
                        
                        <div field="fqr" headerAlign="center" allowSort="true" >
                      		      发起人
                        </div>
                        <div field="fqsj" headerAlign="center"  allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                          	  发起时间
                        </div>
                        <div field="zt" headerAlign="center"  allowSort="true" >
                       	         状态
                        </div>
                       
                        <div field="txr" headerAlign="center" allowSort="true" >
                  			   提醒人
                        </div>
                         <div field="txday" headerAlign="center" allowSort="true" >
         					 提醒天数
                        </div>
                        <div field="txdate" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                           	升版提醒时间
                        </div>
                        <div field="isdel" headerAlign="center" allowSort="true"   >
             				是否删除	
                        </div>
                        <div field="delperson" headerAlign="center" allowSort="true" >
                           	  删除人
                        </div>
                        <div field="deldate" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                         	    删除时间
                        </div>
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
				var formData = new nui.Form("#form1").getData(false,false);
            	grid.load(formData);
			
            
             function back(){
             
               var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({TCgnDgglSbtx:rows});
	                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.base.ProgramManagement.hfDeleteTCgnDgglSbtx.biz.ext",
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
                                    var json = nui.encode({TCgnDgglSbtx:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.base.ProgramManagement.hszDeleteTCgnDgglSbtx.biz.ext",
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
                                
                              /*  //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                      if(rows.length>1  || grid.isEditing()||rows.length==0){
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
                                    }
                                } */
                                
                                
                                //点击附件下载
                            </script>
                        </body>
                    </html>
