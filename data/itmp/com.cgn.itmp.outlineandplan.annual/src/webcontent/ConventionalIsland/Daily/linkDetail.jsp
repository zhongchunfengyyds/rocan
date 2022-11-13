<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Sun
- Date: 2019-03-06 10:23:47
- Description:
    --%>
    <head>
        <title>
            Entity查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    </head>
    <body style="width:98%;height:95%;">
        <div class="nui-panel" title="生成记录查询" style="width:100%;height:15%;" showToolbar="false" showFooter="true">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulDetail.PlanRecord">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="creatdate">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <table id="table1" class="table" style="height:100%">
                    <tr>
                        <td class="form_label">
                            生成人:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" name="criteria/_expr[1]/creater"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input id="lc" class="nui-hidden" name="criteria/_expr[2]/lc"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="=">
                            <input id="ident" class="nui-hidden" name="criteria/_expr[3]/ident"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="=">
                            <input id="baseid" class="nui-hidden" name="criteria/_expr[4]/jd"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="=">
                            <input id="crewid" class="nui-hidden" name="criteria/_expr[5]/jz"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
                        </td>
                        
                        <td class="form_label">
                            生成时间:
                        </td>
                        <td colspan="3">
                        	<input id="startDate" class="nui-datepicker" ondrawdate="onDrawDateStart" name="criteria/_expr[6]/creatdate"/>
		                    <input class="nui-hidden" name="criteria/_expr[6]/_op" value=">">--
		                    <input id="endDate" class="nui-datepicker" ondrawdate="onDrawDateEnd" name="criteria/_expr[7]/creatdate"/>
		                    <input class="nui-hidden" name="criteria/_expr[7]/_op" value="<">
                        </td>
                        <td>
                        <a class="nui-button" onclick="search()">
                查询
            </a>
                        </td>
                        <td>
                        <a class="nui-button" onclick="reset()">
                重置
            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="nui-panel" title="生成记录数据列表" style="width:100%;height:85%;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="ndjhhdscjls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandCommon.queryndjhhdscjls.biz.ext"
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                    	<div field="rownumber" headerAlign="center" allowSort="true">
                        	版次
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="ident" headerAlign="center" allowSort="true" visible="false">
                            ident
                        </div>
                        <div field="jd" headerAlign="center" allowSort="true" visible="false">
                            jd
                        </div>
                        <div field="jz" headerAlign="center" allowSort="true" visible="false">
                            jz
                        </div>
                        <div field="creater" headerAlign="center" allowSort="true" >
                            生成人
                        </div>
                        <div field="creatdate" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                            生成时间
                        </div>
                        <div field="record" renderer="setrecord" headerAlign="center" allowSort="true" >
                            变更履历
                        </div>
                        <div field="lc" visible="false" headerAlign="center" allowSort="true" >
                            轮次
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");

            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
			var lc;
			var ident;
			var baseid;
			var crewid;
			var ndplan;

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
                nui.get('baseid').setValue(baseid);
				nui.get('crewid').setValue(crewid);
				nui.get('lc').setValue(lc);
				nui.get('ident').setValue(ident);
            }

            //enter键触发查询
            function onKeyEnter(e) {
                search();
            }

            //当选择列时
            function selectionChanged(){
                var rows = grid.getSelecteds();
            }
            
            function setFormData(data){
		        //跨页面传递的数据对象，克隆后才可以安全使用
		        var infos = nui.clone(data);
		        if (infos.pageType == "data") {
		            var json = infos.record;
					lc = json.lc;
					ident = json.ident;
					baseid = json.base;
					crewid = json.crew;
					ndplan = json.ndplan;
					nui.get('baseid').setValue(baseid);
					nui.get('crewid').setValue(crewid);
					nui.get('lc').setValue(lc);
					nui.get('ident').setValue(ident);
					search();
		        }
		    }
		    
		    function setrecord(e){
		    	var record = e.record.record;
		    	if(record != null && record != '')
		    	return '<a href = "#" onclick ="showrecorddetail()">'+record+'</a>'; 
		    }
		    
		    function showrecorddetail(){
		    	var row = grid.getSelected();    
		    	var index = grid.indexOf(row);
		    	var etime = nui.formatDate (row.creatdate, "yyyy-MM-dd HH:mm:ss" );
		    	var hrow = grid.getRow(parseInt(index)+1);
		    	var stime = nui.formatDate (hrow.creatdate, "yyyy-MM-dd HH:mm:ss" );
                if (row) {
                    nui.open({showMaxButton : true,
                        url: "/itmp/annual/ConventionalIsland/Daily/vitaeList.jsp",
                        title: "数据详情",
                        width: 1000,
                        height: 550,
                        onload: function () {
                             var iframe = this.getIFrameEl();
			                 var data = {pageType:"show",record:{stime:stime,etime:etime,ndplan:ndplan}};
			                //直接从页面获取，不用去后台获取
			                iframe.contentWindow.setFormData(data);
                        }
                    });
                } 
		    }
		    
		     //起始日期事件
    function onDrawDateStart(e) {
        var date = e.date;
        var d = nui.get('endDate').getValue();
         if(d == null || "" == d){
        	 return;
        }
        if (date.getTime() > d.getTime()) {
            e.allowSelect = false;
        }
    }
    //终止日期事件
    function onDrawDateEnd(e) {
        var date = e.date;
        var d = nui.get('startDate').getValue();
        if(d == null || "" == d){
        	 return;
        }
        if (date.getTime() < d.getTime()) {
            e.allowSelect = false;
        }
    }
        </script>
    </body>
</html>
