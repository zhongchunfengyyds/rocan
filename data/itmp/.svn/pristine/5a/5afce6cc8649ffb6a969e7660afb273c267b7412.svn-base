<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-24 19:33:32
- Description:
    --%>
    <head>
        <title>
 
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body style="width:98%;height:95%;">
        <div class="nui-panel"    style="width:100%;height:100;" showToolbar="false" showFooter="true">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.NuclearIslandDailySearchDel">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="uuid">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
                   <input class="nui-hidden" id="con_jdid" name="criteria/_expr[1]/base" /> 
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like"> 
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                      
                            <input class="nui-hidden" id="con_jzid" name="criteria/_expr[2]/crew"   />
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
 
          
            </div>
        </div>
              
        
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tzyjcjhhdgddels"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.queryTzyjcjhhdGDdels.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
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
                            uuid
                        </div>
                        <div field="processInstId" headerAlign="center" allowSort="true" visible="false" >
                            processInstId
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false" >
                            序号
                        </div>
                        <div field="base" headerAlign="center" allowSort="true" renderer="JDRenderer"    >
                            基地
                        </div>
                        <div field="crew" headerAlign="center" allowSort="true"  renderer="JZRenderer"  >
                            机组
                        </div>
                        <div field="type" headerAlign="center" renderer="gsRenderer"allowSort="true"   >
                            类型
                        </div>
                        <div field="tasklist" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="checkprojectname" headerAlign="center" allowSort="true" >
                            检查项目名称
                        </div>
                        <div field="itemnumber" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                            设备
                        </div>
                        <div field="hfnumber" headerAlign="center" allowSort="true" >
                            焊缝号
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            数量
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div field="ckt_dzhnumber" headerAlign="center" allowSort="true" >
                            参考图号/等轴图
                        </div>
                        <div field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div field="jcmethod" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="jcprocedure" headerAlign="center" allowSort="true" >
                            检查程序
                        </div>
                        <div field="remarks" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true"   visible="false" >
                            是否删除
                        </div>
                        <div field="systemdevice" headerAlign="center" allowSort="true" >
                            系统设备
                        </div>
                        <div field="category" headerAlign="center" renderer="lbRenderer"allowSort="true" >
                            类别
                        </div>
                        <div field="gj" headerAlign="center" allowSort="true" >
                            管径
                        </div>
                        <div field="bw" headerAlign="center" renderer="bwRenderer"allowSort="true" >
                            保温
                        </div>
                        <div field="material" headerAlign="center" allowSort="true" >
                            材料
                        </div>
                        <div field="bracenumber" headerAlign="center" allowSort="true" >
                            支撑号
                        </div>
                        <div field="jjmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
                        <div field="pmcycle" headerAlign="center" allowSort="true" >
                            PM周期
                        </div>
                        <div field="pmcode" headerAlign="center" allowSort="true" >
                            PM编码
                        </div>
                        <div field="gnwz" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="jcbw" headerAlign="center" allowSort="true" >
                            检查部位
                        </div>
                        <div field="gfcycle" headerAlign="center" allowSort="true" >
                            规范周期
                        </div>
                        <div field="zxunit" headerAlign="center" allowSort="true" >
                            执行单位
                        </div>
                        <div field="sbname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="gkc" headerAlign="center" allowSort="true" >
                            管壳侧
                        </div>
                        <div field="sbnumber" headerAlign="center" allowSort="true" >
                            设备图号
                        </div>
                        <div field="sbbh" headerAlign="center" allowSort="true" >
                            设备编号
                        </div>
                        <div field="columnsint" headerAlign="center" allowSort="true" >
                            列
                        </div>
                        <div field="row" headerAlign="center" allowSort="true" >
                            行
                        </div>
                        <div field="checktype" headerAlign="center" renderer="jclxRenderer"allowSort="true" >
                            检查类型
                        </div>
                        <div field="jccycle" headerAlign="center" allowSort="true" >
                            检查周期
                        </div>
                        <div field="c1991" name="c1991" headerAlign="center" allowSort="true" >
                            1991
                        </div>
                        <div field="c1992" name="c1992" headerAlign="center" allowSort="true" >
                            1992
                        </div>
                        <div field="c1993" name="c1993" headerAlign="center" allowSort="true" >
                            1993
                        </div>
                        <div field="c1994" name="c1994" headerAlign="center" allowSort="true" >
                            1994
                        </div>
                        <div field="c1995" name="c1995" headerAlign="center" allowSort="true" >
                            1995
                        </div>
                        <div field="c1996" name="c1996" headerAlign="center" allowSort="true" >
                            1996
                        </div>
                        <div field="c1997" name="c1997" headerAlign="center" allowSort="true" >
                            1997
                        </div>
                        <div field="c1998" name="c1998" headerAlign="center" allowSort="true" >
                            1998
                        </div>
                        <div field="c1999" name="c1999" headerAlign="center" allowSort="true" >
                            1999
                        </div>
                        <div field="c2000" name="c2000" headerAlign="center" allowSort="true" >
                            2000
                        </div>
                        <div field="c2001" name="c2001" headerAlign="center" allowSort="true" >
                            2001
                        </div>
                        <div field="c2002" name="c2002" headerAlign="center" allowSort="true" >
                            2002
                        </div>
                        <div field="c2003" name="c2003" headerAlign="center" allowSort="true" >
                            2003
                        </div>
                        <div field="c2004" name="c2004" headerAlign="center" allowSort="true" >
                            2004
                        </div>
                        <div field="c2005" name="c2005" headerAlign="center" allowSort="true" >
                            2005
                        </div>
                        <div field="c2006" name="c2006" headerAlign="center" allowSort="true" >
                            2006
                        </div>
                        <div field="c2007" name="c2007" headerAlign="center" allowSort="true" >
                            2007
                        </div>
                        <div field="c2008" name="c2008" headerAlign="center" allowSort="true" >
                            2008
                        </div>
                        <div field="c2009" name="c2009" headerAlign="center" allowSort="true" >
                            2009
                        </div>
                        <div field="c2010" name="c2010" headerAlign="center" allowSort="true" >
                            2010
                        </div>
                        <div field="c2011" name="c2011" headerAlign="center" allowSort="true" >
                            2011
                        </div>
                        <div field="c2012" name="c2012" headerAlign="center" allowSort="true" >
                            2012
                        </div>
                        <div field="c2013" name="c2013" headerAlign="center" allowSort="true" >
                            2013
                        </div>
                        <div field="c2014" name="c2014" headerAlign="center" allowSort="true" >
                            2014
                        </div>
                        <div field="c2015" name="c2015" headerAlign="center" allowSort="true" >
                            2015
                        </div>
                        <div field="c2016" name="c2016" headerAlign="center" allowSort="true" >
                            2016
                        </div>
                        <div field="c2017" name="c2017" headerAlign="center" allowSort="true" >
                            2017
                        </div>
                        <div field="c2018" name="c2018" headerAlign="center" allowSort="true" >
                            2018
                        </div>
                        <div field="c2019" name="c2019" headerAlign="center" allowSort="true" >
                            2019
                        </div>
                        <div field="c2020" name="c2020" headerAlign="center" allowSort="true" >
                            2020
                        </div>
                        <div field="c2021" name="c2021" headerAlign="center" allowSort="true" >
                            2021
                        </div>
                        <div field="c2022" name="c2022" headerAlign="center" allowSort="true" >
                            2022
                        </div>
                        <div field="c2023" name="c2023" headerAlign="center" allowSort="true" >
                            2023
                        </div>
                        <div field="c2024" name="c2024" headerAlign="center" allowSort="true" >
                            2024
                        </div>
                        <div field="c2025" name="c2025" headerAlign="center" allowSort="true" >
                            2025
                        </div>
                        <div field="c2026" name="c2026" headerAlign="center" allowSort="true" >
                            2026
                        </div>
                        <div field="c2027" name="c2027" headerAlign="center" allowSort="true" >
                            2027
                        </div>
                        <div field="c2028" name="c2028" headerAlign="center" allowSort="true" >
                            2028
                        </div>
                        <div field="c2029" name="c2029" headerAlign="center" allowSort="true" >
                            2029
                        </div>
                        <div field="c2030" name="c2030" headerAlign="center" allowSort="true" >
                            2030
                        </div>
                        <div field="c2031" name="c2031" headerAlign="center" allowSort="true" >
                            2031
                        </div>
                        <div field="c2032" name="c2032" headerAlign="center" allowSort="true" >
                            2032
                        </div>
                        <div field="c2033" name="c2033" headerAlign="center" allowSort="true" >
                            2033
                        </div>
                        <div field="c2034" name="c2034" headerAlign="center" allowSort="true" >
                            2034
                        </div>
                        <div field="c2035" name="c2035" headerAlign="center" allowSort="true" >
                            2035
                        </div>
                        <div field="c2036" name="c2036" headerAlign="center" allowSort="true" >
                            2036
                        </div>
                        <div field="c2037" name="c2037" headerAlign="center" allowSort="true" >
                            2037
                        </div>
                        <div field="c2038" name="c2038" headerAlign="center" allowSort="true" >
                            2038
                        </div>
                        <div field="c2039" name="c2039" headerAlign="center" allowSort="true" >
                            2039
                        </div>
                        <div field="c2040" name="c2040" headerAlign="center" allowSort="true" >
                            2040
                        </div>
                        <div field="c2041" name="c2041" headerAlign="center" allowSort="true" >
                            2041
                        </div>
                        <div field="c2042" name="c2042" headerAlign="center" allowSort="true" >
                            2042
                        </div>
                        <div field="c2043" name="c2043" headerAlign="center" allowSort="true" >
                            2043
                        </div>
                        <div field="c2044" name="c2044" headerAlign="center" allowSort="true" >
                            2044
                        </div>
                        <div field="c2045" name="c2045" headerAlign="center" allowSort="true" >
                            2045
                        </div>
                        <div field="c2046" name="c2046" headerAlign="center" allowSort="true" >
                            2046
                        </div>
                        <div field="c2047" name="c2047" headerAlign="center" allowSort="true" >
                            2047
                        </div>
                        <div field="c2048" name="c2048" headerAlign="center" allowSort="true" >
                            2048
                        </div>
                        <div field="c2049" name="c2049" headerAlign="center" allowSort="true" >
                            2049
                        </div>
                        <div field="c2050" name="c2050" headerAlign="center" allowSort="true" >
                            2050
                        </div>
                        <div field="c2051" name="c2051" headerAlign="center" allowSort="true" >
                            2051
                        </div>
                        <div field="c2052" name="c2052" headerAlign="center" allowSort="true" >
                            2052
                        </div>
                        <div field="c2053" name="c2053" headerAlign="center" allowSort="true" >
                            2053
                        </div>
                        <div field="c2054" name="c2054" headerAlign="center" allowSort="true" >
                            2054
                        </div>
                        <div field="c2055" name="c2055" headerAlign="center" allowSort="true" >
                            2055
                        </div>
                        <div field="c2056" name="c2056" headerAlign="center" allowSort="true" >
                            2056
                        </div>
                        <div field="c2057" name="c2057" headerAlign="center" allowSort="true" >
                            2057
                        </div>
                        <div field="c2058" name="c2058" headerAlign="center" allowSort="true" >
                            2058
                        </div>
                        <div field="c2059" name="c2059" headerAlign="center" allowSort="true" >
                            2059
                        </div>
                        <div field="c2060" name="c2060" headerAlign="center" allowSort="true" >
                            2060
                        </div>
                        <div field="c2061" name="c2061" headerAlign="center" allowSort="true" >
                            2061
                        </div>
                        <div field="c2062" name="c2062" headerAlign="center" allowSort="true" >
                            2062
                        </div>
                        <div field="c2063" name="c2063" headerAlign="center" allowSort="true" >
                            2063
                        </div>
                        <div field="c2064" name="c2064" headerAlign="center" allowSort="true" >
                            2064
                        </div>
                        <div field="c2065" name="c2065" headerAlign="center" allowSort="true" >
                            2065
                        </div>
                        <div field="c2066" name="c2066" headerAlign="center" allowSort="true" >
                            2066
                        </div>
                        <div field="c2067" name="c2067" headerAlign="center" allowSort="true" >
                            2067
                        </div>
                        <div field="c2068" name="c2068" headerAlign="center" allowSort="true" >
                            2068
                        </div>
                        <div field="c2069" name="c2069" headerAlign="center" allowSort="true" >
                            2069
                        </div>
                        <div field="c2070" name="c2070" headerAlign="center" allowSort="true" >
                            2070
                        </div>
                        <div field="c2071" name="c2071" headerAlign="center" allowSort="true" >
                            2071
                        </div>
                        <div field="c2072" name="c2072" headerAlign="center" allowSort="true" >
                            2072
                        </div>
                        <div field="c2073" name="c2073" headerAlign="center" allowSort="true" >
                            2073
                        </div>
                        <div field="c2074" name="c2074" headerAlign="center" allowSort="true" >
                            2074
                        </div>
                        <div field="c2075" name="c2075" headerAlign="center" allowSort="true" >
                            2075
                        </div>
                        <div field="c2076" name="c2076" headerAlign="center" allowSort="true" >
                            2076
                        </div>
                        <div field="c2077" name="c2077" headerAlign="center" allowSort="true" >
                            2077
                        </div>
                        <div field="c2078" name="c2078" headerAlign="center" allowSort="true" >
                            2078
                        </div>
                        <div field="c2079" name="c2079" headerAlign="center" allowSort="true" >
                            2079
                        </div>
                        <div field="c2080" name="c2080" headerAlign="center" allowSort="true" >
                            2080
                        </div>
                        <div field="c2081" name="c2081" headerAlign="center" allowSort="true" >
                            2081
                        </div>
                        <div field="c2082" name="c2082" headerAlign="center" allowSort="true" >
                            2082
                        </div>
                        <div field="c2083" name="c2083" headerAlign="center" allowSort="true" >
                            2083
                        </div>
                        <div field="c2084" name="c2084" headerAlign="center" allowSort="true" >
                            2084
                        </div>
                        <div field="c2085" name="c2085" headerAlign="center" allowSort="true" >
                            2085
                        </div>
                        <div field="c2086" name="c2086" headerAlign="center" allowSort="true" >
                            2086
                        </div>
                        <div field="c2087" name="c2087" headerAlign="center" allowSort="true" >
                            2087
                        </div>
                        <div field="c2088" name="c2088" headerAlign="center" allowSort="true" >
                            2088
                        </div>
                        <div field="c2089" name="c2089" headerAlign="center" allowSort="true" >
                            2089
                        </div>
                         <div field="t_name" id="t_name" name="t_name" headerAlign="center" visible="false"  allowSort="true" >
                            t_name
                        </div>
                       <div field="creator" headerAlign="center" allowSort="true" visible="false" >
                            发起人
                        </div>
                        <div field="datetime" headerAlign="center" allowSort="true" visible="false" >
                            发起时间
                        </div>
                        <div field="reason" headerAlign="center" allowSort="true" visible="false" >
                            发起原因
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
  var jdid= getCookie('jdid');
            nui.get('con_jdid').setValue(jdid);
             var jzid= getCookie('jzid');
            nui.get('con_jzid').setValue(jzid);
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
//类型公共代码转换
			function gsRenderer(e) {
				return nui.getDictText("ZYJCJH", e.value);
			}
				function lbRenderer(e) {
				
				
				return nui.getDictText("LB", e.value);
			}
			function bwRenderer(e) {
				
				
				return nui.getDictText("BW", e.value);
			}
				function jclxRenderer(e) {
				
				
				return nui.getDictText("JCLX", e.value);
			}
             
       function JZRenderer(e){								
 	    		var val = "";
 	    		var jzval = e.value;
 	    		if(jzval != null && jzval != ""){
 	    		var jzid = jzval.split(",");
 	    		
     	    		for(var i = 0 ; i < jzid.length ; i++){
		     	    	nui.ajax({
			                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznameByid.biz.ext",
			                type: 'POST',
			                async: false,
			                data:"{jzid:'" + jzid[i] + "'}",
			                success: function (text) {
			                	val +=  text.jzname + (i == jzid.length -1 ? "" : ",");
			                }
			            });	
			            
			        }	
		        }				
			return val;
		}
		     function JDRenderer(e){	
		     							
 	    		var val = "";
 	    		var jdval = e.value;
 	    		if(jdval != null && jdval != ""){
 	    		var jdid = jdval.split(",");
 	    		
     	    		for(var i = 0 ; i < jdid.length ; i++){
		     	    	nui.ajax({
			                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJdnameByid.biz.ext",
			                type: 'POST',
			                async: false,
			                data:"{jdid:'" + jdid[i] + "'}",
			                success: function (text) {
			                	val +=  text.jdname + (i == jdid.length -1 ? "" : ",");
			                }
			            });	
			            
			        }	
		        }				
			return val;
		}
             //恢复
function setDel(){
                 
                        var rows = grid.getSelecteds();
                         
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                     
                   var json = nui.encode({entitys:rows});
                
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.luoji.biz.ext",
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
                                    var json = nui.encode({entitys:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.shanchu.biz.ext",
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
                                       
                                    }else{
                                       
                                    }
                                }
                                
                               </script>
                        </body>
                    </html>
