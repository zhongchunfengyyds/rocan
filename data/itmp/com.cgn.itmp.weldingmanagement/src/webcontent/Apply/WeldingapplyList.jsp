<!DOCTYPE html>

<%@page import="com.cgn.itmp.basecommon.CommonUtil"%>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%
    
    IUserObject cu = CommonUtil.getUserObject();
    String userid = cu.getUserId();
    String username = cu.getUserRealName();

%>
<%--
- Author(s): LENOVO
- Date: 2019-08-14 10:51:27
- Description:
    --%>
    <head>
        <title>
            	焊接申请管理
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	<style type="text/css">
		.btn-default:focus, .btn-default.focus {
    background-color: #fff!important;
}
	</style>
</head>
<body style="background-color: #f1f1f1;width: 98%; height: 97%;">
  
<div class="bs-docs-section" style="height: 100%">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()">
										模糊查询 </a> <a id="allQuery" style="display: none"
										class="btn btn-default" onclick="searchs()"> 查询 </a> <a
										class="btn btn-default" id="reset" onclick="reset()"> 重置 </a>
									<div onclick="showquery()" id="funquery"
										class="fa fa-chevron-down fa-1x">
										&nbsp;<a id="scbt">高级查询</a>
									</div>
								</div>
							</td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
					</tr>
				</table>
					<div id="form1" class="nui-form display" align="center" style="height:200px">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.Weldingapply.WeldingApplySearch">
                <!-- 排序字段 -->
                 <table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
                    <tr>
                        <td class="form_label">
                            大修轮次:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/rounds"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            主票号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/ticketnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            描述:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/describe"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            功能位置:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[4]/position"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            上游设备或部件名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[5]/upper"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            下游设备或部件名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[6]/down"/>
                            <input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            制造级别（核岛为RCCM级别、常规岛为电力级别）:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[7]/level"/>
                            <input class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
                        </td>
                        <td class="form_label">
                            焊缝号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[8]/weldnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                    	 <td class="form_label">
                           焊缝数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[9]/numberwelds"/>
                            <input class="nui-hidden" name="criteria/_expr[9]/_op" value="=">
                        </td>
                        <td class="form_label">
                            是否为CCM设备:
                        </td>
                        <td colspan="1">
                         <div name="criteria/_expr[10]/whetherccm" style="width:70%" class="nui-checkboxlist" repeatItems="2"
								textField="text" valueField="text" multiSelect="false" onload="onLoad"
								url="/itmp/data/check.txt" dataField="checks" >
						</div>
                            <input class="nui-hidden" name="criteria/_expr[10]/_op" value="=">
                            
                        </td>
                    </tr>
                    <tr>
                    	 <td class="form_label">
                           地理位置:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[11]/geographicalposition"/>
                            <input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            是否属于重要敏感区域:
                        </td>
                        <td colspan="1">
                            <div id="cbl1" style="width:70%" name="criteria/_expr[12]/geographical" class="nui-checkboxlist" repeatItems="2" repeatLayout="flow"
								textField="text" valueField="text" multiSelect="false" onload="onLoad"
								url="/itmp/data/check.txt" dataField="checks" >
							</div>
                            <input class="nui-hidden" name="criteria/_expr[12]/_op" value="=">
                            
                        </td>
                    </tr>
                    <tr>
                    	<td class="form_label">
                           	WA编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[13]/applyno"/>
                            <input class="nui-hidden" name="criteria/_expr[13]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[13]/_likeRule" value="all">
                        </td>
                    	<td class="form_label">
                           	联系人/联系电话:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[14]/contact"/>
                            <input class="nui-hidden" name="criteria/_expr[14]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[14]/_likeRule" value="all">
                        </td>
                    	
                    </tr>
                    <tr>
                        <td class="form_label">
                            接头形式:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[15]/form"/>
                            <input class="nui-hidden" name="criteria/_expr[15]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[15]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            WA状态:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" dictTypeId="Apply_status" name="criteria/_expr[16]/status"/>
                            <input class="nui-hidden" name="criteria/_expr[16]/_op" value="=">
                        </td>
                        <td colspan="1"><input class="nui-hidden"
								name="criteria/_expr[17]/isdel" value="0" /> 
								<input class="nui-hidden" name="criteria/_expr[17]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[17]/_likeRule"
								value="all">
								<input class="nui-hidden" id="con_jdid" name="criteria/_expr[18]/jd" /> 
					            <input class="nui-hidden" name="criteria/_expr[18]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[18]/_likeRule" value="end">
					            
					            <input class="nui-hidden" name="criteria/_orderby[19]/_property"
                                value="createtime"> <input class="nui-hidden"
                                                        name="criteria/_orderby[19]/_sort" value="desc">
					            </td>
                   
                    </tr>
								</table>
					</div>
				</div>
			</div>
		</div>
		<div class="" 
		 showToolbar="false"
		showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0;  padding: 5px 0px;">
			<table style="width: 100%;">
        <div class=""  style="width:100%;" showToolbar="false" showFooter="false" >
                        <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
					<table style="width: 100%;">
						<tr>
							<td style="width: 100%;">
								<button class="btn btn-default"  id="addbtn" onclick="add()">
									<span class=""></span> 
									申请
								</button>
								
								<button class="btn btn-default" onclick="ybrw()"
									disabled="disabled" title="请选择需修改条目" id="editbtn">
									<span class=""></span> 
									修改
								</button>
								
								<button class="btn btn-default"
									type="button" id="pcancel" onclick="cancel()">
									<span class=""></span> 
									项目取消
								</button>
								
								<button class="btn btn-default" id="output"
									type="button" onclick="output()">
									<span class=""></span> 
									<b:message key="btn-export" />
								</button>
								
								<!-- <button class="btn btn-default"
									type="button" onclick="createQualityPlan()">
									<span class=""></span>&nbsp;
									创建焊接质量计划
								</button> -->
								
								<button class="btn btn-default" id="menuButton" disabled  onclick="createQualityPlan()" name="ITMP_btnAdd">创建焊接质量计划</button>
			                    <div id="popupMenu"  style="width:149px;height: 22px;position: absolute;left:339px;z-index:100;top:1px;">
			                        <button style="background-color:#fff;font-size:12px;padding:0 2px;width:72px;display: none" disabled class="btn " id="addone" onclick="addone()">单焊缝WQP</button>
			                        <button style="background-color:#fff;font-size:12px;padding:0 2px;width:72px;display: none" disabled class="btn" id="addmore" onclick="addmore()">多焊缝WQP</button>
			
			                    </div>
							</td>
						</tr>
					</table>
				</div>
				</table>
				</div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="weldingapplys"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.weldingapplybiz.queryWeldingapplyall.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false"
                        allowCellWrap="true">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="jzstatus" headerAlign="center" allowSort="true" >
                            机组状态
                        </div>
                        <div field="rounds" headerAlign="center" allowSort="true" >
                            大修轮次
                        </div>
                         <div field="status" headerAlign="center" allowSort="true" renderer="applyRender">
                WA状态
                        </div>
                        <div field="applyno" headerAlign="center" allowSort="true" renderer="showwanumber">
                WA编号
                        </div>
                        <div field="qualitynumber" headerAlign="center" allowSort="true" renderer="Quality">
                WQP编号
                        </div>
                        <div field="ticketnumber" headerAlign="center" allowSort="true" >
                            主票号
                        </div>
                        <div field="describe" width="200" headerAlign="center" allowSort="true" >
                            描述
                        </div>
                        <div field="position" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                 <div header="等轴图（版本）或设备图（版本）" allowSort="true">
                      <div property="columns">
                        <div field="equiaxedgraph" width="150" headerAlign="center" allowSort="true">
                        名称/版本
                        </div>
                        

                        <div field="fildid" headerAlign="center" width="150" allowSort="true" renderer="setFile">
                            	附件
                        </div>
                       </div>
                 </div>
                     
                        <div field="flowchart" headerAlign="center" allowSort="true" >
                            流程图
                        </div>
                        <div field="upper" headerAlign="center" allowSort="true" width="140" >
                            上游设备或部件名称
                        </div>
                        <div field="down" headerAlign="center" allowSort="true" width="140" >
                            下游设备或部件名称
                        </div>
                        <div field="component1material" headerAlign="center" allowSort="true"  width="140">
                           部件1材质
                        </div>
                        <div field="component2material" headerAlign="center" allowSort="true" >
                            部件2材质
                        </div>
                        <div field="component1interfacesize" headerAlign="center" allowSort="true" >
                            部件1接口尺寸
                        </div>
                        <div field="component2interfacesize" headerAlign="center" allowSort="true" >
                            部件2接口尺寸
                        </div>
                        <div field="component1interfacethickness" headerAlign="center" allowSort="true" >
                            部件1接口厚度
                        </div>
                        <div field="component2interfacethickness" headerAlign="center" allowSort="true" >
                            部件2接口厚度
                        </div>
                        <div field="level" headerAlign="center" allowSort="true"  width="340">
                            制造级别（核岛为RCCM级别、常规岛为电力级别）
                        </div>
                        
                        <div field="weldnumber" headerAlign="center" allowSort="true" >
                            焊缝号
                        </div>
                        <div field="numberwelds" headerAlign="center" allowSort="true" >
                            焊缝数量
                        </div>
                        <div field="form" headerAlign="center" allowSort="true"  renderer="dicJTXS">
                            接头形式
                        </div>
                        <div field="temperature" headerAlign="center" allowSort="true" width="200" >
                            工作温度（℃）/压力（MPa）
                        </div>
                        <div field="whetherccm" headerAlign="center" allowSort="true"  width="140">
                            是否为CCM设备
                        </div>
               			<div field="geographicalposition" headerAlign="center" allowSort="true" >
                            	地理位置
                        </div>
                        <div field="geographical" headerAlign="center" allowSort="true"  width="150">
                            是否属于重要敏感区域
                        </div>
                        <div field="contact" headerAlign="center" allowSort="trsue" width="140" >
                            联系人/联系方式
                        </div>
                       
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="JD" headerAlign="center" allowSort="true" visible="false">
                            基地
                        </div>
                        <div field="processInstId" headerAlign="center" allowSort="true" visible="false">
                            
                        </div>
                        <div field="workItemId" headerAlign="center" allowSort="true" visible="false">
                            
                        </div>
                        <div field="applicant" headerAlign="center" allowSort="true" visible="false">
                            
                        </div>
                    </div>
		</div>
		</div>
		</div>
	</div>
        <script type="text/javascript">
            nui.parse();
            accessControlButton('<%=userRoleCodeList%>',11);
            var grid = nui.get("datagrid1");
            nui.get('con_jdid').setValue(getCookie('jdid'));
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
            
            function setData(data){
            	
				var formData = new nui.Form("#form1").getData(false,false);
				formData["criteria/_expr[16]/status"] = data;
	            grid.load(formData);
            }
            
            //点击展示数据
            $(function() {
			
			$('#editbtn').attr('title', "请选择需修改条目");
		});
           function Quality (e) {
	        value = e.value;
            if(value!=null){
            if(value.indexOf(",")!=-1){
            
            var strs=value.split(",");
            var str="";
            for(var i=0;i<strs.length;i++){
            	if(str.length==1){
            	
            	str += '<a onclick="showQuality(\''+strs[i]+'\')">'+strs[i]+'</a>';
            	}else if(strs.length>1){
            	
	            	if(i!=strs.length-1){
	            	str += '<a onclick="showQuality(\''+strs[i]+'\')">'+strs[i]+'</a> , ';
	            	}else{
	            		str += '<a onclick="showQuality(\''+strs[i]+'\')">'+strs[i]+'</a>';
	            	}
            	   }  
            	}
            }else{
            	var str=value;
            	str = '<a onclick="showQuality(\''+str+'\')">'+str+'</a>';
            }
            e.cellStyle ="cursor: pointer"; 
           	return str;
    			}
    		
		}
		function showQuality(value){
			nui.open({
				showMaxButton : true,
				url: "/itmp/weldingmanagement/Apply/WeldingapplyShowQuality.jsp",
                    title: "焊接质量计划", width: 950, height: 300,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"show",record:{qualitynumber:value}};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    $("#editbtn").prop("disabled", "disabled");
                    $("#menuButton").prop("disabled", "disabled");
                    $("#addone").prop("disabled", "disabled");
					$("#addmore").prop("disabled", "disabled");
					$("#addone").hide();
					$("#addmore").hide();
                    grid.reload();
                    }
			})
		}
		
		//单焊接模板
            function addone(){
	            var row =grid.getSelected();
	            var str=row.contact;
				var strs=str.split(",");
				var major="";
				for(var i=0;i<strs.length;i++){
					major=strs[0];
				}
				if(major==""){
					nui.alert("选择有误请重新选择");
					return;
				}
	            var data1={"uid":"null","rounds":"null","applyno":"null","describe":"null","position":"null","level":"null","form":"null"
		                    	,"qualitynum":"null","ticketnumber":"null","major":"null","position":"position","upper":"null","downname":"null",
		                    	"component1interfacesize":"null","component2interfacesize":"null","component1interfacethickness":"null",
		                    	"component2interfacethickness":"null","component1material":"null",
		                    	"component2material":"null","equiaxedgraph":"null","weldnumber":"null","geographicalposition":"null"};
	            data1.uid=row.uuid;
				data1.qualitynum=row.qualitynumber;
				data1.rounds=row.rounds;
				data1.applyno=row.applyno;
				data1.describe=row.describe;
				data1.position=row.position;
				data1.level=row.level;
				data1.form=row.form;
				data1.major=major;
				data1.ticketnumber=row.ticketnumber;
				data1.uppername=row.upper;
				data1.downname=row.down;
				data1.component1interfacesize=row.component1interfacesize;
				data1.component2interfacesize=row.component2interfacesize;
				data1.component1interfacethickness=row.component1interfacethickness;
				data1.component2interfacethickness=row.component2interfacethickness;
				data1.component1material=row.component1material;
				data1.component2material=row.component2material;
				data1.equiaxedgraph=row.equiaxedgraph;
				data1.weldnumber=row.weldnumber;
				data1.geographicalposition=row.geographicalposition;
            	if(row){
				 nui.open({
				 showMaxButton : true,
                    url: "/itmp/weldingmanagement/Apply/WeldingapplySingleformwork.jsp",
                    title: "创建质量计划-单焊接WQP", width:'90%', height: '65%',
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"addone",record:{quality:data1}};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                     $("#editbtn").prop("disabled", "disabled");
                     $("#menuButton").prop("disabled", "disabled");
                     $("#addone").prop("disabled", "disabled");
					$("#addmore").prop("disabled", "disabled");
					$("#addone").hide();
					$("#addmore").hide();
					if(action!= 'cancel' && action!= 'close' && action!= 'cgx'){
						openQualityList();	
						nui.showTips({content: '新增成功!',state: 'success'});
					}
                    grid.reload();
                }
                });
				}
            
            }
            
            //跳转质量计划台账
            function openQualityList(){
            	var tabs = parent.parent.nui.get("mainTabs");
				var url="/itmp/weldingmanagement/Quality/QualityList.jsp";
				 $(".add_adds").toggle();
				 var tab = { title: "焊接质量计划管理 ", url: url, showCloseButton: true };
				  tab.ondestroy = function (action) {
				  };
				 
				 tab = tabs.addTab(tab);            
				 tabs.activeTab(tab);
            }
            
           //多焊缝添加
				function addmore(){
				var row =grid.getSelected();
				var str=row.contact;
				var strs=str.split(",");
				var major="";
				for(var i=0;i<strs.length;i++){
					major=strs[0];
				}
				if(major==""){
					nui.alert("选择有误请重新选择");
					return;
				}
				var data1={"uid":"null","rounds":"null","applyno":"null","describe":"null","position":"null","level":"null","form":"null"
	                    	,"major":"null","qualitynum":"null"};
				data1.uid=row.uuid;
				data1.qualitynum=row.qualitynumber;
				data1.rounds=row.rounds;
				data1.applyno=row.applyno;
				data1.describe=row.describe;
				data1.position=row.position;
				data1.level=row.level;
				data1.form=row.form;
				data1.major=major;
				if(row){
				 nui.open({
				 showMaxButton : true,
                    url: "/itmp/weldingmanagement/Apply/WeldingapplyCreateQuality.jsp",
                    title: "创建质量计划-多焊接WQP", width: 950, height: 370,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"addmore",record:{quality:data1}};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                     $("#editbtn").prop("disabled", "disabled");
                     $("#menuButton").prop("disabled", "disabled");
                     $("#addone").prop("disabled", "disabled");
					$("#addmore").prop("disabled", "disabled");
					$("#addone").hide();
							$("#addmore").hide();
					if(action!= 'cancel' && action!= 'close' && action!= 'cgx'){
							nui.showTips({content: '新增成功!',state: 'success'});
						openQualityList();	
					}
                    grid.reload();
                    
                }
                });
				}
				}
			//创建焊接质量计划
				function createQualityPlan(){
				$("#addone").show();
				$("#addmore").show();
				var row =grid.getSelected();
				var rows=grid.getSelecteds();
				if(rows.length>1){
				nui.alert("只能选择一个申请单！");
				return;
				}
				if(typeof(row)=="undefined"){
				nui.alert("请选择焊接申请后再创建焊接质量计划!");
				return;
				}
				
				if(row.status=="YQX"||row.status=="DTJ"||row.status=="SPZ"||row.status=="YZF"){

						nui.alert("WA状态为:"+nui.getDictText("Apply_status",row.status)+" 无法创建");
						return;
				}
				if(rows.length==1){
					if(null!=row.qualitynumber&&""!=row.qualitynumber){
					var qnum=row.qualitynumber;
					var json=nui.encode({qnum:qnum});
					
						$.ajax({
					    url:"com.cgn.itmp.weldingmanagement.qualitybiz.getQualityWelderType.biz.ext",
					    type:'POST',
					    cache:false,
					    data:json,
					    contentType:'text/json',
					    success:function(data){
							var multiweldnum=data.map.multiweldnum;
							var singleweldnum=data.map.singleweldnum;
// 							if(singleweldnum>0||multiweldnum>0){
// 								if(parseInt(row.numberwelds)<1){
// 									nui.alert("焊接数量不大于1不允许创建");
// 									return;
// 								}
							if(parseInt(row.numberwelds)>=1){
								nui.alert("焊接数量为"+row.numberwelds+",已创建单焊缝WQP数量为 "+singleweldnum+" ,已创建多焊缝WQP数量为"+multiweldnum);
								$("#addone").prop("disabled", "");
								$("#addmore").prop("disabled", "");
							}
// 						}
							
// 							if(singleweldnum>0&&multiweldnum==0){
// 							nui.confirm("已创建单焊缝WQP，数量为"+singleweldnum+"。确认是否需要再次创建？", "提示",function(action){
// 								if(action=='cancel'){
// 									return;
// 								}else if(action=='ok'){
// 								$("#addone").prop("disabled", "");
// 							$("#addmore").prop("disabled", "");
// 								}
								
// 								});
								
// // 								nui.alert("已创建单焊缝WQP，数量为"+singleweldnum,);
// 							}else if(singleweldnum==0&&multiweldnum>0){
							
// 							nui.confirm("已创建多焊缝WQP，数量为"+multiweldnum+"。确认是否需要再次创建？", "提示",function(action){
// 								if(action=='cancel'){
// 									return;
// 								}else if(action=='ok'){
// 									$("#addone").prop("disabled", "");
// 					$("#addmore").prop("disabled", "");
// 								}
// 								});
								
// // 							nui.alert("已创建多焊缝WQP，数量为"+multiweldnum,);
							
// 							}else if(singleweldnum>0&&multiweldnum>0){
// 								nui.confirm("单焊缝WQP,多焊缝WQP都已创建，单焊缝数量为"+singleweldnum+"。多焊缝数量为"+multiweldnum+"。确认是否需要再次创建？", "提示",function(action){
// 								if(action=='cancel'){
// 									return;
// 								}else if(action=='ok'){
// 									$("#addone").prop("disabled", "");
// 					$("#addmore").prop("disabled", "");
// 								}
// 								});
								
// // 								nui.alert("单焊缝WQP,多焊缝WQP都已创建，单焊缝数量为"+singleweldnum+"多焊缝数量为"+multiweldnum,);
// 							}
							
					    }
						});
					}else{
							$("#addone").prop("disabled", "");
					$("#addmore").prop("disabled", "");
					}
				}
			}
				
				//字典转换
				function applyRender(e){
				/* readOnly */
				/* console.log(e) */
				if(e.row.status=="YQX"){
						e.rowStyle = 'color:red';
					}
				return nui.getDictText("Apply_status",e.value);
				}
				//wa编号
				function showwanumber(e){
					var html = '<a href="javascript:void(0)" onclick="showapplyno(\'' + e.row.uuid + '\')"  >' + e.value + '</a>';
					return html;
				}
				function showapplyno(uuid){
				nui.open({
                    url: "/itmp/weldingmanagement/Apply/showWeldingapplyForm.jsp",
                    title: "查看",
                     width:1200,
                     height:460,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    iframe.contentWindow.setFormData(uuid);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
			}
				      //附件初始化
           function setFile(e) {
			 var fileRealName = e.record.fildid;
      			var filepath = e.record.filepath;
      			var fileId = e.record.equiaxedgraphfileid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
			return html;
		}
                      //点击附件下载
    function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
         

            
             //新增
            function add() {
                var row = grid.getSelected();
                if (row) {
                	row.status="DTJ";	
                    nui.open({
                    showMaxButton : true,
                        url: "/itmp/weldingmanagement/Apply/WeldingapplyForm.jsp",
                        title: "新增数据",
                        width:1200,
                        height:460,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"add",record:{weldingapply:row}};
                            data.record.weldingapply.rounds='';
                            data.record.weldingapply.applyno='';
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
	                            $("#editbtn").prop("disabled", "disabled");
	                            $("#menuButton").prop("disabled", "disabled");
	                            $("#addone").prop("disabled", "disabled");
								$("#addmore").prop("disabled", "disabled");
								$("#addone").hide();
								$("#addmore").hide();
                                grid.reload();
                            }
                            });
                        } else {
                           add1();
                        }
                   
                  
                    }
            
            //新增1
            function add1() {
                nui.open({
                showMaxButton : true,
                    url: "/itmp/weldingmanagement/Apply/WeldingapplyForm.jsp",
                    title: "新增记录", width: 1200, height: 460,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add1"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
            }
 //导出
            function output() {
 if(grid.data.length==0){
		 	nui.alert("没有数据可以导出!");
		 	return;
		 }
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        nui
            .open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据",
                width: 600,
                height: 420,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply",
                        queryParam: json, //查询数据
                        queryKey: 'criteria', //查询实体名
/*                      rounds,ticketnumber,describe,position,upper,down,level,weldnumber,numberwelds,whetherccm,geographicalposition,geographical,applyno,contact,form,status,Apply_status
 */                     query: ['rounds','ticketnumber','describe','position','upper','down','level','weldnumber','numberwelds','whetherccm','geographicalposition','geographical','applyno','contact','form','status','isdel','jd'], //按顺序放置
                        //queryIndex: [1, 3, 10, 11, 12, 13],  //按顺序放置
                        expTitle: "焊接申请",
                        filterField: "uuid,isdel,fildid,filepath,applicant,applicanttime,cancelreason,filename,processInstId,jd,jz,jhry,ccry,equiaxedgraphfileid,workItemId,createtime,deletetime", //要过滤的字段，多字段用,隔开
                        dicFieds: "status@Apply_status,form@JTXS",
                        jdFieds: "jd",
//                         jzFieds:"jz",
                        order: "createtime@desc",
                        attachFied:"equiaxedgraphfileid@FILDID",
                        mode:"ftp"
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                 $("#editbtn").prop("disabled", "disabled");
                 $("#menuButton").prop("disabled", "disabled");
                 $("#addone").prop("disabled", "disabled");
				 $("#addmore").prop("disabled", "disabled");
				 $("#addone").hide();
				 $("#addmore").hide();
                 grid.reload();
                }
            });
    }             
 

           
                   		//导入
function batchAdd(){
	 var data = {};
	 data.modelFlag = "4";
	
	
	 data.jdid = jdid;
	 data.jzid = jzid;
	 var json = nui.encode(data);

	 	$.ajax({
	    url:"com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
	    type:'POST',
	    cache:false,
	    data:json,
	    contentType:'text/json',
	    success:function(data){
	   		 var count = data.count;
	   			if(count > 0){
	   				nui.alert("该焊接申请已存在,不能导入","提示");
	   			}else{
	   				nui.open({showMaxButton : true,
			        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
			        title: "新增记录", width: 600, height: 300,
			        onload: function () {//弹出页面加载完成
			        	var iframe = this.getIFrameEl();
			            var data = {
			            	pageType:"batchAdd",
			            	tempFileName:"hjsq.xlsx",
			            	tempLoadName:"焊接申请导入模板",
			            	entitfName:"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply"
			            };//传入页面的json数据
			             iframe.contentWindow.SetData(data);
			        },
			        ondestroy: function (action) {//弹出页面关闭前
			         $("#editbtn").prop("disabled", "disabled");
			         $("#menuButton").prop("disabled", "disabled");
			         $("#addone").prop("disabled", "disabled");
					 $("#addmore").prop("disabled", "disabled");
					 $("#addone").hide();
					 $("#addmore").hide();
			         grid.reload();
			    	}
				});
	   		}
	   		}
	});
	

}			
			//项目取消
			function cancel(){
				var row=grid.getSelected();
				
				if(typeof(row) == 'undefined'){
					nui.alert("请选择记录！");
					return;
				}
				if(row.status=='YQX'){
					nui.alert("当前项目已取消！");
				return;
				}
				nui.MessageBox.buttonText={ok:"是",cancel:"否"};
				if(row.status=='YSP'){    
				if(row.qualitynumber==null){
					nui.confirm("是否确认取消该项目？", "项目取消?", function(action){
						if(action == 'ok'){
						nui.open({
						 		showMaxButton : true,
			                    url: "/itmp/weldingmanagement/Apply/WeldingApplyCancelReason.jsp",
			                    title: "取消原因", width: 500, height: 270,
			                    onload: function () {//弹出页面加载完成
			                    var iframe = this.getIFrameEl();
			                    var data = {pageType:"cancel",record:{weldingapply:row}};//传入页面的json数据
			                    iframe.contentWindow.setFormData(data);
			                    },
			                    ondestroy: function (action) {//弹出页面关闭前
			                    if(action=="saveSuccess"){
									row.status='YQX';
									var json=nui.encode({weldingapply:row});
									nui.ajax({
									url:"com.cgn.itmp.weldingmanagement.weldingapplybiz.updateWeldingapplyByCancel.biz.ext",
									type:"post",
									data:json,
									cache:false,
									contentType:'text/json',
									success: function (data) {
										var formData = new nui.Form("#form1").getData(false,false);
			            				grid.load(formData);
									},error: function () {
										nui.alert("取消失败！");
									}
									});
								}
								}
							});
						}
					});
				}else{
				 var json = nui.encode({qualitynumber:row.qualitynumber});
				
				$.ajax({
			    url:"com.cgn.itmp.weldingmanagement.weldingapplybiz.queryQualitywqpstatu.biz.ext",
			    type:'POST',
			    cache:false,
			    data:json,
			    contentType:'text/json',
			    success:function(data){
			    	var str=data.quality;
							nui.confirm("是否确认取消该项目？", "项目取消?", function(action){
							if(action == 'ok'){
			    	for (var i= 0; i< str.length; i++) {
						if("WQPZXZ"==str[i].state||"WQPYWC"==str[i].state){
							nui.alert("WQP编号为"+str[i].qualitynumber+"的WQP状态为"+nui.getDictText("DQRWZT",str[i].state)+",无法取消当前任务");
							return;
						}else if("WQPZBWC"==str[i].state||"WQPZBZ"==str[i].state||"WQPZZ"==str[i].state){
						
						 	nui.open({
						 		showMaxButton : true,
			                    url: "/itmp/weldingmanagement/Apply/WeldingApplyCancelReason.jsp",
			                    title: "取消原因", width: 500, height: 270,
			                    onload: function () {//弹出页面加载完成
			                    var iframe = this.getIFrameEl();
			                    var data = {pageType:"cancel",record:{weldingapply:row}};//传入页面的json数据
			                    iframe.contentWindow.setFormData(data);
			                    },
			                    ondestroy: function (action) {//弹出页面关闭前
			                    if(action=="saveSuccess"){
									row.status='YQX';
								var json=nui.encode({weldingapply:row,qualitynumber:row.qualitynumber});
						nui.ajax({
								url:"com.cgn.itmp.weldingmanagement.weldingapplybiz.updateWeldingapplyByCancel.biz.ext",
								type:"post",
								data:json,
								cache:false,
								contentType:'text/json',
								success: function (data) {
									var formData = new nui.Form("#form1").getData(false,false);
			        				grid.load(formData);
								},error: function () {
									nui.alert("取消失败！");
								}
			                });
			                }
						}
						
						});
					}else if("WQPYQX"==str[i].state){
						nui.open({
						 		showMaxButton : true,
			                    url: "/itmp/weldingmanagement/Apply/WeldingApplyCancelReason.jsp",
			                    title: "取消原因", width: 500, height: 270,
			                    onload: function () {//弹出页面加载完成
			                    var iframe = this.getIFrameEl();
			                    var data = {pageType:"cancel",record:{weldingapply:row}};//传入页面的json数据
			                    iframe.contentWindow.setFormData(data);
			                    },
			                    ondestroy: function (action) {//弹出页面关闭前
									row.status='YQX';
								var json=nui.encode({weldingapply:row,qualitynumber:row.qualitynumber});
						nui.ajax({
								url:"com.cgn.itmp.weldingmanagement.weldingapplybiz.updateWeldingapplyByCancel.biz.ext",
								type:"post",
								data:json,
								cache:false,
								contentType:'text/json',
								success: function (data) {
									var formData = new nui.Form("#form1").getData(false,false);
			        				grid.load(formData);
								},error: function () {
									nui.alert("取消失败！");
								}
			                });
						}
						
						});
					}
					}
						
						}
						
					});
			    }
			    });
			    }
			    } else{
			    	nui.alert("当前申请单未审批无法取消");
			    }
			}
            //编辑
            function edit() {
                var row = grid.getSelected();
//                 console.log(row.status)
                if (row) {
                if(row.status=="YSP"){
                nui.alert("该流程已完成，无法修改！");
                return;
                }
                
                    nui.open({
                    showMaxButton : true,
                        url: "/itmp/weldingmanagement/Apply/WeldingapplyForm.jsp",
                        title: "编辑数据",
                        width: 1200,
                        height: 500,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{weldingapply:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                             $("#editbtn").prop("disabled", "disabled");
                             $("#menuButton").prop("disabled", "disabled");
                             $("#addone").prop("disabled", "disabled");
							$("#addmore").prop("disabled", "disabled");
							$("#addone").hide();
							$("#addmore").hide();
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
                    }

          //回收站
    		function recycle () {
    			nui.open({
    			showMaxButton : true,
    				url : "/itmp/common/recyclebin/recyclebin.jsp",
    				title : "回收站",
    				width : 1000,
    				height : 570,
    				onload : function() {//弹出页面加载完成
    					var iframe = this.getIFrameEl();
    					var data = {
    						pageType : "recyclebin",
    						urlName:"com.cgn.itmp.weldingmanagement.qualitybiz.queryQualitys.biz.ext",//回收
    						entityVal:"com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply",
    						removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//删除
    						recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
    						columnscode:[
    							{type:"indexcolumn" },
    							{type:"checkcolumn" },
    							{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
    							{field:"rounds",header:"大修轮次", width:100, headerAlign:"center", allowSort:true},
								{field:'applyno',header:'申请单号', width:100, headerAlign:"center", allowSort:true},
								{field:'ticketnumber',header:'主票号', width:100, headerAlign:"center", allowSort:true},
								{field:'describe',header:'描述', width:100, headerAlign:"center", allowSort:true},
								{field:'position',header:'功能位置', width:100, headerAlign:"center", allowSort:true},
								{field:'equiaxedgraph',header:'等轴图（版本）或设备图（版本）', width:100, headerAlign:"center", allowSort:true},
								{field:'flowchart',header:'流程图', width:100, headerAlign:"center", allowSort:true},
								{field:'upper',header:'上游设备或部件名称', width:100, headerAlign:"center", allowSort:true},
								{field:'down',header:'下游设备或部件名称', width:100, headerAlign:"center", allowSort:true},
								{field:'level',header:'制造级别（核岛为RCCM级别、常规岛为电力级别）', width:100, headerAlign:"center", allowSort:true},
								{field:'weldnumber',header:'焊缝号', width:100, headerAlign:"center", allowSort:true},
								{field:'numberwelds',header:'焊缝数量', width:100, headerAlign:"center", allowSort:true},	
								{field:'form',header:'接头形式', width:100, headerAlign:"center", allowSort:true},
								{field:'temperature',header:'工作温度（℃）/压力（MPa）', width:100, headerAlign:"center", allowSort:true},
								{field:'whetherccm',header:'是否为CCM设备', width:100, headerAlign:"center", allowSort:true},
								{field:'geographical',header:'地理位置（需注明是否属于重要敏感区域）', width:100, headerAlign:"center", allowSort:true},
								{field:'contact',header:'联系人/联系方式', width:100, headerAlign:"center", allowSort:true},
								{field:'status',header:'申请单状态', width:100, headerAlign:"center", allowSort:true},
								{field:'JD',header:'基地', width:100, headerAlign:"center", allowSort:true}
    						],

    						
    					};//传入页面的json数据
    					iframe.contentWindow.setFormData(data);
    				},
    				ondestroy : function(action) {//弹出页面关闭前
    				 $("#editbtn").prop("disabled", "disabled");
    				 $("#menuButton").prop("disabled", "disabled");
    				 $("#addone").prop("disabled", "disabled");
					$("#addmore").prop("disabled", "disabled");
					$("#addone").hide();
							$("#addmore").hide();
    					grid.reload();
    				}
    			});
    		}
    	
    //删除
                        function remove(){
                            var rows = grid.getSelecteds();
                            if(rows.length > 0){
                                nui.confirm("确定删除选中记录？","系统提示",
                                function(action){
                                    if(action=="ok"){
                                        var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment"});
                                        grid.loading("正在删除中,请稍等...");
                                        $.ajax({
                                            url:"com.cgn.itmp.weldingmanagement.weldingassessmentbiz.updatedel.biz.ext",
                                            type:'POST',
                                            data:json,
                                            cache: false,
                                            contentType:'text/json',
                                            success:function(text){
                                             $("#editbtn").prop("disabled", "disabled");
                                              $("#menuButton").prop("disabled", "disabled");
						    				 $("#addone").prop("disabled", "disabled");
											$("#addmore").prop("disabled", "disabled");
											$("#addone").hide();
											$("#addmore").hide();
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
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }
                                
                                //重置查询条件
                                function reset(){
                                $("#cond").val('');
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
                                    nui.get('con_jdid').setValue(getCookie('jdid'));
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
                                }
		//控制修改和删除按钮
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows) {
				if (rows.length == 1) {
					//两个都恢复
					$("#editbtn").attr("title","");
					$("#editbtn").prop("disabled", "");
					$("#delebtn").prop("disabled", "");
					$("#menuButton").prop("disabled", "");
					$("#addbtn").prop("disabled", "");
					if(rows[0].status=="YQX"){
						$("#editbtn").prop("disabled", "disabled");
						$("#pcancel").prop("disabled", "disabled");
					}else{
						$("#pcancel").prop("disabled", "");
						$("#editbtn").prop("disabled", "");
					}
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").attr("title","");
					$("#editbtn").prop("disabled", "disabled");
					$("#addone").hide();
							$("#addmore").hide();
					$("#addbtn").prop("disabled", "disabled");
					$("#menuButton").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
					
				} else {
					$("#editbtn").attr("title","请选择需修改条目");
					//两个都禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
					$("#menuButton").prop("disabled", "disabled");
					$("#addone").prop("disabled", "disabled");
					$("#addmore").prop("disabled", "disabled");
					$("#addone").hide();
							$("#addmore").hide();
				}
			} else {
				//两个都禁止
				$("#addone").prop("disabled", "disabled");
				$("#addmore").prop("disabled", "disabled");
				$("#editbtn").attr("title","请选择需修改条目");
				$("#editbtn").prop("disabled", "disabled");
				$("#menuButton").prop("disabled", "disabled");
				$("#addone").prop("disabled", "disabled");
					$("#addmore").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
				$("#addone").hide();
							$("#addmore").hide();
			}
		}   					
		//高级搜索上下拉动时显示文字控制
		function btnText(query, html) {
			var html = "";
			if (query.css("display") == "none") {
				html = "返回";
			} else {
				html = "高级搜索";
			}
			query.slideToggle();
			return html;
		}
                                //高级搜索上下拉动效果
		$(".adv-search").bind(
				"click",
				function(e) {
					e.preventDefault();
					var folding = $(this).parents(".navbar").next(
							".folding-menu");
					var html = btnText(folding);
					$(this).html(html);
					$(this).parents(".query-form").find(".dw-toggle .fa")
							.toggleClass("fa-angle-down");
				});
		//上下拉动效果
		$(".dw-toggle").bind(
				"click",
				function(e) {
					e.preventDefault();
					$(this).find(".fa").toggleClass("fa-angle-down");
					var folding = $(this).parents(".navbar").next(
							".folding-menu");
					var html = btnText(folding);
					$(this).parents(".navbar-right").prev().find(".adv-search")
							.html(html);
				});
				function btnQuery() {
			        var gjz = $("#cond").val();
			        if (gjz == "") {
			            refresh();
			        } else {
			            var data = {
			                matchFied: "rounds,applyno,ticketnumber,describe,position,upper,down,level,weldnumber,numberwelds,form,temperature,geographical,contact",
			                dicFied: "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
			                wordVal: $("#cond").val(),
			                entity: $("input[name='criteria/_entity']").val(),
			                entityName: 'criteria',
			                sfdel: true,
			                jdInfo: 'jd@' + getCookie('jdid')
			            };
			            var query = nui.decode(getKeyWordQuery(data));
			            query["criteria/_expr[17]/isdel"]="0";
			            query["criteria/_orderby[19]/_property"]="createtime";
			            query["criteria/_orderby[19]/_sort"]="desc";
			            grid.load(query);
			        }
			    }
			    //显示已办表单
			    function ybrw(){
			    var row = grid.getSelected();
			    if (row) {
	                if(row.status=="YSP"){
	                nui.alert("该流程已完成，无法修改！");
	                return;
                }
                if(row.applicant!='<%=username %>'){
                nui.alert("请选择自己申请的数据进行修改");
                return;
                }
			    var processInstId=row.processinstid;
			    var workItemId=row.workitemid;
			    
			    nui.open({
                    showMaxButton : true,
                        url: "/itmp/com.cgn.itmp.dailyandoverhaul.overhaul.itemmanagetz.flow?processInstId="+processInstId+"&workItemId="+workItemId+"&showPage=weldingmanagement/Apply/WeldingapplyFormExamine.jsp&editable=false&modelFlag=2&backid=first",
                        title: "编辑数据",
                        width: 1200,
                        height: 500,
                     	ondestroy:function (action) {
                            refresh();
                        }
                });
// 				addTab("","已办任务","/itmp/com.cgn.itmp.dailyandoverhaul.overhaul.itemmanagetz.flow?processInstId=244018&workItemId=613931&showPage=weldingmanagement/Apply/WeldingapplyFormExamineDraft.jsp&editable=false&modelFlag=1&backid=first",null);
				
		}
		}
		function addTab(position,type,url,data) {
	         var tabs = parent.parent.nui.get("mainTabs");
	         var tab = { title: type, url: url, showCloseButton: true};
	         tab.onload = function (e) {
                var iframe = tabs.getTabIFrameEl(e.tab);
              }
	         tab = tabs.addTab(tab);            
		     tabs.activeTab(tab);
	    }
				
				
				//接头形式
           function dicJTXS(e) {
           		
               return nui.getDictText("JTXS", e.value);
           }
                            </script>
                        </body>
                    </html>
