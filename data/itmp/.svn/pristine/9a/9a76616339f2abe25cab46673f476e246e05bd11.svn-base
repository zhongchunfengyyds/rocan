<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-14 10:51:27
- Description: 动态展示数据面板(缺陷显示编号)
    --%>
    <head>
        <title>
            	缺陷编号列表
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
</script>
<style type="text/css"> 
.mini-pager-reload{
	display: none;
}
 .mini-grid-table tr:first-child td{
					height: 0;
				}
</style>
<script src="<%= request.getContextPath()%>/js/jquery/jquery-1.9.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
	
</head>

<body style="width:98%;height:95%;">
        <div class="bs-docs-section">
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
										class="btn btn-default" onclick="reset()"> 重置 </a>
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
						<div id="form1" class="nui-form display" align="center" style="height: 10%">
							<!-- 数据实体的名称 -->
							<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation">
							<!-- 排序字段 -->
							<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="defectdisplaynumber">
							 <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
							 <!-- 查询字段 -->
							 <input class="nui-hidden" name="criteria/_expr[12]/isdel" value="0">
							  <input class="nui-hidden" name="criteria/_expr[12]/_op" value="=">
							 <input class="nui-hidden" name="criteria/_expr[10]/jd" value="" id="con_jdid">
							  <input class="nui-hidden" name="criteria/_expr[10]/_op" value="=">			
							   <input class="nui-hidden" name="criteria/_expr[11]/jz" value="" id="con_jzid">
							  <input class="nui-hidden" name="criteria/_expr[11]/_op" value="=">
									<table id="table1" class="table" style="height: 100%">
									
											
									</table>
						</div>
						<!-- <div property="footer" class="searchfooter" align="center">
							<a class="nui-button" onclick="btnQuery()"> 模糊查询 </a> <a class="nui-button" onclick="searchs()"> 查询 </a> <a class="nui-button"
							 onclick="reset()"> 重置 </a>
							<div onclick="showquery()" id="funquery" class="fa fa-chevron-down fa-1x">
								&nbsp;<a>显示查询条件</a>
							</div>
						</div> -->
			</div>

		</div>
	</div>
</div>
				<div id="gridField" style="width:100%;height:73%;margin-top:3%" ></div>
				
					
				</body>		


<script>
var grid;
var entityVal;
var pageType;
var displaynumber;
var stencilplate;
var matchFied;
nui.parse();
function setFormData(data) {
	
	pageType=data.pageType;
	displaynumber = data.displaynumber;
	stencilplate=data.stencilplate;
	var table1=document.getElementById("table1");
	var infos = nui.clone(data);
	entityVal=infos.entityVal;//数据实体
	var urlName = infos.urlName;//数据查询url
	var columnsVal = infos.columnscode;

	
	if(pageType=="lslm"){
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>缺陷显示所在螺栓/螺母标识号:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/boltsnutsnumbe'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
						+"<td class='form_label'>显示位置:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[3]/displayposition'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                        +"</tr>"
                    +"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[4]/influence'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[4]/_likeRule' value='all'>"
                        +"</td>"
                        +"<td class='form_label'></td><td colspan='1'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input  class='nui-hidden' id='stencilplate' name='criteria/_expr[5]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[5]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="boltsnutsnumbe,displayposition,influence";
	}else
	if(pageType=="crgbobbin"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>ROW:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/row'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   
						+"<td class='form_label'>COL:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[3]/col'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
                    +"<tr>"
                        +"<td class='form_label'>PLATE:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[4]/plate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[4]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[4]/_likeRule' value='all'>"
                        +"</td>"
                   
                         +"<td class='form_label'>CODE（缺陷类型）:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[5]/defecttype'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[5]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[5]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
                    +"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                       
                         +"<td class='form_label'>是否堵管:</td><td colspan='1'>"
                         +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfdg'  name='criteria/_expr[7]/isplugging'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[7]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[7]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="row,col,plate,defecttype";
	}else
	if(pageType=="crgmrpc"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>ROW:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/row'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   
						+"<td class='form_label'>COL:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[3]/col'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
                    +"<tr>"
                        +"<td class='form_label'>PLATE:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[4]/plate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[4]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[4]/_likeRule' value='all'>"
                        +"</td>"
                   
                         +"<td class='form_label'>CODE（缺陷类型）:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[5]/defecttype'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[5]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[5]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
                    +"<tr>"
                        
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                       
                         +"<td class='form_label'>是否堵管:</td><td colspan='1'>"
                         +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfdg'  name='criteria/_expr[7]/isplugging'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[7]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[7]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="row,col,plate,defecttype";
	}else
	if(pageType=="crglkqx"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>ROW:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/row'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   
						+"<td class='form_label'>COL:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[3]/col'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
					+"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
   +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                       
                         +"<td class='form_label'>是否堵管:</td><td colspan='1'>"
                         +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfdg'  name='criteria/_expr[7]/isplugging'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[7]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[7]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="row,col";
	}else
	if(pageType=="ztgwl"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>通道编号:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/channelnumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   
						+"<td class='form_label'>在堆芯内的位置:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/corelocation'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
					+"<tr>"
						+"<td class='form_label'>磨损深度(壁厚%):</td><td colspan='1'>"
					    +"<input class='nui-combobox' name='criteria/_expr[4]/weardepth' onvaluechanged='onvalueChanged' id='dxwz' dataField='jsonObject' textField='name' valueField='id'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[4]/_op' id='cxtj' value=''>"
                        +"</td>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
 +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                       
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="channelnumber,corelocation";
			var cxdata=[
				{"id":"49","name":">=50"},
				{"id":"50","name":"<50"}];	
				nui.get("dxwz").load(cxdata);
				
			
	}else
	if(pageType=="hfsdcs"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>缺陷方向:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/defectdirection'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   
						+"<td class='form_label'>缺陷类型:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
					+"<tr>"
						
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
    +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                       +"<td class='form_label'></td><td colspan='1'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                          +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>" 
                    +"</tr>";
            nui.parse();      
			matchFied="defectdirection,defecttype";
	}else
	
	if(pageType=="rplsdcs"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>缺陷方向:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/defectdirection'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   
						+"<td class='form_label'>缺陷类型:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
					+"<tr>"
						
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
     +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                       +"<td class='form_label'></td><td colspan='1'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                          +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="defectdirection,defecttype";
	}else
	if(pageType=="lssdcs"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>螺栓标识号:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/boltidentificationnumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   
                   		+"<td class='form_label'>缺陷类型:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
						
                         +"</tr>"
					+"<tr>"
						+"<td class='form_label'>深度位置:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[4]/depthposition'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[4]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[4]/_likeRule' value='all'>"
                        +"</td>"
                        +"<td class='form_label'>周向位置:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[5]/circumferentialposition'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[5]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[5]/_likeRule' value='all'>"
                        +"</td>"
                    +"</tr>"
                    +"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
  +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                          +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>" 
                    +"</tr>";
            nui.parse();      
			matchFied="boltidentificationnumber,defecttype,depthposition,circumferentialposition";
	}else
	if(pageType=="zbflsdcs"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>键槽边缘编号:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/keywayedgenumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   		+"<td class='form_label'>缺陷类型:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
                    +"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
  +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="keywayedgenumber,defecttype";
	}else
	if(pageType=="zlscs"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        +"<td class='form_label'>受检螺栓标识:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/identificationmark'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   		+"<td class='form_label'>缺陷类型:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
                    +"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
  +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="identificationmark,defecttype";
	}else
	if(pageType=="rpvzdcs"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                   		+"<td class='form_label'>缺陷类型:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                        +"<td class='form_label'>检查方向:</td><td colspan='1'>"
					    +"<input  class='nui-textbox' name='criteria/_expr[2]/checkdirection'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                         +"</tr>"
                    +"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
    +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="checkdirection,defecttype";
	}else
	if(pageType=="rccazdcs"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                   		+"<td class='form_label'>类型（缺陷类型):</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
  +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="defecttype";
	}else
	
	if(pageType=="paut"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                   		+"<td class='form_label'>缺陷类型:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
     +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="defecttype";
	}else
	if(pageType=="rt"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                   		+"<td class='form_label'>缺陷性质:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defectproperty'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
   +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="defectproperty";
	}else
	if(pageType=="pt"||pageType=="mt"||pageType=="vt"){
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        
                        +"<td class='form_label'>缺陷位置:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[2]/defectlocation'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   		+"<td class='form_label'>性质（缺陷类型）:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                        
                        +"</tr>"
                        +"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
   						+"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                        +"<input class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="defectlocation,defecttype";
	}else
	if(pageType=="cctv"){
		
	table1.innerHTML="<tr>"
						/* +"<td class='form_label'>缺陷显示编号:</td><td colspan='1'>"
					    +"<input id='defectdisplaynumber' class='nui-textbox' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                        +"</td>" */
                        
                        +"<td class='form_label'>缺陷位置:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[2]/defectlocation'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[2]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[2]/_likeRule' value='all'>"
                        +"</td>"
                   		+"<td class='form_label'>缺陷类型:</td><td colspan='1'>"
					    +"<input class='nui-text' name='criteria/_expr[3]/defecttype'/>"
                         +"<input class='nui-hidden' name='criteria/_expr[3]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[3]/_likeRule' value='all'>"
                        +"</td>"
                        
                        +"</tr>"
                        +"<tr>"
                        +"<td class='form_label'>是否超标缺陷:</td><td colspan='1'>"
					    +"<input  class='nui-dictcombobox' dictTypeId='ISORNO'  id='sfcb'  name='criteria/_expr[6]/influence'/>"
   +"<input class='nui-hidden' name='criteria/_expr[6]/_op' value='like'>"
                        +"<input class='nui-hidden' name='criteria/_expr[6]/_likeRule' value='all'>"
                        +"</td>"
                         +"<input  class='nui-hidden' id='defectdisplaynumber' name='criteria/_expr[1]/defectdisplaynumber'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[1]/_op' value='='>"
                         +"<input id='checklocation' class='nui-hidden' name='criteria/_expr[8]/checklocation'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[8]/_op' value='='>"
                         +"<input id='stencilplate' class='nui-hidden' name='criteria/_expr[9]/stencilplate'/>"
                        +"<input class='nui-hidden' name='criteria/_expr[9]/_op' value='='>"
                    +"</tr>";
            nui.parse();      
			matchFied="defectlocation,defecttype";
	}
			if(displaynumber != 'null' && displaynumber != null && displaynumber != ''){
					nui.get('defectdisplaynumber').setValue(displaynumber);
			}
			if(stencilplate != 'null' && stencilplate != null && stencilplate != ''){
			nui.get('stencilplate').setValue(stencilplate);
			}
	var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		nui.get('con_jdid').setValue(jdid);
        nui.get('con_jzid').setValue(jzid);
	init(urlName,columnsVal);
	nui.parse();
    grid = nui.get("datagrid");
    var formData = new nui.Form("#form1").getData(false, false);
    formData["criteria/_entity"] = entityVal;
	if(data.pageflowName){
		formData["criteria/_expr[99]/funname"] = data.pageflowName;
	}
    
	grid.load(formData);
}
function init(urlName,columnsVal) {
	var field=(entityVal.substr(entityVal.lastIndexOf(".")+1)+"s").toLowerCase();

	//动态创建表格
	var grid =new mini.DataGrid();
	grid.set({
        url:urlName,
        style:"width:100%;height:100%;",
        id:"datagrid",
//         class:"nui-datagrid",
        columns: columnsVal,
        multiSelect:true,
        allowResize:false,
        allowCellEdit:true,
        allowCellSelect:true,
        showPageIndex:true,
        allowRowSelect:true,
        showPager:true,
        editNextOnEnterKey:true,
        editNextRowCell:true,
        cellEditAction:"cellclick",
        pageSize:20,
        dataField:field,
//         onselectionchanged:"selectionChanged",
    });
    grid.render(document.getElementById("gridField"));
};

		function onvalueChanged(e){
		var dxwz=e.value;
		if(dxwz=="49"){
				nui.get("cxtj").setValue('>');
			}else if(dxwz=="50"){
				nui.get("cxtj").setValue('<');
			}
		}

/* function showquery() {
								var div = $("#form1");
								div.slideToggle(500);
								$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
								} */
								
//仅按照名称搜索
		function btnQuery() {
		
// 			var gjz = $("#cond").val();
// 			var gjz = nui.get("cond");
var gjz = document.getElementById("cond").value;
			if (gjz == "") {
				refresh();
			} else {
				var data = {
					matchFied : matchFied,
					dicFied : "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sdel : true,
					jdInfo : 'jd@' + getCookie('jdid'),
					jzInfo : 'jz@' + getCookie('jzid'),
					matchFiedFM:"defectdisplaynumber,"+nui.get('defectdisplaynumber').getValue(),
					matchFiedFZ:"stencilplate,"+nui.get('stencilplate').value
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[9]/isdel"] = "0";
				query["criteria/_orderby[1]/_property"] = "createtime";
				query["criteria/_orderby[1]/_sort"] = "asc";
				grid.load(query);
			}
		}
		 //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
									nui.get('con_jdid').setValue(getCookie('jdid'));
							        nui.get('con_jzid').setValue(getCookie('jzid'));
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
                                    displaynumber=nui.get('defectdisplaynumber').value;
                                    form.reset();
                                    if(displaynumber != 'null' && displaynumber != null && displaynumber != ''){
									nui.get('defectdisplaynumber').setValue(displaynumber);
									}
									 if(stencilplate != 'null' && stencilplate != null && stencilplate != ''){
									nui.get('stencilplate').setValue(stencilplate);
									}
									nui.get('con_jdid').setValue(getCookie('jdid'));
		        					nui.get('con_jzid').setValue(getCookie('jzid'));
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
                                }
		
</script>

</html>