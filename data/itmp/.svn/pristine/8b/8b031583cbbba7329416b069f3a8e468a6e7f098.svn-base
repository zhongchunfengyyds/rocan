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
        <title id="title">
            	到期提醒
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

<body style="background-color: #f1f1f1; overflow: scroll; height: 100%;width:100%;"  >
<div class="bs-docs-section" style="height:100%;">
<div class="nui-panel" title="待选列表" style="width: 100%; height: 50%" buttons="collapse" showToolbar="true">
<div style="width: 100%; height: 8%;">
	<div id="form1" class="nui-form" align="center" style="height: 100%;width:100%; ">
		<!-- 数据实体的名称 -->
		<input class="nui-hidden" name="criteria/_entity" id="entity" value="">

		<table id="table1" class="table" style="height:50%;width:80%;float:left;">
        <tr>
			<td  colspan="1" style="width:4%;" id="firsttext">
				姓名:
			</td>
			<td style="width:7%;text-align: center;" colspan="1" id="firstinput">
				<input class="nui-textbox" name="name" id="name"/>
			</td>
			<td style="width:4%;text-align: center;" colspan="1" id="secondtext">
				员工号:
			</td>
			<td style="width:7%;" colspan="1" id="secondinput">
				<input class="nui-textbox" name="empnubmer" id="empnubmer"/>
			</td>
			<td id="beiyongtext" colspan="1" style="width:6%;text-align: center;">
				
			</td>
			<td id="beiyong" colspan="1" style="width:8%;text-align: center;">
				
			</td>
			<td id="remname" style="text-align: center;width:10%;padding: 0 0 0 20px;" colspan="1"   >
				到期提醒名称:
			</td>
			<td style="width:10%;" colspan="1">
				<input class="nui-textbox" name="title" id="name" onvalidation="onCheck"/>
			</td>
			
		</tr>
	</table>
			<table id="table1" class="table" style="height:70%;width:15%;float:right;">
        <tr>
			
   
		</tr>
	</table>
	</div>
	</div>
	
		<div class="nui-fit" style="height:40%;float:left;width:100%;"   id="gridField">
                
	</div>
</div>
<div class="nui-panel" title="已选列表" style="width: 100%; height: 50%;" buttons="collapse" showToolbar="true">
	<div class=""  style="float:left;width:100%;"  >
        <div id="form2" style="margin:0px 0;" class="nui-form" align="center" >
           
					<table style="width: 100%;">
						<tr style="width: 100%;">
								<td id="programtext"  colspan="1"  style="width:4%" >
				提前</td>
			<td  id="programtime" colspan="1" style="width:5%"><input  style="width:100%" class="nui-spinner" minValue="1" maxValue="250" onvalidation="onCheck"  name="advanceday" id="advanceday" />
			</td>
			<td  colspan="1" id="programhide" style="width:10%">
				天到期提醒</td>
			
			<td  colspan="1" style="width:5%">
				持续提醒</td>
			<td  colspan="1" style="width:4%"><input class="nui-spinner" minValue="1" maxValue="250" onvalidation="onCheck"  name="duration" id="duration" />
			</td>
			<td  colspan="1" style="width:4%">
				天</td>
								
								<td  colspan="1" style="width:10%">
				选择提醒人员：
				</td>
			<td  colspan="1" style="width:20%"><input property="editor" id="reminder" onvalidation="onCheck"  multi="true" name="reminder" class="nui-textboxlist" dataField="list"
                       style="width:80%"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
                       textField="empcodename" searchField="keyword" />
			</td>
			
								<td>
								
								<button style="float:right;margin:0 5px;" class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="onCancel()">
									关闭
								</button>
								
							</td>
						</tr>
					</table>
				</div>
				</div>
	
		<div class="nui-fit" style="height:40%;width:100%;float:left;"   id="gridField2">
		</div>
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
            
            
			
//防止弹框
miniui_debugger = false;

//修改
function setupdataData(data) {
	param=data;
	submittype="updata";
	pageType=data.pageType;
	var beiyong=document.getElementById("beiyong");
	var beiyongtext=document.getElementById("beiyongtext");
	if(pageType=="aut"){
		beiyongtext.innerHTML="<div>授权类型:</div>";
		beiyong.innerHTML="<input class='nui-dictcombobox' name='sqlx' dictTypeId='SQTYPE'"+
						"url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SQTYPE'"+
						"textField='dictName' valueField='dictID' emptyText='请选择'"+
						"required='false' allowInput='true' showNullItem='true' nullItemText='请选择...'' />";
	}else if(pageType=="Ndt"){
		beiyongtext.innerHTML="<div>工作单位:</div>";
		beiyong.innerHTML="<input class='nui-textbox' name='gzdw'/>";
	}else if(pageType=="Welder"){
		beiyongtext.innerHTML="<div>所属公司:</div>";
		beiyong.innerHTML="<input class='nui-textbox' name='company' />";
	}else if(pageType=="Mac"){
		document.getElementById("firsttext").innerHTML="设备编号:";
		document.getElementById("firstinput").innerHTML="<input class='nui-textbox' name='number' id='number'/>";
		document.getElementById("secondtext").innerHTML="设备名称:";
		document.getElementById("secondinput").innerHTML="<input class='nui-textbox' name='name' id='sbname'/>";
		beiyongtext.innerHTML="状态:";
		beiyong.innerHTML="<input class='nui-dictcombobox' name='state' dictTypeId='HJGLZT' url='com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=HJGLZT' textField='dictName' valueField='dictID' emptyText='请选择'   allowInput='true' showNullItem='true' nullItemText='请选择...'/>";
	}else if(pageType=="program"){
		document.getElementById("firsttext").innerHTML="程序编码:";
		document.getElementById("firstinput").innerHTML="<input class='nui-textbox' name='cxbm' id='cxbm'/>";
		document.getElementById("firsttext").style.width="7%";
		document.getElementById("secondtext").innerHTML="状态:";
		document.getElementById("secondtext").style.width="7%";
		document.getElementById("secondinput").innerHTML="<input class='nui-textbox' name='status' id='status'/>";
		beiyongtext.innerHTML="下次升版时间:";
		beiyongtext.style.width="8%";
		beiyong.innerHTML="<input  class='nui-datepicker' name='xcsbsj' />";
		document.getElementById("programhide").innerHTML="";
		document.getElementById("programtext").innerHTML="升版提醒日期：";
		document.getElementById("programtext").style.width="10%";
		document.getElementById("programtime").innerHTML="<input class='nui-datepicker'required='true' name='remindertime' id='remindertime'/>";
		document.getElementById("programtime").style.width="10%";
		document.getElementById("title").innerHTML="升版提醒";
		document.getElementById("remname").innerHTML="升版提醒名称:";
		document.getElementById("remname").style.width="10%";
		
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
	if(data.remindertime){
		nui.get("remindertime").setValue(data.remindertime);		
	}
	nui.get("name").setValue(data.title);
	nui.get("reminder").setValue(data.reminder);
	nui.get("reminder").setText(data.remindertext);
	nui.get("advanceday").setValue(data.advanceday);
	nui.get("duration").setValue(data.duration);
}

  function queryList(data){
  var json=nui.encode({id:data.id,relationType:data.pageType,jd:jdid});

   	nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.Common.editReminder.biz.ext",
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
// 	var field=(entityVal.substr(entityVal.lastIndexOf(".")+1)+"s").toLowerCase();
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
        showPager:false,
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
   	columnsVal.splice(0,2);
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


                        
            //添加查询清单
			function chaxun(){
				var formData=fz();
                grid.load(formData);
				
			}
            

			//添加行
			function tankuang(){
				var rows = grid.getSelecteds();
				if(rows.length>0){
	            	grid.removeRows(rows,true);
					grid2.addRows(rows);
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
				if(pageType=="Welder"){
            		id+=yicunzai[index]["operatingnumber"];	
            	}else if(pageType=="program"){
            		id+=yicunzai[index]["UUID"];	
            	}else{
            		id+=yicunzai[index]["uuid"];
            	}
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
//     	form["parameter/idnumbers"]=id;
    	form["parameter/already"]=id;
    	
    	if(pageType=="aut"){
    		form["parameter/sqlx"]=form["sqlx"];	
    	}else if(pageType=="Ndt"){
    		form["parameter/gzdw"]=form["gzdw"];	
    	}else if(pageType=="Welder"){
    		form["parameter/company"]=form["company"];	
    	}else if(pageType=="program"){
    		form["parameter/cxbm"]=form["cxbm"];
    		form["parameter/state"]=form["state"];
    		form["parameter/xcsbsj"]=form["xcsbsj"];
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
           
			
			//添加数据
		function add(){
			var form = new nui.Form("form1");
			form.validate();
			if(form.isValid()==false) return;
			var form2 = new nui.Form("form2");
			form2.validate();
			var title=nui.get("title").value;
			if(form2.isValid()==false) return;
				var advanceday=nui.get("advanceday").value;
				var duration=nui.get("duration").value;
				var reminder=nui.get("reminder").value;
				var remindertext=nui.get("reminder").text;
				
				var rows=grid2.getData();
				
				var data={relationType:pageType,jd:jdid,title:title,advanceday:advanceday,duration:duration,reminder:reminder,remindertext:remindertext};
				
				if(submittype=="updata"){
					data.id=param.id;
				}
				var json=nui.encode({ids:rows,check:data,submittype:submittype});
				$.ajax({
			    url:"com.cgn.itmp.dailyandoverhaul.authorization.Common.insertreminder.biz.ext",
			    type:'POST',
			    cache:false,
			    data:json,
			    contentType:'text/json',
			    success:function(data){
			    	window.CloseOwnerWindow();
			    }
			    
			  });	
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
             //状态公共代码转换
		    function timeRenderer(e) {
			    if(e.value!=""){
			        return nui.formatDate(e.value,"yyyy-MM-dd");
			    }else{
			    	return "";
			    }
		    }
            
            //选择审查记录
            function shencha(){
            	
            	var url="/itmp/authorization/Common/Remexamina.jsp";
            	if(param.pageType	=="Welder"){
            		url="/itmp/weldingmanagement/Review/ReviewrecordListRemexamina.jsp";
            	}
            	nui.open({
	            showMaxButton: true,
	            url: url,
	            title: "选择审查记录",
	            width: "70%",
	            height: "80%",
	            onload: function () {
	                var iframe = this.getIFrameEl();
	                if(param.pageType !="Welder"){
 						iframe.contentWindow.setData(param);
	                }
	            },
	            ondestroy: function (action) {
	            var iframe = this.getIFrameEl();
	                var id=iframe.contentWindow.getData();
	                if(id!=""){
	                	if(param.pageType=="Welder"){
	                		//焊工的审查
	                		queryWelderList(id);
	                	}else{
               				queryRemList(id);	                		
	                	}
               		} 
	            }
        		});
            } 
           //通过选择审查id去查询不合格和需要注意时间的人员
          function queryRemList(id){
			  var json=nui.encode({id:id,relationType:param.pageType,jd:jdid,result:"1"});
			   	nui.ajax({
                url: "com.cgn.itmp.dailyandoverhaul.authorization.Common.queryList.biz.ext",
                type: 'POST',
                data: json,
                async:false,
                success: function (text){
                if(text.data.length==0){
	                nui.alert("此审查记录里未存在不合格和需要注意的人员");
                	return;
                }
                var data=text.data;
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
                
                grid2.addRows(real);
                }
           });
           chaxun();
  }
          function onCheck(e){
                   
	       if (e.isValid) {
	         if(e.value==""){
	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }
	       }
	     }
          
          function queryWelderList(id){
        	  
        	  var json = nui.encode({id:id});
              $.ajax({
                  url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getWelderRevew.biz.ext",
                  type:'POST',
                  data:json,
                  cache:false,
                  contentType:'text/json',
                  success:function(text){
                	  if(text.data.length==0){
  	                	nui.alert("此审查记录里未存在不合格和需要注意的人员");
  	                	return;
	  	               }
	  	                var data=text.data;
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
	  	                
	  	                grid2.addRows(real);
                  
                  }
                  });
          }
          function Reset(){
        	  var form = new nui.Form("#form1");//将普通form转为nui的form
              form.reset();
          }
             //状态公共代码转换
		    function timeRenderer(e) {
			    if(e.value!=""){
			        return nui.formatDate(new Date(e.value),"yyyy-MM-dd");
			    }else{
			    	return "";
			    }
		    }
            
</script>

</html>