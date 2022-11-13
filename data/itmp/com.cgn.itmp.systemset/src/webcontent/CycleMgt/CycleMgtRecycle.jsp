<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2018-12-26 19:12:53
- Description:
    --%>           
    <head>
    <!--     <title>
            查询：
        </title> -->
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body style="width:98%;height:85%;">
     <!--    <div class="nui-panel"  style="width:100%;height:15%;" showToolbar="false" showFooter="true"> -->
            <div id="form1">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.systemset.CycleMgt.CycleMgtSearch">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="jdid">
				 <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
				   <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="jzid">
				 <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc"> 
                <table id="table1" class="table" style="height:100%">
                </table>
                  <input class="nui-hidden"  name="criteria/_expr[1]/isdelete" value = "1"/>
				 <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
				 <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all"> 
                
            </div>
      <!--   </div> -->
      
        <div class="nui-panel"  style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table style="height:100%;">
               <!--      <tr>
                        <td style="width:100%;">
                        
                        
					    <a class="nui-button" iconCls="" onclick="back()">
                              恢复
                            </a>
					    
                             <a class="nui-button" iconCls="delete" onclick="remove()">
                              彻底删除
                            </a> 
                        </td>
                    </tr> -->
                </table>
            </div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglzqcontrolls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.systemset.CycleMgt.queryTDxglZqcontrolls.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="true"
                        sortMode="client">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                       <div field="jdname" headerAlign="center" allowSort="true" >
                            基地
                        </div>                             
                        <div field="jzname" headerAlign="center" allowSort="true" >
                            机组
                        </div>
                    <div field="cstart" headerAlign="center" allowSort="true" visible="false"  >
                           周期开始
                        </div>                                    
                        <div field="cend" headerAlign="center" allowSort="true" visible="false">
                            周期结束
                        </div>                         
                      <div field="cvalue" headerAlign="center" allowSort="true" >
                            大修周期
                        </div>
                            
                        <div field="richangzq" headerAlign="center" allowSort="true" >
                            日常周期
                        </div>
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
            doSearch();
        	function doSearch(){
		 		
				 var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
				
				if(isadmin != "true"){
					var jdArray = getCookie('jdArray');
					var jdManagerArray=jdArray.split(",");
					var queryJ = "";
					for(var i =0;i<jdManagerArray.length;i++){
						if(i>0)queryJ+=",";
						queryJ += '"criteria/_or[1]/_expr['+ (i+2) +']/_op":"="';
						queryJ += ',"criteria/_or[1]/_expr['+ (i+2) +']/'+ "jdname" +  '":"'+jdManagerArray[i]+'"';
					}
					var json = new nui.Form("#form1").getData(false, false);
				    var jsonstr = nui.encode(json);
				    var str = jsonstr.substr(0,jsonstr.length-1);
				    if(queryJ != '')str += ","+queryJ;
				    str = nui.decode(str+"}");
				    grid.load(nui.decode(str));//grid查询
				}else{
				    var formData = new nui.Form("#form1").getData(false, false);
			  	    grid.load(formData);
				}
		
			}
	
//             var grid = nui.get("datagrid1");

//             var formData = new nui.Form("#form1").getData(false,false);
//             grid.load(formData);
            
           //导入页面
            function insertFile() {
                nui.open({showMaxButton : true,//http://127.0.0.1:8080/itmp/systemset/uploadfile.jsp
                    url: "/itmp/systemset/uploadfile.jsp",
                    title: "导入文件", width:500, height: 400,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    //grid.reload();
                    doSearch();
                  }
                });
             } 
            
            
   //恢复
                    function back(){
                
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tdxglzqcontrolls:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({//com.cgn.itmp.systemset.CycleMgt.LogicBackDeleteTDxglZqcontrolls
                                        url:"com.cgn.itmp.systemset.CycleMgt.LogicBackDeleteTDxglZqcontrolls.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.success == 1){
                                               // grid.reload();
                                               doSearch();
                                                nui.alert("恢复成功", "系统提示", function(action){
                                                    });
                                                }else{
                                                    grid.unmask();
                                                    nui.alert("数据已存在,不能恢复", "系统提示");
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
                                    var json = nui.encode({tdxglzqcontrolls:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.systemset.CycleMgt.deleteTDxglZqcontrolls.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                              //  grid.reload();
                                              doSearch();
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
                                doSearch();
//                                     var form = new  nui.Form("#form1");
//                                     var json = form.getData(false,false);
//                                     grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function search() {
                                doSearch();
//                                     var form = new nui.Form("#form1");
//                                     var json = form.getData(false,false);
//                                     grid.load(json);//grid查询
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
