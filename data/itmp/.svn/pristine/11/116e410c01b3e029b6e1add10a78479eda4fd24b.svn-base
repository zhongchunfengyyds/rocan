<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<html>
<%--
- Author(s): Sun
- Date: 2019-02-23 14:42:50
- Description:
    --%>
    <head>
        <title>
            大修计划查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <style type="text/css">
		   ul,li{list-style:none;}
		   ul li{float:left;margin:3px;}
</style>
    </head>
    <body style="width:98%;height:95%;margin:0 auto;">
       <div  class="nui-layout" style="width:100%;height:98%;">
		    <div title="大修计划查询" region="north" height="100" >
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.annual.ConventionalIslandDaily.PlanGeneration">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="ndorderno">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
                 <input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
                <input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
                
                <input id="ident" style="display: none" class="nui-textbox" name="criteria/_expr[11]/ident"/>
                <input style="display: none" class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
                <input id="processinstid" style="display: none" class="nui-textbox" name="criteria/_expr[12]/processinstid"/>
                <input  class="nui-hidden" name="criteria/_expr[12]/_op" value="=">
                <ul>
                	<li id="rwqd">
                		维护项目:
                		<input class="nui-textbox" name="criteria/_expr[1]/rwqd"/>
                        <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                        <input id="hyhident" class="nui-hidden" name="criteria/_expr[2]/ident"/>
                        <input class="nui-hidden" name="criteria/_expr[2]/_op" value="<>">
                        <input id="ident" class="nui-hidden" name="criteria/_expr[3]/ident"/>
                        <input class="nui-hidden" name="criteria/_expr[3]/_op" value="=">
                	</li>
                	<li id="jcxmms">
                		检查项目描述:
                	</li>
                	<li id="jcxmmsin">
                		<input class="nui-textbox" name="criteria/_expr[4]/checkprojectname"/>
                        <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                	</li>
                	<li id="gnwz">
                		功能位置:
                		<input class="nui-textbox" name="criteria/_expr[5]/gnwz"/>
                        <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                	</li>
                </ul>
                <ul>
                	<li id="zysb">
                		主要设备:
                		<input class="nui-textbox" name="criteria/_expr[6]/zysb"/>
                        <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                	</li>
                	<li id="jcbw">
                		检查部位/检查内容:
                		<input class="nui-textbox" name="criteria/_expr[7]/jcbw"/>
                        <input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
                	</li>
                </ul>
                <ul>
                	<li id="bz">
                		备注:
                		<input class="nui-textbox" name="criteria/_expr[8]/bz"/>
                        <input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
                	</li>
                	<li id="th">
                		等轴图号:
                		<input class="nui-textbox" name="criteria/_expr[9]/lct"/>
                        <input class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
                	</li>
                </ul>
                
                <ul>
					<li id="lcv">
						轮次:
					</li>
					<li>
						<input class="nui-textbox" name="criteria/_expr[22]/lcv"/>
                    	<input class="nui-hidden" name="criteria/_expr[22]/_op" value="like">
						<input class="nui-hidden" name="criteria/_expr[27]/lcv"  />
                    	<input class="nui-hidden" name="criteria/_expr[27]/_op" value="notnull">
                    	<input class="nui-hidden" name="criteria/_expr[28]/lcv" value ="" />
                    	<input class="nui-hidden" name="criteria/_expr[28]/_op" value="<>">
                    	<input class="nui-hidden" name="criteria/_expr[29]/lcv" value ="PP,SP,EP,DP,PF,SF,EF,DF,P,S" />
                    	<input class="nui-hidden" name="criteria/_expr[29]/_op" value="in">
					</li>
					
                </ul>
                <ul>
                <li>
                <a class="nui-button" onclick="search()">
				                查询
	            </a>
	            <a class="nui-button" onclick="reset()">
	               	 重置
            	</a>
                	<a class="nui-button" name="ITMP_btnAddBatch"  onclick="batchAdd()">
	               	导入
            	</a>
            	<a class="nui-button" name="ITMP_btnExp" onclick="output()">
	               	 导出
            	</a>
                </li>
                </ul>
            	
            </div>
        </div>
        
        <div title="年度计划 "  region="west" width="250">
        <div class="nui-fit">
        	<ul id="tree1" class="nui-tree" resultAsTree="false" style="width:100%;height:100%;" idField="id" parentField="pid" 
            	dataField="treeDepts" textField="name" url="/itmp/annual/ConventionalIsland/Overhaul/deptTree.txt">
			</ul>
		</div>
    	</div>
    	<div title="center" region="center" >
        <div class="nui-panel" title="数据列表"  style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.ConventionalIslandDaily.queryTdgglndjhcgdrcjhscs.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false" allowAlternating="true">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" visible="false" allowSort="true" >
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" visible="false" allowSort="true" >
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" visible="false" allowSort="true" >
                            isdelete
                        </div>
                        <div name="rwqd" field="rwqd" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div name="gdh" field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div name="sapgnwz" field="sapgnwz" headerAlign="center" allowSort="true" >
        SAP功能位置
                        </div>
                        <div name="checkprojectname" field="checkprojectname" headerAlign="center" allowSort="true" >
                            检查项目描述
                        </div>
                        <div name="gnwz" field="gnwz" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div name="gl" field="gl" headerAlign="center" allowSort="true" >
                            管类
                        </div>
                        <div name="gxh" field="gxh" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div name="zysb" field="zysb" headerAlign="center" allowSort="true" >
                            主要设备
                        </div>
                        <div name="cz" field="cz" headerAlign="center" allowSort="true" >
                            材质
                        </div>
                        <div name="gczj" field="gczj" headerAlign="center" allowSort="true" >
                            公称直径(mm)
                        </div>
                        <div name="wj" field="wj" headerAlign="center" allowSort="true" >
                            外径(mm)
                        </div>
                        <div name="mybh" field="mybh" headerAlign="center" allowSort="true" >
                            名义壁厚(mm)
                        </div>
                        <div name="jk" field="jk" headerAlign="center" allowSort="true" width="40">
                            进口
                        </div>
                        <div name="ck" field="ck" headerAlign="center" allowSort="true" width="40">
                            出口
                        </div>
                        <div name="lct" field="lct" headerAlign="center" allowSort="true" >
                            流程图/等轴图号
                        </div>
                        <div name="jcbw" field="jcbw" headerAlign="center" allowSort="true" >
                            检查部位/检查内容
                        </div>
                        <div name="fac" field="fac" headerAlign="center" allowSort="true" >
                            FAC
                        </div>
                        <div name="chbw" field="chbw" headerAlign="center" allowSort="true" >
                            测厚部位
                        </div>
                        <div name="chsl" field="chsl" headerAlign="center" allowSort="true" >
                            测厚数量
                        </div>
                        <div name="utbw" field="utbw" headerAlign="center" allowSort="true" >
                            UT 部位
                        </div>
                        <div name="utsl" field="utsl" headerAlign="center" allowSort="true" >
                            UT数量
                        </div>
                        <div name="ident" field="ident" headerAlign="center" allowSort="true" >
                            标识
                        </div>
                        <div name="bz" field="bz" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    nui.parse();
    //按钮权限控制
    accessControlButton('<%=userRoleCodeList %>',6);
    var tree = nui.get("tree1");
    var grid = nui.get("datagrid1");
	var parms = "";
    var formData = new nui.Form("#form1").getData(false,false);
	var dataid = "";
	var jdid = getCookie('jdid');
	var hyhident = "";
	var flag = "y";
	var ndplan = "";
	if(jdid != '82'){
		tree.hideNode('hyh');
		flag = "n";
		hyhident = "压力管道";
		nui.get('hyhident').setValue(hyhident);
	}
$('#form1').hide();
tree.on("nodeselect", function (e) {
	reset();
	thishide();
	nui.get('processinstid').setValue(dataid);
	nui.get('ident').setValue(e.node.name);
    parms = e.node.id;
    for(var i=6;i<grid.columns.length;i++){
   		grid.hideColumn(grid.columns[i].field);
    }
    if (e.isLeaf) {
    	$('#form1').show();
       if("xmqd" == parms){//检查项目清单
       	var columns = [
        {type: 'checkcolumn'},
        {type: 'indexcolumn', header: '序号', headerAlign: 'center', align: 'center', displayField: 'indexcolumn',width:'40'},
        {field: 'workorder', header: '大纲工单', headerAlign: 'center', align: 'center', displayField: 'workorder',width:'80'},
        {field: 'mintenanceplan', header: '维护计划', headerAlign: 'center', align: 'center', displayField: 'mintenanceplan',width:'80'},
        {field: 'mintenanceproject', header: '任务清单', headerAlign: 'center', align: 'center', displayField: 'mintenanceproject',width:'80'},
        {field: 'rwqd', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'rwqd'},
        {field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
        {field: 'checkprojectname',header: '检查项目描述',headerAlign: 'center',lign: 'center',displayField: 'checkprojectname'},
        {field: 'gnwz', header: '功能位置', headerAlign: 'center', align: 'center', displayField: 'gnwz'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	
       	$('#rwqd').show();
       	$('#jcxmms').show();
       	$('#jcxmmsin').show();
       	$('#gnwz').show();
       	$('#jcxmms').html('检查项目描述:');
       }else if("ty" == parms){//通用
       	var columns = [
        {type: 'checkcolumn'},
        {field: 'rwqd', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'rwqd'},
        {field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
        {field: 'gl',header: '管类',headerAlign: 'center',lign: 'center',displayField: 'gl'},
        {field: 'gxh', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxh'},
        {field: 'zysb', header: '主要设备', headerAlign: 'center', align: 'center', displayField: 'zysb'},
        {field: 'cz', header: '材质', headerAlign: 'center', align: 'center', displayField: 'cz'},
        {field: 'gczj', header: '公称直径(mm)', headerAlign: 'center', align: 'center', displayField: 'gczj'},
        {field: 'wj', header: '外径(mm)', headerAlign: 'center', align: 'center', displayField: 'wj'},
        {field: 'mybh', header: '名义壁厚(mm)', headerAlign: 'center', align: 'center', displayField: 'mybh'},
        {field: 'jk', header: '进口', headerAlign: 'center', align: 'center', displayField: 'jk',width:'40'},
        {field: 'ck', header: '出口', headerAlign: 'center', align: 'center', displayField: 'ck',width:'40'},
        {field: 'lct', header: '流程图/等轴图号', headerAlign: 'center', align: 'center', displayField: 'lct'},
        {field: 'jcbw', header: '检查部位/检查内容', headerAlign: 'center', align: 'center', displayField: 'jcbw'},
        {field: 'bz', header: '备注', headerAlign: 'center', align: 'center', displayField: 'bz'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       $('#rwqd').show();
       $('#jcxmms').show();
       $('#jcxmmsin').show();
       $('#zysb').show();
       $('#bz').show();
       $('#jcxmms').html('检查部位/检查内容:');
       }else if("hyh" == parms){//红沿河专用
       	var columns = [
        {type: 'checkcolumn'},
        {field: 'rwqd', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'rwqd'},
        {field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
        {field: 'gl',header: '管类',headerAlign: 'center',lign: 'center',displayField: 'gl'},
        {field: 'gxh', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxh'},
        {field: 'cz', header: '材质', headerAlign: 'center', align: 'center', displayField: 'cz'},
        {field: 'lct', header: '等轴图号', headerAlign: 'center', align: 'center', displayField: 'lct'},
        {field: 'fac', header: 'FAC', headerAlign: 'center', align: 'center', displayField: 'fac'},
        {field: 'chbw', header: '测厚部位', headerAlign: 'center', align: 'center', displayField: 'chbw'},
        {field: 'chsl', header: '测厚数量', headerAlign: 'center', align: 'center', displayField: 'chsl'},
        {field: 'utbw', header: 'UT部位', headerAlign: 'center', align: 'center', displayField: 'utbw'},
        {field: 'utsl', header: 'UT数量', headerAlign: 'center', align: 'center', displayField: 'utsl'},
        {field: 'bz', header: '备注', headerAlign: 'center', align: 'center', displayField: 'bz'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
       	grid.setColumns(clo);
       $('#rwqd').show();
       $('#th').show();
       $('#bz').show();
       }
       search();
    }
});


function thishide(){
	$('#rwqd').hide();
   	$('#jcxmms').hide();
   	$('#gnwz').hide();
   	$('#zysb').hide();
   	$('#jcbw').hide();
   	$('#bz').hide();
   	$('#th').hide();
   	$('#jcxmmsin').hide();
}

var lc;
function setFormData(data){
        //跨页面传递的数据对象，克隆后才可以安全使用
        var infos = nui.clone(data);
        if (infos.pageType == "data") {
            var json = infos.record;
			dataid = json.ndjhcgd.id;
			nui.get('processinstid').setValue(dataid);
			ndplan = json.ndjhcgd.ndplan;
			lc = json.ndjhcgd.lc;
			$('#lcv').html(lc+":");
			//search();
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
    nui.get('processinstid').setValue(dataid);
    var json = form.getData(false,false);
    grid.load(json);//grid查询
}

//重置查询条件
function reset(){
    var form = new nui.Form("#form1");//将普通form转为nui的form
    form.reset();
    nui.get('processinstid').setValue(dataid);
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

function batchAdd(){
	 nui.open({
		showMaxButton : true,
        url: "/itmp/outlineCommon/importND/importNDPlanData.jsp",
        title: "导入数据", width: 600, height: 300,
        onload: function () {//弹出页面加载完成
        	var iframe = this.getIFrameEl();
            var data = {
            	processinstid:dataid,
            	entityName:"com.cgn.itmp.outlineandplan.annual.ConventionalIslandDaily.PlanGeneration",
            	tempFileName:"ndjhhd.xlsx",
            	tempLoadName:"年度计划常规岛部件导入模板"
            };//传入页面的json数据
             iframe.contentWindow.SetData(data);
        },
        ondestroy: function (action) {//弹出页面关闭前
        grid.reload();
        tree.reload();
    	if(jdid != '82'){
			tree.hideNode('hyh');
			flag = "n"; 
			hyhident = "压力管道";
			nui.get('hyhident').setValue(hyhident);
		}
    }
});
}

function output(){
	var form = new nui.Form("#form1");
    var json = form.getData(false,false);
    nui.open({
        url: "/itmp/outlineCommon/importND/expSelectFiled.jsp",
        title: "导出数据", width: 300, height: 150,
        showMaxButton : true,
        onload: function () {//弹出页面加载完成
        var iframe = this.getIFrameEl();
        var data = {
                entityName:"com.cgn.itmp.outlineandplan.annual.ConventionalIslandDaily.PlanGeneration",
                processinstid:dataid,
                dirpath:ndplan,
                ishyh:flag,
                filedName:['检查项目清单','专用检查计划']
        };//传入页面的json数据
            iframe.contentWindow.setFormData(data);
        },
        ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
        }
    });
 }
</script>
</body>
</html>
