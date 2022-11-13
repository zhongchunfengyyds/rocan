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
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyRecycle">
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
                        <div field="protype" headerAlign="center" allowSort="true" visible="false">
                            项目类型
                        </div>
                        <div id="parts" name="parts" field="parts" headerAlign="center" allowSort="true" >
                            部件
                        </div>
                        <div field="template" headerAlign="center" allowSort="true" visible="false">
                            模板
                        </div>
                        <div field="referencefigureno" headerAlign="center" allowSort="true" >
                            参考图号
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="detectedsite" headerAlign="center" allowSort="true" >
                            被检部位
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查内容/检查范围
                        </div>
                        <div field="mapno" headerAlign="center" allowSort="true" >
                            流程图号/参考设备图/等轴图号
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            数量
                        </div>
                        <div field="approachmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                            参考程序
                        </div>
                        <div field="tool" headerAlign="center" allowSort="true" >
                            专用工具
                        </div>
                        <div field="medium" headerAlign="center" allowSort="true" >
                            工作介质
                        </div>
                        <div field="operatingpressure" headerAlign="center" allowSort="true" >
                            运行压力（Bar）
                        </div>
                        <div field="designpressure" headerAlign="center" allowSort="true" >
                            设计压力（Bar)
                        </div>
                        <div field="testpressure" headerAlign="center" allowSort="true" >
                            试验压力（Bar）
                        </div>
                        <div field="site" headerAlign="center" allowSort="true" >
                            试验部位
                        </div>
                        <div field="firsttesttime" headerAlign="center" allowSort="true" >
                            首次水压试验时间
                        </div>
                        <div field="beforetesttime" headerAlign="center" allowSort="true" >
                            前次试验日期
                        </div>
                        <div field="nexttesttime" headerAlign="center" allowSort="true" >
                            下次试验最晚日期
                        </div>
                        <div field="testprocedure" headerAlign="center" allowSort="true" >
                            试验程序
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="inspectplan" renderer="lxRenderer" headerAlign="center" allowSort="true" >
                            专用检查计划
                        </div>
                        <div name="edition" field="edition"  Align="center" headerAlign="center" allowSort="true" >
                           版次
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="n1991" name="n1991" headerAlign="center" allowSort="true" Align="center" width="60">
                            1991
                        </div>
                        <div field="n1992" name="n1992" headerAlign="center" allowSort="true" Align="center" width="60">
                            1992
                        </div>
                        <div field="n1993" name="n1993" headerAlign="center" allowSort="true" Align="center" width="60">
                            1993
                        </div>
                        <div field="n1994" name="n1994" headerAlign="center" allowSort="true" Align="center" width="60">
                            1994
                        </div>
                        <div field="n1995" name="n1995" headerAlign="center" allowSort="true" Align="center" width="60">
                            1995
                        </div>
                        <div field="n1996" name="n1996" headerAlign="center" allowSort="true" Align="center" width="60">
                            1996
                        </div>
                        <div field="n1997" name="n1997" headerAlign="center" allowSort="true" Align="center" width="60">
                            1997
                        </div>
                        <div field="n1998" name="n1998" headerAlign="center" allowSort="true" Align="center" width="60">
                            1998
                        </div>
                        <div field="n1999" name="n1999" headerAlign="center" allowSort="true" Align="center" width="60">
                            1999
                        </div>
                        <div field="n2000" name="n2000" headerAlign="center" allowSort="true" Align="center" width="60">
                            2000
                        </div>
                        <div field="n2001" name="n2001" headerAlign="center" allowSort="true" Align="center" width="60">
                            2001
                        </div>
                        <div field="n2002" name="n2002" headerAlign="center" allowSort="true" Align="center" width="60">
                            2002
                        </div>
                        <div field="n2003" name="n2003" headerAlign="center" allowSort="true" Align="center" width="60">
                            2003
                        </div>
                        <div field="n2004" name="n2004" headerAlign="center" allowSort="true" Align="center" width="60">
                            2004
                        </div>
                        <div field="n2005" name="n2005" headerAlign="center" allowSort="true" Align="center" width="60">
                            2005
                        </div>
                        <div field="n2006" name="n2006" headerAlign="center" allowSort="true" Align="center" width="60">
                            2006
                        </div>
                        <div field="n2007" name="n2007" headerAlign="center" allowSort="true" Align="center" width="60">
                            2007
                        </div>
                        <div field="n2008" name="n2008" headerAlign="center" allowSort="true" Align="center" width="60">
                            2008
                        </div>
                        <div field="n2009" name="n2009" headerAlign="center" allowSort="true" Align="center" width="60">
                            2009
                        </div>
                        <div field="n2010" name="n2010" headerAlign="center" allowSort="true" Align="center" width="60">
                            2010
                        </div>
                        <div field="n2011" name="n2011" headerAlign="center" allowSort="true" Align="center" width="60">
                            2011
                        </div>
                        <div field="n2012" name="n2012" headerAlign="center" allowSort="true" Align="center" width="60">
                            2012
                        </div>
                        <div field="n2013" name="n2013" headerAlign="center" allowSort="true" Align="center" width="60">
                            2013
                        </div>
                        <div field="n2014" name="n2014" headerAlign="center" allowSort="true" Align="center" width="60">
                            2014
                        </div>
                        <div field="n2015" name="n2015" headerAlign="center" allowSort="true" Align="center" width="60">
                            2015
                        </div>
                        <div field="n2016" name="n2016" headerAlign="center" allowSort="true" Align="center" width="60">
                            2016
                        </div>
                        <div field="n2017" name="n2017" headerAlign="center" allowSort="true" Align="center" width="60">
                            2017
                        </div>
                        <div field="n2018" name="n2018" headerAlign="center" allowSort="true" Align="center" width="60">
                            2018
                        </div>
                        <div field="n2019" name="n2019" headerAlign="center" allowSort="true" Align="center" width="60">
                            2019
                        </div>
                        <div field="n2020" name="n2020" headerAlign="center" allowSort="true" Align="center" width="60">
                            2020
                        </div>
                        <div field="n2021" name="n2021" headerAlign="center" allowSort="true" Align="center" width="60">
                            2021
                        </div>
                        <div field="n2022" name="n2022" headerAlign="center" allowSort="true" Align="center" width="60">
                            2022
                        </div>
                        <div field="n2023" name="n2023" headerAlign="center" allowSort="true" Align="center" width="60">
                            2023
                        </div>
                        <div field="n2024" name="n2024" headerAlign="center" allowSort="true" Align="center" width="60">
                            2024
                        </div>
                        <div field="n2025" name="n2025" headerAlign="center" allowSort="true" Align="center" width="60">
                            2025
                        </div>
                        <div field="n2026" name="n2026" headerAlign="center" allowSort="true" Align="center" width="60">
                            2026
                        </div>
                        <div field="n2027" name="n2027" headerAlign="center" allowSort="true" Align="center" width="60">
                            2027
                        </div>
                        <div field="n2028" name="n2028" headerAlign="center" allowSort="true" Align="center" width="60">
                            2028
                        </div>
                        <div field="n2029" name="n2029" headerAlign="center" allowSort="true" Align="center" width="60">
                            2029
                        </div>
                        <div field="n2030" name="n2030" headerAlign="center" allowSort="true" Align="center" width="60">
                            2030
                        </div>
                        <div field="n2031" name="n2031" headerAlign="center" allowSort="true" Align="center" width="60">
                            2031
                        </div>
                        <div field="n2032" name="n2032" headerAlign="center" allowSort="true" Align="center" width="60">
                            2032
                        </div>
                        <div field="n2033" name="n2033" headerAlign="center" allowSort="true" Align="center" width="60">
                            2033
                        </div>
                        <div field="n2034" name="n2034" headerAlign="center" allowSort="true" Align="center" width="60">
                            2034
                        </div>
                        <div field="n2035" name="n2035" headerAlign="center" allowSort="true" Align="center" width="60">
                            2035
                        </div>
                        <div field="n2036" name="n2036" headerAlign="center" allowSort="true" Align="center" width="60">
                            2036
                        </div>
                        <div field="n2037" name="n2037" headerAlign="center" allowSort="true" Align="center" width="60">
                            2037
                        </div>
                        <div field="n2038" name="n2038" headerAlign="center" allowSort="true" Align="center" width="60">
                            2038
                        </div>
                        <div field="n2039" name="n2039" headerAlign="center" allowSort="true" Align="center" width="60">
                            2039
                        </div>
                        <div field="n2040" name="n2040" headerAlign="center" allowSort="true" Align="center" width="60">
                            2040
                        </div>
                        <div field="n2041" name="n2041" headerAlign="center" allowSort="true" Align="center" width="60">
                            2041
                        </div>
                        <div field="n2042" name="n2042" headerAlign="center" allowSort="true" Align="center" width="60">
                            2042
                        </div>
                        <div field="n2043" name="n2043" headerAlign="center" allowSort="true" Align="center" width="60">
                            2043
                        </div>
                        <div field="n2044" name="n2044" headerAlign="center" allowSort="true" Align="center" width="60">
                            2044
                        </div>
                        <div field="n2045" name="n2045" headerAlign="center" allowSort="true" Align="center" width="60">
                            2045
                        </div>
                        <div field="n2046" name="n2046" headerAlign="center" allowSort="true" Align="center" width="60">
                            2046
                        </div>
                        <div field="n2047" name="n2047" headerAlign="center" allowSort="true" Align="center" width="60">
                            2047
                        </div>
                        <div field="n2048" name="n2048" headerAlign="center" allowSort="true" Align="center" width="60">
                            2048
                        </div>
                        <div field="n2049" name="n2049" headerAlign="center" allowSort="true" Align="center" width="60">
                            2049
                        </div>
                        <div field="n2050" name="n2050" headerAlign="center" allowSort="true" Align="center" width="60">
                            2050
                        </div>
                        <div field="n2051" name="n2051" headerAlign="center" allowSort="true" Align="center" width="60">
                            2051
                        </div>
                        <div field="n2052" name="n2052" headerAlign="center" allowSort="true" Align="center" width="60">
                            2052
                        </div>
                        <div field="n2053" name="n2053" headerAlign="center" allowSort="true" Align="center" width="60">
                            2053
                        </div>
                        <div field="n2054" name="n2054" headerAlign="center" allowSort="true" Align="center" width="60">
                            2054
                        </div>
                        <div field="n2055" name="n2055" headerAlign="center" allowSort="true" Align="center" width="60">
                            2055
                        </div>
                        <div field="n2056" name="n2056" headerAlign="center" allowSort="true" Align="center" width="60">
                            2056
                        </div>
                        <div field="n2057" name="n2057" headerAlign="center" allowSort="true" Align="center" width="60">
                            2057
                        </div>
                        <div field="n2058" name="n2058" headerAlign="center" allowSort="true" Align="center" width="60">
                            2058
                        </div>
                        <div field="n2059" name="n2059" headerAlign="center" allowSort="true" Align="center" width="60">
                            2059
                        </div>
                        <div field="n2060" name="n2060" headerAlign="center" allowSort="true" Align="center" width="60">
                            2060
                        </div>
                        <div field="n2061" name="n2061" headerAlign="center" allowSort="true" Align="center" width="60">
                            2061
                        </div>
                        <div field="n2062" name="n2062" headerAlign="center" allowSort="true" Align="center" width="60">
                            2062
                        </div>
                        <div field="n2063" name="n2063" headerAlign="center" allowSort="true" Align="center" width="60">
                            2063
                        </div>
                        <div field="n2064" name="n2064" headerAlign="center" allowSort="true" Align="center" width="60">
                            2064
                        </div>
                        <div field="n2065" name="n2065" headerAlign="center" allowSort="true" Align="center" width="60">
                            2065
                        </div>
                        <div field="n2066" name="n2066" headerAlign="center" allowSort="true" Align="center" width="60">
                            2066
                        </div>
                        <div field="n2067" name="n2067" headerAlign="center" allowSort="true" Align="center" width="60">
                            2067
                        </div>
                        <div field="n2068" name="n2068" headerAlign="center" allowSort="true" Align="center" width="60">
                            2068
                        </div>
                        <div field="n2069" name="n2069" headerAlign="center" allowSort="true" Align="center" width="60">
                            2069
                        </div>
                        <div field="n2070" name="n2070" headerAlign="center" allowSort="true" Align="center" width="60">
                            2070
                        </div>
                        <div field="n2071" name="n2071" headerAlign="center" allowSort="true" Align="center" width="60">
                            2071
                        </div>
                        <div field="n2072" name="n2072" headerAlign="center" allowSort="true" Align="center" width="60">
                            2072
                        </div>
                        <div field="n2073" name="n2073" headerAlign="center" allowSort="true" Align="center" width="60">
                            2073
                        </div>
                        <div field="n2074" name="n2074" headerAlign="center" allowSort="true" Align="center" width="60">
                            2074
                        </div>
                        <div field="n2075" name="n2075" headerAlign="center" allowSort="true" Align="center" width="60">
                            2075
                        </div>
                        <div field="n2076" name="n2076" headerAlign="center" allowSort="true" Align="center" width="60">
                            2076
                        </div>
                        <div field="n2077" name="n2077" headerAlign="center" allowSort="true" Align="center" width="60">
                            2077
                        </div>
                        <div field="n2078" name="n2078" headerAlign="center" allowSort="true" Align="center" width="60">
                            2078
                        </div>
                        <div field="n2079" name="n2079" headerAlign="center" allowSort="true" Align="center" width="60">
                            2079
                        </div>
                        <div field="n2080" name="n2080" headerAlign="center" allowSort="true" Align="center" width="60">
                            2080
                        </div>
                        <div field="n2081" name="n2081" headerAlign="center" allowSort="true" Align="center" width="60">
                            2081
                        </div>
                        <div field="n2082" name="n2082" headerAlign="center" allowSort="true" Align="center" width="60">
                            2082
                        </div>
                        <div field="n2083" name="n2083" headerAlign="center" allowSort="true" Align="center" width="60">
                            2083
                        </div>
                        <div field="n2084" name="n2084" headerAlign="center" allowSort="true" Align="center" width="60">
                            2084
                        </div>
                        <div field="n2085" name="n2085" headerAlign="center" allowSort="true" Align="center" width="60">
                            2085
                        </div>
                        <div field="n2086" name="n2086" headerAlign="center" allowSort="true" Align="center" width="60">
                            2086
                        </div>
                        <div field="n2087" name="n2087" headerAlign="center" allowSort="true" Align="center" width="60">
                            2087
                        </div>
                        <div field="n2088" name="n2088" headerAlign="center" allowSort="true" Align="center" width="60">
                            2088
                        </div>
                        <div field="n2089" name="n2089" headerAlign="center" allowSort="true" Align="center" width="60">
                            2089
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
                    url:"com.cgn.itmp.outlineandplan.outline.RecoverMgt.deleteRecoversData2.biz.ext",
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
	                var json = {tdggldailys:rows};
	                grid.loading("正在恢复,请稍等...");
	                var success = true;
	                for(var i = 0;i< json.tdggldailys.length;i++){
	                	var jsondata = "{'tdggldaily':{'id':'"+json.tdggldailys[i].uuid+"','isdelete':'0'}}";
	                	$.ajax({
		                    url:"com.cgn.itmp.outlineandplan.outline.StaturoryDaily.updateTdggldaily.biz.ext",
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
