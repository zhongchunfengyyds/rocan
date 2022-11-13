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

<body style="background-color: #f1f1f1; overflow: scroll; height: 100%;"  >
<div class="bs-docs-section" style="height:100%;">
<div style="width: 100%; height: 8%;">
	<div id="form1" class="nui-form" align="center" style="height: 100%">
		<!-- 数据实体的名称 -->
		<input class="nui-hidden" name="criteria/_entity" id="entity" value="">

		<table id="table1" class="table" style="height:100%">
        <tr>
			<td   colspan="1">
			<span style="font-size:20px">待审列表</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td  colspan="1">
				员工名称<input class="nui-textbox" name="name" />
			</td>
			<td  colspan="1">
				员工号<input class="nui-textbox" name="empnubmer"/>
			</td>
			<td id="beiyong" colspan="1">
				
			</td>
			
			
			<td  colspan="1">
				大修轮次<div id="combobox1" name="rounds" property="editor"  popupWidth="100%" class="nui-combobox" style="width:50%;"  popupWidth="150" textField="name" valueField="id" 
     			url=""  onvaluechanged="getalltime"  multiSelect="false" emptyText="请选择" valueField="id" textField="name"  dataField="jsonObject" nullItemText="请选择..." >
			</td>    
			<td><button class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="chaxun()">
			查询
		</button></td>
			<td><button class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="chaxunqingdan()">
			导入查询清单
		</button></td>
			<td><button class="nui-button btn btn-default btn-xs btn-submit"
			type="button" onclick="qingkong()">
				清空
			</button></td>
   
		</tr>
	</table>
	</div>
	</div>
	
		<div class="nui-fit" style="height:30%"   id="gridField">
                
	</div>

	<div class="nui-panel"  style="width:100%;height:10%;" showToolbar="false" showFooter="false" >
        <div id="form2" class="nui-form" align="center" style="height:10%">
            <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
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
								<button style="float:right" class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="tankuang()">
									取消
								</button>
								<button style="float:right" class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="add()()">
									确认
								</button>
							</td>
						</tr>
					</table>
				</div>
				</div>
				</div>
	
		<div class="nui-fit" style="height:40%"   id="gridField2">
		</div>
	</div>
</body>
		<script>
		
		
		nui.parse();
			var grid;
			var grid2;
			var removeUrl;
			var recoveryUrl;
			var entityVal;
			var jdid=getCookie('jdid');
            var jzid=getCookie('jzid');
            var starttime;
            var endtime;
            var pageType;
            var submittype;
            var param;
            
			daxiu();
//防止弹框
nui_debugger = false;
function setData(data) {
param=data;
submittype="add";
	pageType=data.pageType;
	var text=document.getElementById("beiyong");
	if(pageType=="aut"){
		text.innerHTML="授权类型<input class='nui-dictcombobox' name='sqlx' dictTypeId='SQTYPE'"+
						"url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE'"+
						"textField='dictName' valueField='dictID' emptyText='请选择'"+
						"required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'' />";
	}else if(pageType=="Ndt"){
		text.innerHTML="公司名称:<input class='nui-textbox' name='gzdw'/>";
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
	grid2.load(formData);
}
//修改
function setupdataData(data) {
param=data;
	submittype="updata";
	pageType=data.pageType;
	var text=document.getElementById("beiyong");
	if(pageType=="aut"){
		text.innerHTML="授权类型<input class='nui-dictcombobox'"+
									"name='sqlx' dictTypeId='SQTYPE'"+
									"url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE'"+
									"textField='dictName' valueField='dictID' emptyText='请选择'"+
									"required='false' allowInput='true' showNullItem='true'"+
									"nullItemText='请选择...'/>";
	}else if(pageType=="Ndt"){
		text.innerHTML="公司名称:<input class='nui-textbox' name='gzdw'/>";
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
	queryList(data);
	nui.parse();
	var s=nui.get("combobox1");
	for(var i=0;i<s.data.length;i++){
		if(s.data[i].id==param.round){
			s.select(i);
		}
	}
	
	
}

  function queryList(data){
  var json=nui.encode({id:data.id,relationType:data.pageType,jd:jdid});

   	nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.queryList.biz.ext",
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
	var grid =new nui.DataGrid();
	grid.set({
        url:urlName,
        style:"width:100%;height:100%;",
        id:"datagrid",
//      class:"nui-datagrid",
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
        dataField:"data",
        cellEdit: true
//         onselectionchanged:"selectionChanged",
    });
    grid.render(document.getElementById("gridField"));
    //给grid2增加两个列，一个是结果，一个是备注
    var a={field:'result',header:'审查结果', width:100, headerAlign:"center", allowSort:true,editor: { type: "textbox", minValue: 0, maxValue: 200, value: 25}};
 	//添加
	columnsVal.push(a);
	a={field:'remark',header:'审查备注', width:100, headerAlign:"center", allowSort:true,editor: { type: "textbox", minValue: 0, maxValue: 200, value: 25}};
	columnsVal.push(a);
    grid =new nui.DataGrid();
	grid.set({
        url:"",
        style:"width:100%;height:100%;",
        id:"datagrid2",
//          class:"nui-datagrid",
        columns: columnsVal,
        multiSelect:true,
        allowResize:false,
        allowCellEdit:true,
        allowCellSelect:true,
        showPageIndex:true,
        allowRowSelect:true,
        showPager:false,
        editNextOnEnterKey:true,
        editNextRowCell:true,
        cellEditAction:"cellclick",
        pageSize:20,
        dataField:"data",
        cellEdit: true
//         onselectionchanged:"selectionChanged",
    });
     grid.render(document.getElementById("gridField2"));
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
			   				nui.alert("该焊材已存在,不能导入","提示");
			   			}else{
			   				nui.open({showMaxButton : true,
					        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
					        title: "新增记录", width: 600, height: 300,
					        onload: function () {//弹出页面加载完成
					        	var iframe = this.getIFrameEl();
					            var data = {
					            	chaxun:"1",
					            	pageType:"batchAdd",
					            	tempFileName:"scjl.xlsx",
					            	tempLoadName:"查询清单导入模板",
					            	entitfName:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgtFile"
					            };//传入页面的json数据
					             iframe.contentWindow.SetData(data);
					        },
					        ondestroy: function (action) {//弹出页面关闭前
					        var iframe = this.getIFrameEl();
							//得到的结果
							var data = iframe.contentWindow.GetData().data;
							
							
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
					        grid.reload();
					    	}
						});
			   		}
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
					alert("请选择大修轮次");
					return;
				}
				bianli(ids);
				var formData=fz();
                grid.load(formData);
				
			}

//添加行
			function tankuang(){
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
						id+=yicunzai[index]["idnumber"];
						if(pd==0){
							pd=1;
						}
					}
				}
            	var form=new nui.Form("#form1").getData(false,false);
            	
            	form["parameter/name"]=form["name"];
            	form["parameter/empnubmer"]=form["empnubmer"];
            	form["parameter/code"]=pageType;
            	form["parameter/jd"]=jdid;
            	form["parameter/idnumbers"]=id;
            	if(pageType=="aut"){
            		form["parameter/sqlx"]=form["sqlx"];	
            	}
            	return form;
            }
            //删除
            function shanchu(){
            	var rows=grid2.getSelecteds();
            	grid2.removeRows(rows,true);
            	chaxun();
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
				
				var rows=grid2.getData();
				
				var data={relationType:pageType,jd:jdid,title:title,round:nui.get("combobox1").text};
				
				if(submittype=="updata"){
					data.id=param.id;
				}
				var json=nui.encode({ids:rows,check:data,submittype:submittype});
				$.ajax({
			    url:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.insertAll.biz.ext",
			    type:'POST',
			    cache:false,
			    data:json,
			    contentType:'text/json',
			    success:function(data){
			    	
			    }
			  });	
		}
		//自动审查结果
		function Automatic(data){
		for(var i=0;i<data.length;i++){
			var validity;
			if(pageType=="aut"){
				validity=new Date(data[i].sqyxq);
			}else if(pageType=='Ndt'){
				validity=new Date(data[i].yxq);
			}else if(pageType=="Pro"){
				validity=new Date(data[i].yxrq);
			}
			if(validity>starttime&&validity>endtime){
				data[i].result="合格";
				data[i].remarks="";
			}else if(validity>starttime&&validity<endtime){
				data[i].result="合格";
				data[i].remarks="注意到期时间";
			}else{
				data[i].result="不合格";
				data[i].remarks="";
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
</script>

</html>