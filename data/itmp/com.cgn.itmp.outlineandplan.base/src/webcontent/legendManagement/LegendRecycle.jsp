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
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
    </head>
    <body style="width:98%;height:95%;margin:0 auto;">
            <div id="form1"> 
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND_SEARCH">
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
                            
                           <input class="nui-hidden" id="con_jdid"  name="criteria/_expr[2]/jd" value=""/>
							<input class="nui-hidden" name="criteria/_expr[2]/_op" value="in">
							
							
							<input class="nui-hidden" id="con_jzid"  name="criteria/_expr[3]/jzid" value=""/>
							<input class="nui-hidden" name="criteria/_expr[3]/_op" value="in">
                        </td>
                    </tr>
                </table>
                </div>
           </div> 
                 <div class="nui-fit">
                <div id="datagrid1" dataField="tcgndgglcktlgls" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.outlineandplan.base.LegendManagement.queryTCgnDgglCktlgls.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="true"  sortMode="client">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                         <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="jd" headerAlign="center" allowSort="true" visible="false" >
                            基地
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            机组
                        </div>
                        <div field="cktlbh" headerAlign="center" allowSort="true" >
                            参考图例编号
                        </div>
                        <div field="cktlmc" headerAlign="center" allowSort="true" >
                            参考图例名称
                        </div>
                        <div field="fj" renderer="setFile" headerAlign="center" allowSort="true" >
                            附件
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false" >
                            是否删除
                        </div>
                        <div field="scr" headerAlign="center" allowSort="true" >
                           删除人
                        </div>
                        <div field="scsj" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                            删除时间
                        </div>
                    </div>
                </div>
            </div>
        <div property="footer" align="center">
            <a class="nui-button btn btn-default btn-xs" onclick="back()">
               <i class="fa fa-reply"></i>恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="remove()">
                <i class="fa fa-remove"></i>彻底删除
            </a>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
			var jd=getCookie('jdid');
			var jz=getCookie('jzid');
			nui.get('con_jdid').setValue(jd);
			nui.get('con_jzid').setValue(jz);
			if(jd!=null && jd!=""){
				var formData = new nui.Form("#form1").getData(false,false);
            	grid.load(formData);
			
			}
     

             function back(){
               var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tcgndgglcktlgls:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.base.LegendManagement.hfDeleteTCgnDgglCktlgls.biz.ext",
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
                                    var json = nui.encode({tcgndgglcktlgls:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.base.LegendManagement.deleteTCgnDgglCktlgls.biz.ext",
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
                                
           //附件超链接设置
          function setFile(e) {
				var fileRealName = e.record.fj;
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
                            </script>
                        </body>
                    </html>