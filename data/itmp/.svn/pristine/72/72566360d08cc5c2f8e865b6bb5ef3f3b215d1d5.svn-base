<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String detailed = request.getParameter("detailed");
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
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
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
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulCreate.PlanGeneration">
                <!-- 排序字段 -->
                <input id="orderone" class="nui-hidden" name="criteria/_orderby[1]/_property" value="ndorderno">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
                <input id="ordertwo" class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
                <input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
            	<ul>
            		<li id="rwqd">
            		维护项目:
            		<input class="nui-textbox" name="criteria/_expr[1]/detailed"/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
            	</li>
            	</ul>
                  <ul>
                	<li id="jcxmms">
                		检查项目描述:
                    </li>
                    <li id="jcxmmsin">
                    	<input class="nui-textbox" name="criteria/_expr[2]/inspectionscope"/>
                        <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                    </li>
                	<li id="gnwz">
                		功能位置:
                    </li>
                    <li id="gnwzin">
                    	<input class="nui-textbox" name="criteria/_expr[3]/seat"/>
                        <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                        <input id="ident" class="nui-hidden" name="criteria/_expr[4]/ident"/>
                        <input class="nui-hidden" name="criteria/_expr[4]/_op" value="=">
                    </li>
                  </ul>
                  <ul>
                	<li id="bj">
                		部件:
                		<input class="nui-textbox" name="criteria/_expr[5]/parts"/>
                        <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                	</li>
                	<li id="ckth">
						参考图号:
					</li>   
					<li id="ckthin">
						<input class="nui-textbox" name="criteria/_expr[24]/referencefigureno"/>
                        <input class="nui-hidden" name="criteria/_expr[24]/_op" value="like">
					</li>
                	<li id="th">
                		图号:
            		</li>
            		<li id="thin">
            			<input class="nui-textbox" name="criteria/_expr[7]/mapno"/>
                        <input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
            		</li>
            	  </ul>
                  <ul>
                	<li id="gzjz">
                		工作介质:
                		<input class="nui-textbox" name="criteria/_expr[8]/medium"/>
                        <input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
                	</li>
                	<li id="sybw">
                		试验部位:
                		<input class="nui-textbox" name="criteria/_expr[9]/site"/>
                        <input class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
                	</li>
                	<li id="zxdw">
                		执行单位:
                		<input class="nui-textbox" name="criteria/_expr[10]/executionunit"/>
                        <input class="nui-hidden" name="criteria/_expr[10]/_op" value="like">
                	</li>
                  </ul>
                  <ul>
                	<li id="hfh">
                		焊缝号:
                		<input class="nui-textbox" name="criteria/_expr[11]/hfnumber"/>
                        <input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">	
                	</li>
                	<li id="gxh">
                		管线号:
                		<input class="nui-textbox" name="criteria/_expr[12]/gxnumber"/>
                        <input class="nui-hidden" name="criteria/_expr[12]/_op" value="like">
                	</li>
                	<li id="lb">
                		类别:
                		<input class="nui-textbox" name="criteria/_expr[13]/category"/>
                        <input class="nui-hidden" name="criteria/_expr[13]/_op" value="like">
                	</li>
                  </ul>
                  <ul>
                	<li id="l">
                		列:
                		<input class="nui-textbox" name="criteria/_expr[14]/columnsint"/>
                        <input class="nui-hidden" name="criteria/_expr[14]/_op" value="like">
                	</li>
                	<li id="h">
                		行:
                		<input class="nui-textbox" name="criteria/_expr[15]/row"/>
                        <input class="nui-hidden" name="criteria/_expr[15]/_op" value="like">
                	</li>
                	<li id="xh">
                		项号:
                		<input class="nui-textbox" name="criteria/_expr[16]/itemno"/>
                        <input class="nui-hidden" name="criteria/_expr[16]/_op" value="like">
                	</li>
                	</ul>
                  <ul>
                	<li id="sbmc">
                		设备名称:
                		<input class="nui-textbox" name="criteria/_expr[17]/equipmentname"/>
                        <input class="nui-hidden" name="criteria/_expr[17]/_op" value="like">
                        <input id="processinstid" style="display: none" class="nui-textbox" name="criteria/_expr[21]/processinstid"/>
                        <input  class="nui-hidden" name="criteria/_expr[21]/_op" value="=">
                	</li>
                	<li id="xtsb">
                		系统设备:
                		<input class="nui-textbox" name="criteria/_expr[18]/systemdevice"/>
                        <input class="nui-hidden" name="criteria/_expr[18]/_op" value="like">
                	</li>
                	<li id="zch">
                		支撑号:
                		<input class="nui-textbox" name="criteria/_expr[19]/bracenumber"/>
                        <input class="nui-hidden" name="criteria/_expr[19]/_op" value="like">
                	</li>
                	
                	
                </ul>
                <ul>
					<li id="jclx">
						检查类型:
                		<input class="nui-textbox" name="criteria/_expr[20]/checktype"/>
                        <input class="nui-hidden" name="criteria/_expr[20]/_op" value="like">
					</li>    
					<li id="dzth">
						等轴图号:
                		<input class="nui-textbox" name="criteria/_expr[23]/ckt_dzhnumber"/>
                        <input class="nui-hidden" name="criteria/_expr[23]/_op" value="like">
					</li>   
					<li id="jcff">
                		检查方法:
                		<input class="nui-textbox" name="criteria/_expr[6]/method"/>
                        <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                	</li>
                </ul>
                
                <ul>
					<li id="sbbh">
						设备编号:
                		<input class="nui-textbox" name="criteria/_expr[25]/equipment"/>
                        <input class="nui-hidden" name="criteria/_expr[25]/_op" value="like">
					</li>   
					<li id="jjfs">
						接近方式:
                		<input class="nui-textbox" name="criteria/_expr[26]/approachmode"/>
                        <input class="nui-hidden" name="criteria/_expr[26]/_op" value="like">
					</li>  
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
                <a class="nui-button" name="ITMP_btnAddBatch" onclick="batchAdd()">
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
            	dataField="treeDepts" textField="name" url="<%=request.getContextPath()%>/annual/NuclearIsland/Overhaul/deptTree.txt">
			</ul>
		</div>
    	</div>
    	<div title="center" region="center" >
        <div class="nui-panel" title="数据列表"   style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tgglndjhhdjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryTgglndjhhdjhscs.biz.ext"
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
                        <div field="processinstid"  visible="false" headerAlign="center" allowSort="true" >
                            processinstid
                        </div>
                        <div field="orderno" visible="false" headerAlign="center" allowSort="true" >
                            orderno
                        </div>
                        <div field="isdelete" visible="false" headerAlign="center" allowSort="true" >
                            isdelete
                        </div>
                        <div name="detailed" field="detailed" headerAlign="center" allowSort="true" width="80">
                            维护项目
                        </div>
                         <div name="gdh" field="gdh" headerAlign="center" allowSort="true" width="80">
                            工单号
                        </div>
                        <div name="sapgnwz" field="sapgnwz" headerAlign="center" allowSort="true" >
        SAP功能位置
                        </div>
                        <div id="inspectionscope" name="inspectionscope" field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目描述
                        </div>
                        <div name="seat" field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div name="parts" field="parts" headerAlign="center" allowSort="true" >
                            部件
                        </div>
                        <div name="referencefigureno" field="referencefigureno" headerAlign="center" allowSort="true" width="65">
                            参考图号
                        </div>
                        <div name="itemno" field="itemno" headerAlign="center" allowSort="true" width="40">
                            项号
                        </div>
                        <div name="approachmode" field="approachmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
                        <div name="method" field="method" headerAlign="center" allowSort="true" width="65">
                            检查方法
                        </div>
                        <div name="program" field="program" headerAlign="center" allowSort="true" >
                            参考程序
                        </div>
                        <div name="tool" field="tool" headerAlign="center" allowSort="true" >
                            专用工具
                        </div>
                        <div name="mapno" field="mapno" headerAlign="center" allowSort="true" >
                            流程图号/参考设备图/等轴图号
                        </div>
                        <div name="medium" field="medium" headerAlign="center" allowSort="true" >
                            工作介质
                        </div>
                        <div name="operatingpressure" field="operatingpressure" headerAlign="center" allowSort="true" >
                            运行压力（Bar）
                        </div>
                        <div name="designpressure" field="designpressure" headerAlign="center" allowSort="true" >
                            设计压力（Bar）
                        </div>
                        <div name="testpressure" field="testpressure" headerAlign="center" allowSort="true" >
                            试验压力（Bar）
                        </div>
                        <div name="site" field="site" renderer="siteRenderer" headerAlign="center" allowSort="true" >
                            试验部位
                        </div>
                        <div name="testprocedure" field="testprocedure" headerAlign="center" allowSort="true" >
                            试验程序
                        </div>
                        <div name="prosource" field="prosource" headerAlign="center" allowSort="true" >
                            项目来源
                        </div>
                        <div name="equipmentname" field="equipmentname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div name="executionunit" field="executionunit" headerAlign="center" allowSort="true" >
                            执行单位
                        </div>
                        <div name="system" field="system" headerAlign="center" allowSort="true" >
                            系统
                        </div>
                        <div name="equipment" field="equipment" headerAlign="center" allowSort="true" >
                            设备
                        </div>
                        <div name="hfnumber" field="hfnumber" headerAlign="center" allowSort="true" >
                            焊缝号
                        </div>
                        <div name="number" field="number" headerAlign="center" allowSort="true" width="40">
                            数量
                        </div>
                        <div name="roomnumber" field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div name="systemdevice" field="systemdevice" headerAlign="center" allowSort="true" >
                            系统设备
                        </div>
                        <div name="category" field="category" headerAlign="center" allowSort="true" >
                            类别
                        </div>
                        <div name="ckt_dzhnumber" field="ckt_dzhnumber" headerAlign="center" allowSort="true" >
                            等轴图号
                        </div>
                        <div name="gxnumber" field="gxnumber" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div name="gj" field="gj" headerAlign="center" allowSort="true" >
                            管径(mm)
                        </div>
                        <div name="bw" field="bw" headerAlign="center" allowSort="true" >
                            保温
                        </div>
                        <div name="cl" field="cl" headerAlign="center" allowSort="true" >
                            材料
                        </div>
                        <div name="bracenumber" field="bracenumber" headerAlign="center" allowSort="true" >
                            支撑号
                        </div>
                        <div name="pmcycle" field="pmcycle" headerAlign="center" allowSort="true" >
                            PM周期
                        </div>
                        <div name="pmcode" field="pmcode" headerAlign="center" allowSort="true" >
                            PM编码
                        </div>
                        <div name="gfcycle" field="gfcycle" headerAlign="center" allowSort="true" >
                            规范周期
                        </div>
                        <div name="columnsint" field="columnsint" headerAlign="center" allowSort="true" width="40">
                            列
                        </div>
                        <div name="row" field="row" headerAlign="center" allowSort="true" width="40">
                            行
                        </div>
                        <div name="checktype" field="checktype" headerAlign="center" allowSort="true" >
                            检查类型
                        </div>
                        <div name="jccycle" field="jccycle" headerAlign="center" allowSort="true" >
                            检查周期
                        </div>
                        <div name="remark" field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div name="ident" visible="false" field="ident" headerAlign="center" allowSort="true" width="40">
                            标识
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
	var rqident = "";
	var flag = "y";
	var ndplan = "";
	if(jdid != '86'){//台山专用
		tree.hideNode('rq');
		flag = "n";
		rqident = "容器和热交换器";
		//nui.get('hyhident').setValue(hyhident);
	}
	$('#form1').hide();
	//grid.load(formData);

tree.on("nodeselect", function (e) {
	$('#form1').show();
	reset();
	thishide();
	nui.get('processinstid').setValue(dataid);
	nui.get('ident').setValue(e.node.name);
    parms = e.node.id;
    for(var i=6;i<grid.columns.length;i++){
   		grid.hideColumn(grid.columns[i].field);
    }
    if (e.isLeaf) {
       if("fd" == parms){//规范法定检测项目清单
       	var columns = [
        {type: 'checkcolumn'},
        {type: 'indexcolumn', header: '序号', headerAlign: 'center', align: 'center', displayField: 'indexcolumn',width:'40'},
        {field: 'workorder', header: '大纲工单', headerAlign: 'center', align: 'center', displayField: 'workorder',width:'80'},
        {field: 'mintenanceplan', header: '维护计划', headerAlign: 'center', align: 'center', displayField: 'mintenanceplan',width:'80'},
        {field: 'mintenanceproject', header: '任务清单', headerAlign: 'center', align: 'center', displayField: 'mintenanceproject',width:'80'},
        {field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
        {field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
        {field: 'inspectionscope',header: '检查项目描述',headerAlign: 'center',lign: 'center',displayField: 'inspectionscope'},
        {field: 'seat', header: '功能位置', headerAlign: 'center', align: 'center', displayField: 'seat'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
   		var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#rwqd').show();
	   	$('#jcxmms').show();
	   	$('#gnwz').show();
	   	$('#jcxmms').html('检查项目描述:');
	   	$('#gnwz').html('功能位置:');
	   	$('#jcxmmsin').show();
   		$('#gnwzin').show();
       }if("ffd" == parms){//规范非法定检测项目清单
       	var columns = [
        {type: 'checkcolumn'},
        {type: 'indexcolumn', header: '序号', headerAlign: 'center', align: 'center', displayField: 'indexcolumn',width:'40'},
        {field: 'workorder', header: '大纲工单', headerAlign: 'center', align: 'center', displayField: 'workorder',width:'80'},
        {field: 'mintenanceplan', header: '维护计划', headerAlign: 'center', align: 'center', displayField: 'mintenanceplan',width:'80'},
        {field: 'mintenanceproject', header: '任务清单', headerAlign: 'center', align: 'center', displayField: 'mintenanceproject',width:'80'},
        {field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
        {field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
        {field: 'inspectionscope',header: '检查项目描述',headerAlign: 'center',lign: 'center',displayField: 'inspectionscope'},
        {field: 'seat', header: '功能位置', headerAlign: 'center', align: 'center', displayField: 'seat'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
   		var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#rwqd').show();
	   	$('#jcxmms').show();
	   	$('#gnwz').show();
	   	$('#jcxmms').html('检查项目描述:');
	   	$('#gnwz').html('功能位置:');
	   	$('#jcxmmsin').show();
   		$('#gnwzin').show();
       }if("zy" == parms){//在役检查
       	var columns = [
        {type: 'checkcolumn'},
        {field: 'parts', header: '部件', headerAlign: 'center', align: 'center', displayField: 'parts'},
        {field: 'referencefigureno',header: '参考图号',headerAlign: 'center',lign: 'center',displayField: 'referencefigureno',width:'60'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'seat', header: '被检部位', headerAlign: 'center', align: 'center', displayField: 'seat'},
        {field: 'inspectionscope', header: '检查内容/检查范围', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'approachmode', header: '接近方式', headerAlign: 'center', align: 'center', displayField: 'approachmode'},
        {field: 'method', header: '检查方法', headerAlign: 'center', align: 'center', displayField: 'method',width:'65'},
        {field: 'program', header: '参考程序', headerAlign: 'center', align: 'center', displayField: 'program'},
        {field: 'tool', header: '专用工具', headerAlign: 'center', align: 'center', displayField: 'tool'},
        {field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
        {field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
        $('#rwqd').show();
		$('#jcxmms').show();
		$('#gnwz').show();
		$('#bj').show();
		$('#jcff').show();
		$('#jcxmms').html('检查内容/检查范围:');
		$('#gnwz').html('被检部位:');
		$('#jcxmmsin').show();
   		$('#gnwzin').show();
       }if("sy" == parms){//水压检查
       	var columns = [
        {type: 'checkcolumn'},
        {field: 'parts', header: '部件', headerAlign: 'center', align: 'center', displayField: 'parts'},
        {field: 'referencefigureno',header: '参考图号',headerAlign: 'center',lign: 'center',displayField: 'referencefigureno',width:'60'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'inspectionscope', header: '检查内容/检查范围', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'mapno', header: '流程图号/参考设备图/等轴图号', headerAlign: 'center', align: 'center', displayField: 'mapno'},
        {field: 'medium', header: '工作介质', headerAlign: 'center', align: 'center', displayField: 'medium'},
        {field: 'operatingpressure', header: '运行压力（Bar）', headerAlign: 'center', align: 'center', displayField: 'operatingpressure'},
        {field: 'designpressure', header: '设计压力（Bar）', headerAlign: 'center', align: 'center', displayField: 'designpressure'},
        {field: 'testpressure', header: '试验压力（Bar）', headerAlign: 'center', align: 'center', displayField: 'testpressure'},
        {field: 'site', header: '试验部位',renderer:"siteRenderer", headerAlign: 'center', align: 'center', displayField: 'site'},
        {field: 'testprocedure', header: '试验程序', headerAlign: 'center', align: 'center', displayField: 'testprocedure'},
        {field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
        {field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#jcxmms').show();
	   	$('#th').show();
	   	$('#gzjz').show();
	   	$('#sybw').show();
	   	$('#rwqd').show();
	   	$('#thin').show();
	   	$('#gnwzin').show();
	   	$('#jcxmms').html('检查内容/检查范围:');
	   	$('#th').html('流程图号/参考设备图/等轴图号:');
       }if("gd" == parms){//焊缝（管道/支撑）
       	var columns = [
        {type: 'checkcolumn'},
       	{field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
       	{field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'inspectionscope', header: '检查项目名称', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'equipment', header: '设备', headerAlign: 'center', align: 'center', displayField: 'equipment'},
        {field: 'hfnumber', header: '焊缝号', headerAlign: 'center', align: 'center', displayField: 'hfnumber'},
        {field: 'number', header: '数量', headerAlign: 'center', align: 'center', displayField: 'number',width:'40'},
        {field: 'gxnumber', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxnumber'},
        {field: 'mapno', header: '参考图号/等轴图号', headerAlign: 'center', align: 'center', displayField: 'mapno',width:'100'},
        {field: 'roomnumber', header: '房间号', headerAlign: 'center', align: 'center', displayField: 'roomnumber'},
        {field: 'method', header: '检查方法', headerAlign: 'center', align: 'center', displayField: 'method',width:'65'},
        {field: 'program', header: '检查程序', headerAlign: 'center', align: 'center', displayField: 'program'},
        {field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#rwqd').show();
       	$('#jcxmms').show();
       	$('#jcxmmsin').show();
       	$('#hfh').show();
       	$('#gxh').show();
       	$('#th').show();
       	$('#thin').show();
       	$('#jcff').show();
       	$('#jcxmms').html('检查项目名称:');
       	$('#th').html('参考图号/等轴图号:');
       }if("boos" == parms){//焊缝（BOOS头）
       	var columns = [
        {type: 'checkcolumn'},
       	{field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
       	{field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'inspectionscope', header: '检查项目名称', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'systemdevice', header: '系统设备', headerAlign: 'center', align: 'center', displayField: 'systemdevice'},
        {field: 'roomnumber', header: '房间号', headerAlign: 'center', align: 'center', displayField: 'roomnumber'},
        {field: 'category', header: '类别', headerAlign: 'center',renderer: 'lbRenderer', align: 'center', displayField: 'category'},
        {field: 'ckt_dzhnumber', header: '等轴图号', headerAlign: 'center', align: 'center', displayField: 'ckt_dzhnumber'},
        {field: 'gxnumber', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxnumber'},
        {field: 'gj', header: '管径(mm)', headerAlign: 'center', align: 'center', displayField: 'gj'},
        {field: 'hfnumber', header: '焊缝号', headerAlign: 'center', align: 'center', displayField: 'hfnumber'},
        {field: 'bw', header: '保温', headerAlign: 'center', align: 'center', displayField: 'bw'},
        {field: 'cl', header: '材料', headerAlign: 'center', align: 'center', displayField: 'cl'},
        {field: 'method', header: '检查方法', headerAlign: 'center', align: 'center', displayField: 'method'},
        {field: 'program', header: '检查程序', headerAlign: 'center', align: 'center', displayField: 'program'},
        {field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#rwqd').show();
       	$('#jcxmms').show();
       	$('#jcxmmsin').show();
       	$('#xtsb').show();
       	$('#lb').show();
       	$('#hfh').show();
       	$('#gxh').show();
       	$('#jcff').show();
       	$('#jcff').show();
       	$('#dzth').show();
       	$('#jcxmms').html('检查项目名称:');
       }if("zc" == parms){//支撑/支架
       	var columns = [
        {type: 'checkcolumn'},
       	{field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
       	{field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'inspectionscope', header: '检查项目名称', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'bracenumber', header: '支撑号', headerAlign: 'center', align: 'center', displayField: 'bracenumber'},
        {field: 'gxnumber', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxnumber'},
        {field: 'referencefigureno', header: '参考图号', headerAlign: 'center', align: 'center', displayField: 'referencefigureno',width:'60'},
        {field: 'roomnumber', header: '房间号', headerAlign: 'center', align: 'center', displayField: 'roomnumber'},
        {field: 'approachmode', header: '接近方式', headerAlign: 'center', align: 'center', displayField: 'approachmode'},
        {field: 'method', header: '检查方法', headerAlign: 'center', align: 'center', displayField: 'method',width:'65'},
        {field: 'program', header: '检查程序', headerAlign: 'center', align: 'center', displayField: 'program'},
        {field: 'pmcycle', header: 'PM周期', headerAlign: 'center', align: 'center', displayField: 'pmcycle'},
        {field: 'pmcode', header: 'PM编码', headerAlign: 'center', align: 'center', displayField: 'pmcode'},
        {field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#rwqd').show();
       	$('#jcxmms').show();
       	$('#jcxmmsin').show();
       	$('#zch').show();
       	$('#gxh').show();
       	$('#jcff').show();
       	$('#jcxmms').html('检查项目名称:');
       	$('#ckth').html('参考图号:');
       	$('#ckth').show();
       	$('#ckthin').show();
       }if("fm" == parms){//阀门
       	var columns = [
        {type: 'checkcolumn'},
       	{field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
       	{field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'inspectionscope', header: '检查项目名称', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'equipment', header: '设备/部件', headerAlign: 'center', align: 'center', displayField: 'equipment'},
        {field: 'seat', header: '功能位置', headerAlign: 'center', align: 'center', displayField: 'seat'},
        {field: 'site', header: '检查部位', headerAlign: 'center', align: 'center', displayField: 'site'},
        {field: 'approachmode', header: '接近方式', headerAlign: 'center', align: 'center', displayField: 'approachmode'},
        {field: 'gxnumber', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxnumber'},
        {field: 'ckt_dzhnumber', header: '等轴图号', headerAlign: 'center', align: 'center', displayField: 'ckt_dzhnumber'},
        {field: 'roomnumber', header: '房间号', headerAlign: 'center', align: 'center', displayField: 'roomnumber'},
        {field: 'method', header: '检查方法', headerAlign: 'center', align: 'center', displayField: 'method',width:'65'},
        {field: 'program', header: '检查程序', headerAlign: 'center', align: 'center', displayField: 'program'},
        {field: 'gfcycle', header: '规范周期', headerAlign: 'center', align: 'center', displayField: 'gfcycle'},
        {field: 'pmcycle', header: 'PM周期', headerAlign: 'center', align: 'center', displayField: 'pmcycle'},
        {field: 'pmcode', header: 'PM编码', headerAlign: 'center', align: 'center', displayField: 'pmcode'},
        {field: 'executionunit', header: '执行单位', headerAlign: 'center', align: 'center', displayField: 'executionunit'},
        {field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#rwqd').show();
       	$('#jcxmms').show();
       	$('#jcxmmsin').show();
       	$('#gnwz').show();
       	$('#gnwzin').show();
       	$('#gxh').show();
       	$('#dzth').show();
       	$('#jcff').show();
       	$('#zxdw').show();
       	$('#jcxmms').html('检查项目名称:');
       	$('#gnwz').html('功能位置:');
       }if("rq" == parms){//容器和热交换器，台山专用（jdid=86）
        var columns = [
        {type: 'checkcolumn'},
       	{field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
       	{field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'inspectionscope', header: '检查项目名称', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'seat', header: '功能位置', headerAlign: 'center', align: 'center', displayField: 'seat'},
        {field: 'equipmentname', header: '设备名称', headerAlign: 'center', align: 'center', displayField: 'equipmentname'},
        {field: 'gxnumber', header: '管壳侧', headerAlign: 'center', align: 'center', displayField: 'gxnumber'},
        {field: 'site', header: '被检部位', headerAlign: 'center', align: 'center', displayField: 'site'},
        {field: 'referencefigureno', header: '设备图号', headerAlign: 'center', align: 'center', displayField: 'referencefigureno'},
        {field: 'method', header: '检查方法', headerAlign: 'center', align: 'center', displayField: 'method',width:'65'},
        {field: 'approachmode', header: '接近方式', headerAlign: 'center', align: 'center', displayField: 'approachmode'},
        {field: 'program', header: '检查程序', headerAlign: 'center', align: 'center', displayField: 'program'},
        {field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#rwqd').show();
       	$('#jcxmms').show();
       	$('#jcxmmsin').show();
       	$('#gnwz').show();
       	$('#gnwzin').show();
       	$('#jcff').show();
       	$('#jjfs').show();
       	$('#jjfs').show();
       	$('#ckth').show();
       	$('#ckthin').show();
       	$('#jcxmms').html('检查项目名称:');
       	$('#gnwz').html('功能位置:');
       	$('#ckth').html('设备图号:');
       	
       }if("crg" == parms){//传热管
       	var columns = [
        {type: 'checkcolumn'},
       	{field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
       	{field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'inspectionscope', header: '检查项目名称', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'equipmentname', header: '设备名称', headerAlign: 'center', align: 'center', displayField: 'equipmentname'},
        {field: 'equipment', header: '设备编号', headerAlign: 'center', align: 'center', displayField: 'equipment'},
        {field: 'columnsint', header: '列', headerAlign: 'center', align: 'center', displayField: 'columnsint',width:'40'},
        {field: 'row', header: '行', headerAlign: 'center', align: 'center', displayField: 'row',width:'40'},
        {field: 'checktype', header: '检查类型', renderer:'lxRenderer', headerAlign: 'center', align: 'center', displayField: 'checktype'},
        {field: 'method', header: '检查方法', headerAlign: 'center', align: 'center', displayField: 'method',width:'65'},
        {field: 'program', header: '检查程序', headerAlign: 'center', align: 'center', displayField: 'program'},
        {field: 'jccycle', header: '检查周期', headerAlign: 'center', align: 'center', displayField: 'jccycle'},
        {field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#rwqd').show();
       	$('#jcxmms').show();
       	$('#jcxmmsin').show();
       	$('#l').show();
       	$('#h').show();
       	$('#jclx').show();
       	$('#sbbh').show();
       	$('#jcxmms').html('检查项目名称:');
       }
       search();
    }else{
    	$('#form1').hide();
    	if("fxy" == parms){//规范非法定在役检查细化表
    	$('#form1').show();
       	var columns = [
        {type: 'checkcolumn'},
        {field: 'parts', header: '部件', headerAlign: 'center', align: 'center', displayField: 'parts'},
        {field: 'itemno',header: '项号',headerAlign: 'center',lign: 'center',displayField: 'itemno',width:'40'},
        {field: 'prosource', header: '项目来源', headerAlign: 'center', align: 'center', displayField: 'prosource'},
        {field: 'equipment', header: '设备名称', headerAlign: 'center', align: 'center', displayField: 'equipment'},
        {field: 'seat', header: '功能位置', headerAlign: 'center', align: 'center', displayField: 'seat'},
        {field: 'mapno', header: '图号', headerAlign: 'center', align: 'center', displayField: 'mapno',width:'60'},
        {field: 'inspectionscope', header: '检查内容/检查部件/检查要求', headerAlign: 'center', align: 'center', displayField: 'inspectionscope'},
        {field: 'approachmode', header: '接近方式', headerAlign: 'center', align: 'center', displayField: 'approachmode'},
        {field: 'method', header: '检查方法', headerAlign: 'center', align: 'center', displayField: 'method',width:'65'},
        {field: 'executionunit', header: '执行单位', headerAlign: 'center', align: 'center', displayField: 'executionunit'},
        {field: 'detailed', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'detailed',width:'80'},
        {field: 'gdh', header: '工单号', headerAlign: 'center', align: 'center', displayField: 'gdh',width:'80'},
       	{field: 'sapgnwz', header: 'SAP功能位置', headerAlign: 'center', align: 'center', displayField: 'sapgnwz'},
       	{field: 'remark', header: '备注', headerAlign: 'center', align: 'center', displayField: 'remark'},
       	{field: 'lcv', header: lc, headerAlign: 'center', align: 'center', displayField: 'lcv',width:'40'}
   		];
       	var clo = JSON.parse(JSON.stringify(columns));
        grid.setColumns(clo);
       	$('#bj').show();
	   	$('#xh').show();
	   	$('#sbmc').show();
	   	$('#gnwz').show();
	   	$('#gnwzin').show();
	   	$('#jcxmms').show();
	   	$('#jcxmmsin').show();
	   	$('#zxdw').show();
	   	$('#rwqd').show();
	   	$('#jcxmms').html('检查内容/检查部件/检查要求:');
	   	$('#gnwz').html('功能位置:');
	   	search();
       }
    }
});


function thishide(){
	$('#xtsb').hide();
	$('#rwqd').hide();
   	$('#jcxmms').hide();
   	$('#gnwz').hide();
   	$('#bj').hide();
   	$('#jcff').hide();
   	$('#th').hide();
   	$('#gzjz').hide();
   	$('#sybw').hide();
   	$('#zxdw').hide();
   	$('#hfh').hide();
   	$('#gxh').hide();
   	$('#lb').hide();
   	$('#l').hide();
   	$('#h').hide();
   	$('#xh').hide();
   	$('#sbmc').hide();
   	$('#zch').hide();
   	$('#jclx').hide();
   	$('#jcxmmsin').hide();
   	$('#gnwzin').hide();
   	$('#thin').hide();
   	$('#dzth').hide();
   	$('#ckth').hide();
   	$('#ckthin').hide();
   	$('#sbbh').hide();
   	$('#jjfs').hide();
   	
}
var lc = "";
function setFormData(data){
        //跨页面传递的数据对象，克隆后才可以安全使用
        var infos = nui.clone(data);
        if (infos.pageType == "data") {
            var json = infos.record;
			dataid = json.ndjh.id;
			lc = json.ndjh.lc;
			nui.get('processinstid').setValue(dataid);
			ndplan = json.ndjh.ndplan;
			$('#lcv').html(lc+":");
			//search();
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
}


//导入
function batchAdd(){
	 nui.open({
		showMaxButton : true,
        url: "<%=request.getContextPath()%>/outlineCommon/importND/importNDPlanData.jsp",
        title: "导入数据", width: 600, height: 300,
        onload: function () {//弹出页面加载完成
        	var iframe = this.getIFrameEl();
            var data = {
            	processinstid:dataid,
            	entityName:"com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulCreate.PlanGeneration",
            	tempFileName:"ndjhhd.xlsx",
            	tempLoadName:"年度计划导入模板"
            };//传入页面的json数据
             iframe.contentWindow.SetData(data);
        },
        ondestroy: function (action) {//弹出页面关闭前
        grid.reload();
        tree.reload();
        if(jdid != '86'){
			tree.hideNode('rq');
			flag = "n";
			rqident = "容器和热交换器";
		}
    }
});
}

function output(){
	var form = new nui.Form("#form1");
    var json = form.getData(false,false);
    nui.open({
        url: "/itmp/outlineCommon/importND/expSelectFiled.jsp",
        title: "导出数据", width: 350, height: 250,
        showMaxButton : true,
        onload: function () {//弹出页面加载完成
        var iframe = this.getIFrameEl();
        var data = {
                entityName:"com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulCreate.PlanGeneration",
                processinstid:dataid,
                dirpath:ndplan,
                filedName:['检查项目清单','法定在役检查细化表','非法定在役检查细化表','专用检查计划','图例','专用检查工具清单','检查程序清单']
        };//传入页面的json数据
            iframe.contentWindow.setFormData(data);
        },
        ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
        }
    });
 }
 
 function siteRenderer(e){
			return nui.getDictText("site", e.value);
		}

 function lxRenderer(e){
			return nui.getDictText("JCLX", e.value);
		}		
		
function lbRenderer(e) {
            return nui.getDictText("LB", e.value);
        }		
</script>
</body>
</html>
