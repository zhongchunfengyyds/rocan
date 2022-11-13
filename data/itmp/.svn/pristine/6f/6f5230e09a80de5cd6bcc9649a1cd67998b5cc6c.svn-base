<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Sun
- Date: 2019-01-21 17:18:38
- Description:
    --%>
    <head>
        <title>
            回收站查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body style="width:98%;height:95%;margin:0 auto;">
       	<div id="form1"> 
            
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulRecycle">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
                <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table id="table1" class="table" style="height:100%">
	              
                </table>
                <input id="base" class="nui-hidden" name="criteria/_expr[1]/base"/>
			    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
			    <input id="crew" class="nui-hidden" name="criteria/_expr[2]/crew"/>
			    <input class="nui-hidden" name="criteria/_expr[2]/_op" value="=">
            </div>
        </div>
      
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="recovers"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.outline.RecoverMgt.queryRecovers.biz.ext"
                        pageSize="20"
                        sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="datetime" headerAlign="center" allowSort="true" visible="false">
                            日期
                        </div>
                        <div field="base" renderer="JDRenderer" headerAlign="center" allowSort="true" >
                            基地
                        </div>
                        <div field="crew" renderer="JZRenderer" headerAlign="center" allowSort="true" >
                            机组
                        </div>
                        <div field="protype" headerAlign="center" visible="false" allowSort="true" >
                            项目类型
                        </div>
                        <div field="parts" headerAlign="center" visible="false" allowSort="true" >
                            部件
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="prosource" headerAlign="center" allowSort="true" >
                            项目来源
                        </div>
                        <div field="insystem" headerAlign="center" allowSort="true" >
                            所在系统
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="mapno" renderer="setmapno" headerAlign="center" allowSort="true" >
                            图号
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查内容
                        </div>
                        <div field="approachmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="executionunit" headerAlign="center" allowSort="true" >
                            执行单位
                        </div>
                        <div field="rsemcycle" headerAlign="center" allowSort="true" >
                            检查周期（RSEM)
                        </div>
                        <div field="sapcycle" headerAlign="center" allowSort="true" >
                            检查周期(SAP)
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="inspectplan" renderer="lxRenderer" headerAlign="center" allowSort="true" >
                            专用检查计划
                        </div>
                        <div field="edition"  headerAlign="center" Align="center"  allowSort="true" >
                            版次
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="c1" name="c1" headerAlign="center" allowSort="true" >
                            C1
                        </div>
                        <div field="c2" name="c2" headerAlign="center" allowSort="true" >
                            C2
                        </div>
                        <div field="c3" name="c3" headerAlign="center" allowSort="true" >
                            C3
                        </div>
                        <div field="c4" name="c4" headerAlign="center" allowSort="true" >
                            C4
                        </div>
                        <div field="c5" name="c5" headerAlign="center" allowSort="true" >
                            C5
                        </div>
                        <div field="c6" name="c6" headerAlign="center" allowSort="true" >
                            C6
                        </div>
                        <div field="c7" name="c7" headerAlign="center" allowSort="true" >
                            C7
                        </div>
                        <div field="c8" name="c8" headerAlign="center" allowSort="true" >
                            C8
                        </div>
                        <div field="c9" name="c9" headerAlign="center" allowSort="true" >
                            C9
                        </div>
                        <div field="c10" name="c10" headerAlign="center" allowSort="true" >
                            C10
                        </div>
                        <div field="c11" name="c11" headerAlign="center" allowSort="true" >
                            C11
                        </div>
                        <div field="c12" name="c12" headerAlign="center" allowSort="true" >
                            C12
                        </div>
                        <div field="c13" name="c13" headerAlign="center" allowSort="true" >
                            C13
                        </div>
                        <div field="c14" name="c14" headerAlign="center" allowSort="true" >
                            C14
                        </div>
                        <div field="c15" name="c15" headerAlign="center" allowSort="true" >
                            C15
                        </div>
                        <div field="c16" name="c16" headerAlign="center" allowSort="true" >
                            C16
                        </div>
                        <div field="c17" name="c17" headerAlign="center" allowSort="true" >
                            C17
                        </div>
                        <div field="c18" name="c18" ="center" allowSort="true" >
                            C18
                        </div>
                        <div field="c19" name="c19" headerAlign="center" allowSort="true" >
                            C19
                        </div>
                        <div field="c20" name="c20" headerAlign="center" allowSort="true" >
                            C20
                        </div>
                        <div field="c21" name="c21" headerAlign="center" allowSort="true" >
                            C21
                        </div>
                        <div field="c22" name="c22" headerAlign="center" allowSort="true" >
                            C22
                        </div>
                        <div field="c23" name="c23" headerAlign="center" allowSort="true" >
                            C23
                        </div>
                        <div field="c24" name="c24" headerAlign="center" allowSort="true" >
                            C24
                        </div>
                        <div field="c25" name="c25" headerAlign="center" allowSort="true" >
                            C25
                        </div>
                        <div field="c26" name="c26" headerAlign="center" allowSort="true" >
                            C26
                        </div>
                        <div field="c27" name="c27" headerAlign="center" allowSort="true" >
                            C27
                        </div>
                        <div field="c28" name="c28" headerAlign="center" allowSort="true" >
                            C28
                        </div>
                        <div field="c29" name="c29" headerAlign="center" allowSort="true" >
                            C29
                        </div>
                        
                        <div field="c30" name="c30" headerAlign="center" allowSort="true" >
                            C30
                        </div>
                        <div field="c31" name="c31" headerAlign="center" allowSort="true" >
                            C31
                        </div>
                        <div field="c32" name="c32" headerAlign="center" allowSort="true" >
                            C32
                        </div>
                        <div field="c33" name="c33" headerAlign="center" allowSort="true" >
                            C33
                        </div>
                        <div field="c34" name="c34" headerAlign="center" allowSort="true" >
                            C34
                        </div>
                        <div field="c35" name="c35" headerAlign="center" allowSort="true" >
                            C35
                        </div>
                        <div field="c36" name="c36" headerAlign="center" allowSort="true" >
                            C36
                        </div>
                        <div field="c37" name="c37" headerAlign="center" allowSort="true" >
                            C37
                        </div>
                        <div field="c38" name="c38" headerAlign="center" allowSort="true" >
                            C38
                        </div>
                        <div field="c39" name="c39" headerAlign="center" allowSort="true" >
                            C39
                        </div>
                        <div field="c40" name="c40" headerAlign="center" allowSort="true" >
                            C40
                        </div>
                        <div field="c41" name="c41" headerAlign="center" allowSort="true" >
                            C41
                        </div>
                        <div field="c42" name="c42" headerAlign="center" allowSort="true" >
                            C42
                        </div>
                        <div field="c43" name="c43" headerAlign="center" allowSort="true" >
                            C43
                        </div>
                        <div field="c44" name="c44" headerAlign="center" allowSort="true" >
                            C44
                        </div>
                        <div field="c45" name="c45" headerAlign="center" allowSort="true" >
                            C45
                        </div>
                        <div field="c46" name="c46" headerAlign="center" allowSort="true" >
                            C46
                        </div>
                        <div field="c47" name="c47" headerAlign="center" allowSort="true" >
                            C47
                        </div>
                        <div field="c48" name="c48" headerAlign="center" allowSort="true" >
                            C48
                        </div>
                        <div field="c49" name="c49" headerAlign="center" allowSort="true" >
                            C49
                        </div>
                        <div field="c50" name="c50" headerAlign="center" allowSort="true" >
                            C501
                        </div>
                        <div field="c51" name="c51" headerAlign="center" allowSort="true" >
                            C51
                        </div>
                        <div field="c52" name="c52" headerAlign="center" allowSort="true" >
                            C52
                        </div>
                        <div field="c53" name="c53" headerAlign="center" allowSort="true" >
                            C53
                        </div>
                        <div field="c54" name="c54" headerAlign="center" allowSort="true" >
                            C54
                        </div>
                        <div field="c55" name="c55" headerAlign="center" allowSort="true" >
                            C55
                        </div>
                        <div field="c56" name="c56" headerAlign="center" allowSort="true" >
                            C56
                        </div>
                        <div field="c57" name="c57" headerAlign="center" allowSort="true" >
                            C57
                        </div>
                        <div field="c58" name="c58" headerAlign="center" allowSort="true" >
                            C58
                        </div>
                        <div field="c59" name="c59" headerAlign="center" allowSort="true" >
                            C59
                        </div>
                        <div field="c60" name="c60" headerAlign="center" allowSort="true" >
                            C60
                        </div>
                    </div>
                </div>
            </div>
          <div property="footer" align="center">
            <a class="nui-button btn btn-default btn-xs" onclick="setDel()">
               <i class="fa fa-reply"></i>恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="remove()">
                <i class="fa fa-remove"></i>彻底删除
            </a>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
			var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
            nui.get('base').setValue(jdid);
            nui.get('crew').setValue(jzid);
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

            

           

//删除
function remove(){
    var rows = grid.getSelecteds();
    if(rows.length > 0){
        nui.confirm("确定删除选中记录？","系统提示",
        function(action){
            if(action=="ok"){
                var json = {recovers:rows};
                grid.loading("正在删除中,请稍等...");
                
                var ids = "";
                 for(var i = 0;i< json.recovers.length;i++){
                 	ids += json.recovers[i].uuid;
                 	if(i< json.recovers.length - 1)ids += ',';
                 }
                var jsondata = "{'recover':{'id':'"+ids+"'}}";
                $.ajax({
                    url:"com.cgn.itmp.outlineandplan.outline.RecoverMgt.deleteRecoversData3.biz.ext",
                    type:'POST',
                    data:jsondata,
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
	function setDel(){
		var rows = grid.getSelecteds();
		
	    if(rows.length > 0){
	        nui.confirm("确定恢复选中记录？","系统提示",
	        function(action){
	            if(action=="ok"){
	                var json = {tdgglgfffddxtms:rows};
	                grid.loading("正在恢复,请稍等...");
	                var success = true;
	                
	                for(var i = 0;i< json.tdgglgfffddxtms.length;i++){
	                	var jsondata = "{'tdgglgfffddxtm':{'id':'"+json.tdgglgfffddxtms[i].uuid+"','isdelete':'0'}}";
	                	$.ajax({
		                    url:"com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.updateTdgglgfffddxtm.biz.ext",
		                    type:'POST',
		                    data:jsondata,
		                    cache:false,
		                    contentType:'text/json',
		                    success:function(text){
		                        var returnJson = nui.decode(text);
		                        if(returnJson.exception == null){
		                        	
		                        }else{
		                            success = false;
		                       }
		                    }
	                	});
	                }
	                if(success){
	                	grid.reload();
	                    nui.alert("恢复成功", "系统提示", function(action){
	                    });
	                }else{
	                	grid.unmask();
	                    nui.alert("恢复失败", "系统提示");
	                }
	                 grid.reload();
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
                                
                                function JZRenderer(e){	
					     	    	var val = "";
					     	    	nui.ajax({
						                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznameByid.biz.ext",
						                type: 'POST',
						                async: false,
						                data:"{jzid:'" + e.row.crew + "'}",
						                success: function (text) {
						                	val =  text.jzname;
						                }
						            });						
									return val;
								}
								
								function JDRenderer(e){	
					     	    	var val = "";
					     	    	nui.ajax({
						                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJdnameByid.biz.ext",
						                type: 'POST',
						                async: false,
						                data:"{jdid:'" + e.row.base + "'}",
						                success: function (text) {
						                	val =  text.jdname;
						                }
						            });						
									return val;
								}
								function lxRenderer(e) {
	return nui.getDictText("option", e.value);
}
                            </script>
                        </body>
                    </html>
