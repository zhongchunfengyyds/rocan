<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-14 10:51:27
- Description:
    --%>
    <head>
        <title>
            	审查记录
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
</script>
<style type="text/css">
.mini-pager-reload{
	display: none;
}
</style>
<script src="<%= request.getContextPath()%>/js/jquery/jquery-1.9.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
	
</head>

<body style="height: 100%;"  >
<div class="bs-docs-section" style="height:100%;">
<div class="nui-panel" title="待选列表" style="width: 100%; height: 50%" buttons="collapse" showToolbar="true">
	<div id="form1" class="nui-form" align="center" style="height: 10%">
		<!-- 数据实体的名称 -->
		<input class="nui-hidden" name="criteria/_entity" id="entity" value="">

		<table id="table1" class="table" style="width:100%;height:100%;float:left; ">
        <tr style="width:100%;">
			<td colspan="1" style="width:6%;text-align: center;" >
				<div >姓名:</div>
			</td>
			<td  colspan="1" style="width:7%;text-align: center;" >
				<input class="nui-textbox" name="name" />
			</td>
			<td id="nutbeiyongtext"  colspan="1" style="width:4%;text-align: center;" >
				<div >员工号:</div>
				</td>
			<td id="nutbeiyong" colspan="1" style="width:7%;text-align: center;" >
				<input class="nui-textbox" name="empnumber"/>
			</td>
			<td id="beiyongtext" colspan="1" style="width:6%;text-align: center;">
				
			</td>
			<td id="beiyong" colspan="1" style="width:10%;">
				
			</td>
			
			
			<td style="width:5%;" colspan="1" >
				<div >大修轮次:</div>
				</td>
			<td  colspan="1" style="width:10%;" >
			<div  id="combobox1" name="rounds" property="editor"  popupWidth="100%" class="nui-combobox" style="width:120px;"  popupWidth="150" textField="name" valueField="id" 
     			url=""  onvaluechanged="getalltime"  multiSelect="false" emptyText="请选择" valueField="id" textField="name"  dataField="jsonObject" nullItemText="请选择..." >
			</td>    
			<td colspan="1" style="width:5%;"><button class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="chaxun()">
			查询
		</button></td>
			<td colspan="1" style="width:8%;"><button class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="chaxunqingdan()">
			导入查询清单
		</button></td>
			<td colspan="1" style="width:8%;"><button class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="Reset()">
				重置
			</button></td>
   
		</tr>
	</table>
	</div>
	<div class="nui-fit" style="height:40%;width:100%;"   id="gridField">
	<div   id="datagrid" url="com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        allowCellSelect="true"
                        allowSortColumn="true"
                          oncellclick = "cellclick"
                           allowCellEdit= "true"
                         showPager="false"
                        multiSelect="true"
                        editNextOnEnterKey="true">  <!--allowCellEdit="true"  -->
                    <div property="columns"> 
                     <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                          
                    </div>
                </div>
                
	</div>
</div>
	<div class="nui-panel" title="已选列表" style="width: 100%; height: 50%;" buttons="collapse" showToolbar="true">
        <div id="form2" style="margin: 0px 0 4px 0;" class="nui-form" align="center" >
           	<table style="width: 100%;">
						<tr>
						
							<td>
								<button class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="tankuang()">
									添加
								</button>
								<button class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="shanchu()">
									删除
								</button>
								<button class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="qingkong()">
									清空
								</button>
								</td>
								<td>
								<button style="float:right;" class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="onCancel()">
									关闭
								</button>
								<button style="float:right;margin-right:8px;" class="nui-button btn btn-default btn-xs btn-submit"
								 id="submit"	type="button" onclick="add()">
								保存	
								</button>
							</td>
						</tr>
					</table>
				</div>
		<div class="nui-fit" style="height:40%;width:100%;"   id="gridField2">
		<div   id="datagrid2"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        allowCellSelect="true"
                        allowSortColumn="true"
                          oncellclick = "cellclick"
                           allowCellEdit= "true"
                         showPager="false"
                        multiSelect="true"
                        editNextOnEnterKey="true">  <!--allowCellEdit="true"  -->
                    <div property="columns"> 
                     <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                          
                    </div>
                </div>
		</div>
		</div>
	</div>
</body>
		<script>
		
		
		nui.parse();
			var grid = nui.get("datagrid");
			var grid2 = nui.get("datagrid2");
			var removeUrl;
			var recoveryUrl;
			var entityVal;
			var jdid=getCookie('jdid');
            var jzid=getCookie('jzid');
            var starttime;
            var endtime;
            var pageType;
            var submittype;
            var param={};
            
			daxiu();

function setData(data) {
param=data;
submittype="add";
	pageType=data.pageType;
	//备用条件
	var beiyongtext=document.getElementById("beiyongtext");
	var beiyong=document.getElementById("beiyong");
	var nutbeiyongtext=document.getElementById("nutbeiyongtext");
	var nutbeiyong=document.getElementById("nutbeiyong");
	if(pageType=="aut"){
		beiyongtext.innerHTML="<div>授权类型：</div>";
		beiyong.innerHTML="<input class='nui-dictcombobox' name='sqlx' dictTypeId='SQTYPE'"+
							"url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE'"+
							"textField='dictName' valueField='dictID' emptyText='请选择'"+
							"required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'' />";
	}else if(pageType=="Ndt"){
		nutbeiyongtext.innerHTML="<div>资质类型:</div>";
		nutbeiyong.innerHTML="<input class='nui-dictcombobox' name='zzlx' dictTypeId='ZZLX' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZZLX' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyongtext.innerHTML="<div>工作单位:</div>";
		beiyong.innerHTML="<input class='nui-textbox' name='gzdw'/>";
	}else{
		nutbeiyongtext.innerHTML="<div>适用堆型:</div>";
		nutbeiyong.innerHTML="<input class='nui-dictcombobox' name='sydx' dictTypeId='SYDX' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SYDX' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyongtext.innerHTML="<div>验证项目:</div>";
		beiyong.innerHTML="<input style='width:100%' class='nui-dictcombobox' name='yzxm' dictTypeId='YZXM' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=YZXM' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyong.style.width="13%";
	}
	var infos = nui.clone(data);
	entityVal=infos.entityVal;//数据实体
	var urlName = infos.urlName;//数据查询url
	var columnsVal = infos.columnscode;
	init(urlName,columnsVal);
    grid = nui.get("datagrid"); 
    var formData = new nui.Form("#form1").getData(false, false);
    formData["parameter/code"] = entityVal;
    nui.get("entity").setValue(entityVal);
	grid.load(fz());
	grid2 = nui.get("datagrid2");
	nui.parse();
}
//修改
function setupdataData(data) {
var nutbeiyongtext=document.getElementById("nutbeiyongtext");
	var nutbeiyong=document.getElementById("nutbeiyong");
param=data;
	submittype="updata";
	pageType=data.pageType;
	var beiyongtext=document.getElementById("beiyongtext");
	var beiyong=document.getElementById("beiyong");
	if(pageType=="aut"){
		
		beiyongtext.innerHTML="<div>授权类型：</div>";
		beiyong.innerHTML="<input class='nui-dictcombobox' name='sqlx' dictTypeId='SQTYPE'"+
							"url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE'"+
							"textField='dictName' valueField='dictID' emptyText='请选择'"+
							"required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'' />";
	}else if(pageType=="Ndt"){
		nutbeiyongtext.innerHTML="<div>资质类型:</div>";
		nutbeiyong.innerHTML="<input class='nui-dictcombobox' name='zzlx' dictTypeId='ZZLX' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZZLX' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyongtext.innerHTML="<div>工作单位</div>";
		beiyong.innerHTML="<input class='nui-textbox' name='gzdw'/>";
	}else{
		nutbeiyongtext.innerHTML="<div>适用堆型:</div>";
		nutbeiyong.innerHTML="<input class='nui-dictcombobox' name='sydx' dictTypeId='SYDX' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SYDX' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
		beiyongtext.innerHTML="<div>验证项目:</div>";
		beiyong.style.width="12%";
		beiyong.innerHTML="<input class='nui-dictcombobox' style='width:100%' name='yzxm' dictTypeId='YZXM' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=YZXM' textField='dictName' valueField='dictID' emptyText='请选择'  required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
	}
	var infos = nui.clone(data);
	entityVal=infos.entityVal;//数据实体
	var urlName = infos.urlName;//数据查询url
	var columnsVal = infos.columnscode;
	init(urlName,columnsVal);
	
    grid = nui.get("datagrid");
    var formData = new nui.Form("#form1").getData(false, false);
    formData["parameter/code"] = entityVal;
    nui.get("entity").setValue(entityVal);
    
	grid.load();
	grid2 = nui.get("datagrid2");
	queryList(data);
	nui.parse();
	var s=nui.get("combobox1");
	for(var i=0;i<s.data.length;i++){
		if(s.data[i].id==param.round){
			s.select(i);
		}
	}
}
//获取数据
  function queryList(data){
  
  var json=nui.encode({id:data.id,relationType:data.pageType,jd:jdid});

   	nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.Common.queryList.biz.ext",
                type: 'POST',
                data: json,
                async:false, 
                success: function (text){
               		grid2.setData(text.data);          	
                }
           });
           chaxun();
  }

function init(urlName,columnsVal) {
	var field=(entityVal.substr(entityVal.lastIndexOf(".")+1)+"s").toLowerCase();
	//动态创建表格
// 	var grid =new nui.DataGrid();
// 	grid.set({
//         url:urlName,
//         style:"width:100%;height:100%;",
//         id:"datagrid",
// //      class:"nui-datagrid",
//         columns: columnsVal,
//         multiSelect:true,
//         allowResize:false,
//         allowCellEdit:true,
        
//         showPageIndex:true,
//         allowRowSelect:true,
//         showPager:false,
//         editNextOnEnterKey:true,
//         editNextRowCell:true,
//         cellEditAction:"cellclick",
//         pageSize:20,
//         dataField:"data",
//         cellEdit: true
// //         onselectionchanged:"selectionChanged",
//     });
//     grid.render(document.getElementById("gridField"));
//     //给grid2增加两个列，一个是结果，一个是备注
    var a={field:'result',header:'审查结果', width:100, headerAlign:"center", allowSort:true,editor: { type: "textbox", minValue: 0, maxValue: 200, value: 25}};
 	//添加
	columnsVal.push(a);
	a={field:'remark',header:'审查备注', width:100, headerAlign:"center", allowSort:true,editor: { type: "textbox", minValue: 0, maxValue: 200, value: 25}};

	
	columnsVal.push(a);
	columnsVal.splice(0,2);
	var dxlbColumn = grid.getColumns();//待选列表
    var yxlbColumn = grid2.getColumns();//已选列表
    for(var i=0;i<columnsVal.length;i++){
    yxlbColumn.push(columnsVal[i]);
    if(columnsVal.length-i<3){
    	continue
    }
    dxlbColumn.push(columnsVal[i]);
    
    }
//     grid.render(document.getElementById("gridField"));
    grid.url=urlName;
    //给grid2增加两个列，一个是结果，一个是备注
     grid.setColumns(dxlbColumn);
     grid2.setColumns(yxlbColumn);	
    
};


    //公共代码转换
    function xbRenderer(e) {

    if (e.value == "YGQ" || e.value == "YCX" || e.value == "YZT") {
            e.rowStyle = 'color:red';
        }
        return nui.getDictText(e.column.dic,e.value);
    }

  //导入查询清单
            function chaxunqingdan(){
            	if(nui.get("combobox1").text==""){
					nui.alert("请填写大修轮次");
					return;
				}
				 var data = {};
				 
				 data.modelFlag = "4";
				 data.jdid = jdid;
				 data.jzid = jzid;
				 
				 var json = nui.encode(data);

			   				nui.open({showMaxButton : true,
					        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
					        title: "新增记录", width: 600, height: 200,
					        onload: function () {//弹出页面加载完成
					        	var iframe = this.getIFrameEl();
					            var data = {
					            	chaxun:"1",
					            	pageType:"batchAdd",
					            	type:pageType,
					            	tempFileName:"scjl.xlsx",
					            	tempLoadName:"查询清单导入模板",
					            	entitfName:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgtFile"
					            };//传入页面的json数据
					             iframe.contentWindow.SetData(data);
					        },
					        ondestroy: function (action) {//弹出页面关闭前
					        var iframe = this.getIFrameEl();
					        var data="";
							//得到的结果
							if(iframe.contentWindow.GetData()){
								data = iframe.contentWindow.GetData().data;	
							}
							
							grid2=nui.get("datagrid2");
							var rows=grid2.getData();
							var real=new Array;
							for(var i=0;i<data.length;i++){
							var pd=0;
								for(var j=0;j<rows.length;j++){
									if(data[i].idnumber==rows[j].idnumber){
										pd=1;
									}
								}
								if(pd==0){
									real.push(data[i]);
								}
							}
							
							grid2.addRows(Automatic(real));
							var from=fz();
					        grid.load(from);
					    	}
						});
			
		}
                        
            //添加查询清单
			function chaxun(){
				var formData=fz();
                grid.load(formData);
			}
            
            //添加查询清单
			function chaxunqing(ids){
				if(nui.get("combobox1").text==""){
					nui.alert("请选择大修轮次");
					return;
				}
				bianli(ids);
				var formData=fz();
                grid.load(formData);
				
			}

//添加行
			function tankuang(){
				var combobox=nui.get("combobox1").text;
				if(combobox==""){
					nui.alert("请填写大修轮次");
					return;
				}
				var json=nui.encode({xh:combobox});
				$.ajax({
                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getdaxiutime.biz.ext",
                    type:'POST',
                    data:json,
                    async: false,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	var times=text.data;
                    	starttime=new Date(times.startTime);
                    	endtime=new Date(times.endTime);
                    	
                    }
                });
				
			
				var rows = grid.getSelecteds();
				grid.removeRows(rows,true);
				grid2.addRows(Automatic(rows));
				chaxun();
			}
 //预览页面附件显示
    function setFile(e) {
        var fileRealName = e.record.fileRealName;
        var filepath = e.record.filePath;
        var fileId = e.record.fildid;
        if (fileRealName == null || fileRealName == 'null') {
            return "";
        }
        var html = '<a href="#" onclick="load(\'' + fileId
            + '\')" id="attr_' + filepath + '" >' + fileRealName
            + '</a>';
        return html;
    }

 //页面条件筛选赋值
            function fz(){
            	var id="";
            	var pd=0;
            	grid2=nui.get("datagrid2");	
            	var yicunzai=grid2.data;
            	for (var index in yicunzai){
					if(!isNaN(index)){
						if(pd==1){
							id+=",";
						}	
						id+=yicunzai[index]["uuid"];
						if(pd==0){
							pd=1;
						}
					}
				}
            	var form=new nui.Form("#form1").getData(false,false);
            	form["parameter/name"]=form["name"];
            	form["parameter/empnumber"]=form["empnumber"];
            	form["parameter/code"]=pageType;
            	form["parameter/jd"]=jdid;
            	form["parameter/already"]=id;
            	if(pageType=="aut"){
            		form["parameter/sqlx"]=form["sqlx"];	
            	}else if(pageType=="Ndt"){
            		form["parameter/zzlx"]=form["zzlx"];
            		form["parameter/gzdw"]=form["gzdw"];	
            	}else if(pageType=="Pro"){
            		form["parameter/sydx"]=form["sydx"];
            		form["parameter/yzxm"]=form["yzxm"];	
            	}
            	return form;
            }
            //删除
            function shanchu(){
            
            	var rows=grid2.getSelecteds();
            	if(rows.length>0){
	            	grid2.removeRows(rows,true);
	            	chaxun();
            	}else{
            		nui.showTips(
						{
							content: '未选择数据',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
            	}
            }
            //清空
           function qingkong(){
           	var rows=grid2.getData();
           	grid2.removeRows(rows,true);
           	chaxun();
           }
           //获取大修轮次
			function daxiu(){
				nui.get('combobox1').setAjaxType("POST");
				nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
			}
			
			
		function add(){
			var title=nui.get("combobox1").text;
			
			if(pageType=="aut"){
				title+="大修授权审查表";
			}else if(pageType=="Ndt"){
				title+="大修无损检测资质审查表";
			}else if(pageType=="Pro"){
				title+="大修特殊验证项目人员审查表";
			}
				nui.get("#submit").setEnabled(false);
				var rows=grid2.getData();
				
				var data={relationType:pageType,jd:jdid,title:title,round:nui.get("combobox1").text};
				
				if(submittype=="updata"){
					data.id=param.id;
				}
				var json=nui.encode({ids:rows,check:data,submittype:submittype});
				$.ajax({
			    url:"com.cgn.itmp.dailyandoverhaul.authorization.Common.insertAll.biz.ext",
			    type:'POST',
			    cache:false,
			    data:json,
			    contentType:'text/json',
			    success:function(data){
			    	window.CloseOwnerWindow();
			    	nui.get("#submit").setEnabled(true);
			    }
			  });	
		}
		//自动审查结果
		function Automatic(data){
		for(var i=0;i<data.length;i++){
			var validity;
			if(pageType=="aut"){
				validity=nui.parseDate(data[i].sqyxq);
			}else if(pageType=='Ndt'){
				validity=nui.parseDate(data[i].yxq);
			}else if(pageType=="Pro"){
				validity=nui.parseDate(data[i].yxrq);
			}
			if(validity>=endtime){
				data[i].result="合格";
				data[i].remark="";
			}else if(validity>starttime&&validity<endtime){
				data[i].result="合格";
				data[i].remark="注意到期时间";
			}else{
				data[i].result="不合格";
				data[i].remark="";
			}
		}
		
			return data;
        }
                    			
                    			
		function getalltime(e){
			var json=nui.encode({xh:e.value});
				$.ajax({
                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getdaxiutime.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	var times=text.data;
                    	starttime=new Date(times.startTime);
                    	endtime=new Date(times.endTime);
                    	
                    }
                });
			}
			//取消
            function onCancel() {
                window.CloseOwnerWindow();
            }
			//重置
            function Reset(){
          	  var form = new nui.Form("#form1");//将普通form转为nui的form
                form.reset();

            }
            //状态公共代码转换
		    function ztRenderer(e) {
		        if (e.row.zt == "YGQ" || e.row.zt == "YCX" || e.row.zt == "YZT") {
		            e.rowStyle = 'color:red';
		        }
		        return nui.getDictText("SQGL_WSZT", e.value);
		    }
		  
		    //有效期公共代码转换
		    function yxqRenderer(e) {
		    	var yxq ;
		    if(e.row.sqyxq){
		    	yxq = new Date(e.row.sqyxq);
		    }else if(e.row.yxrq){
		    	yxq = new Date(e.row.yxrq);
		    }else{
		    	yxq = new Date(e.row.yxq);
		    }
		        
		        if (yxq != null && yxq < new Date()) {
		            e.rowStyle = 'color:red';
		            if(e.row.zt!="" && e.row.zt!=null && e.row.zt!="ZC"){
		            	return e.cellHtml;
		            }else{
		            	e.row.zt = "YGQ";
		            }
		             return e.cellHtml;
		        } else {
		          if(e.row.zt!="" && e.row.zt!=null&&e.row.zt!="YGQ"){
		            	return e.cellHtml;
		            }else{
		            	 e.row.zt = "ZC";
		            }
		            return e.cellHtml;
		        }
		    }
            
</script>

</html>