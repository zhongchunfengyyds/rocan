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
<body>
          
            <div id="form1" class="nui-form" align="center" style="height:50%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.systemset.LinksMgt.LinksMgt">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="deltime">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                
                <table id="table1" class="table" style="height:100%">
                
                </table>
                
                 <input class="nui-hidden"  name="criteria/_expr[1]/isdelete" value = "1"/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">  
        </div>
        <!--footer-->
      
        <div class="nui-panel"style="width:100%;height:90%">
          
               <div class="nui-fit">
               <div id="datagrid1" dataField="entitys"
                 class="nui-datagrid"
                  style="width:100%;height:100%;"
                   url="com.cgn.itmp.systemset.LinksMgt.queryEntitys.biz.ext"
                    pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
                     onselectionchanged="selectionChanged" allowSortColumn="false">

                    <div property="columns">
                       
                        <div type="checkcolumn">
                        </div>
                         
                          <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="zzid" type="indexcolumn" headerAlign="center" allowSort="true" >
                            序号
                        </div>
                        <div field="type" headerAlign="center" allowSort="true" >
                            类型
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            名称
                        </div>
                        <div field="lj" headerAlign="center" allowSort="true" visible="false">
                            链接
                        </div>
                        <div field="crepeople" headerAlign="center" allowSort="true" >
                            修改者
                        </div>
                        <div field="time" headerAlign="center" allowSort="true" >
                           修改 日期
                        </div>
                        <div field="delpeople" headerAlign="center" allowSort="true" >
                            删除人
                        </div>
                        <div field="deltime" headerAlign="center" allowSort="true"  >
                            删除时间
                        </div>
                    </div>
                </div>
            </div>
        </div>
   <div property="footer" align="center">
            <a class="nui-button btn btn-default btn-xs" onclick="back()">
               恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="remove()">
                彻底删除
            </a>
        </div>
        <style type="text/css">
        .mini-panel-viewport{
        height:300px;
        
        }
        
        </style>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({entitys:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.systemset.LinksMgt.deleteEntitys.biz.ext",
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
                                    var json = nui.encode({entitys:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({  
                                        url:"com.cgn.itmp.systemset.LinksMgt.hfdelete.biz.ext",
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
                                    }else{
                                    }
                                }
                            </script>
                        </body>
</html>