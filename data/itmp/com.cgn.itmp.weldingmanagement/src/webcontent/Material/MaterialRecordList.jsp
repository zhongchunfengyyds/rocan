<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@include file="/common/commonnew.jsp"%>

<%
    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
    String dataTime = df.format(new Date());
%>
<html>
<%--
- Author(s): train
- Date: 2019-09-03 15:11:16
- Description:
    --%>
    <head>
        <title>
            使用记录
            </title>
         <meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
		<style type="text/css">
		.mini-textbox-input{height: 100%!important;}
		.mini-calendar-clearButton,.mini-calendar-tadayButton{
    border-color: #004a86;
    background: #004a86;
    color: #fff;
    font-family: "微软雅黑";
}
.mini-calendar .mini-calendar-weekend {
    color: #C00000;
}
.mini-calendar .mini-calendar-selected, .mini-calendar .mini-calendar-date:hover {
    background-color: #004a86;
    border-color: #004a86;
    color: #fff;
}
.mini-calendar-days td {
    text-align: center;
    vertical-align: middle;
    padding: 2px;
    padding-left: 3px;
    padding-right: 3px;
    font-size: 9pt;
    font-family: Tahoma, Verdana, 宋体;
    cursor: default;
}
		</style>
    </head>
      <body style="background-color: #f1f1f1;overflow: scroll;width: 98%; height: 98%;">
        <div class="bs-docs-section" style="height: 100%">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
					<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label" style="width: 10%;">关键字查询:</td>
							<td class="form_label" style="width: 15%;"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="1"
								style="width: 26%; border-right: 1px solid #f7f7f9 !important"
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
							<td colspan="1" style="width: 5%"><a class="btn btn-default" onclick="output()"><b:message key="btn-export" /></a></td>
							<td colspan="1" style="width: 7%">
									时间
							</td>
							<td colspan="1" style="width: 13%">
									<input id="date1" style="width: 150px;float: right;" class="nui-datepicker" format="yyyy-MM-dd" ondrawdate="onDrawDateStart"  showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"/>
							</td>
							<td colspan="1" style="width: 5px">
							-
							</td>
							<td colspan="1" style="width: 13%" >
									<input id="date2" style="width: 150px;float: left;" class="nui-datepicker" format="yyyy-MM-dd" ondrawdate="onDrawDateEnd" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"/>
							</td>
							<td colspan="1" style="width: 5%">型号
							</td>
							<td colspan="1" style="heigth:100%;text-align: center !important;">
								<input style="width: 150px;heigth:100%!important;" class="nui-combobox" dataField="jsonObject" valueField="id" textField="name" id="leixin"/>
							</td >
							<td colspan="1">
								<a class="btn btn-default" onclick="tongji()">统计</a>
							</td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							
							</td>
						</tr>
					</table>
					<div id="form1" class="nui-form displaynone" align="center"
						style="height: 50px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.MaterialRecord.MaterialRecord">
						<!-- 排序字段 -->
						 <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="borandrettime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<table id="table1" class="table" style="height: 100%">
						<tr>
                       
                         <td class="form_label">
                           名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/name"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            型号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/model"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    	</tr>
                    	<tr>
                        
                         <td class="form_label">
                           操作类型:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" dictTypeId="HCJLZT" name="criteria/_expr[3]/operation"
                            textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..." />
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                       	 </td>
                   		 </tr>
                    	<input class="nui-hidden" id="con_jdid" name="criteria/_expr[4]/jd" /> 
			            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="="> 
			            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="end">
			            
                		</table>
					</div>
				</div>
			</div>
		</div>
<!-- 	</div> -->

            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="materialrecords"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.materialrecordbiz.queryMaterialRecords.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false"
                        >

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            名称
                        </div>
                        <div field="standard" headerAlign="center" allowSort="true" renderer="bzRender">
                            标准
                        </div>
                        <div field="model" headerAlign="center" allowSort="true" >
                            型号
                        </div>
                        <div field="brand" headerAlign="center" allowSort="true" >
                            标准牌号
                        </div>
                        <div field="specifications" headerAlign="center" allowSort="true" >
                            规格
                        </div>
                        <div field="packing" headerAlign="center" allowSort="true" >
                            包装方式
                        </div>
                        <div field="inventory" headerAlign="center" allowSort="true" >
                            库存数量
                        </div>
                        <div field="measurement" headerAlign="center" allowSort="true" >
                            计量单位
                        </div>
                        <div field="validuntil" headerAlign="center" allowSort="true" >
                            有效期至
                        </div>
                        <div field="isbf" headerAlign="center" allowSort="true" renderer="bfRenderer">
                            状态
                        </div>
                        <div field="remarks" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="operation" headerAlign="center" allowSort="true" renderer="hcjlRenderer">
                            操作类型
                        </div>
                        <div field="borandretnumber" headerAlign="center" allowSort="true" >
                            借用/归还数量
                        </div>
                        <div field="borandretperson" headerAlign="center" allowSort="true" >
                            借用/归还人
                        </div>
                        <div field="borandretunit" headerAlign="center" allowSort="true" >
                            借用/归还单位
                        </div>
                        <div field="borandrettime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            借用/归还时间
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            var jdid=getCookie('jdid');
            nui.get('con_jdid').setValue(jdid);
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
            
            nui.get("leixin").setUrl("com.cgn.itmp.weldingmanagement.materialbiz.getRecordType.biz.ext?base="+jdid);
            
             
//              function dateFormat(fmt, date) {
// 				    let ret;
// 				    let opt = {
// 				        "Y+": date.getFullYear().toString(),        // 年
// 				        "m+": (date.getMonth() + 1).toString(),     // 月
// 				        "d+": date.getDate().toString(),            // 日
// 				        "H+": date.getHours().toString(),           // 时
// 				        "M+": date.getMinutes().toString(),         // 分
// 				        "S+": date.getSeconds().toString()          // 秒
// 				        // 有其他格式化字符需求可以继续添加，必须转化成字符串
// 				    };
// 				    for (let k in opt) {
// 				        ret = new RegExp("(" + k + ")").exec(fmt);
// 				        if (ret) {
// 				            fmt = fmt.replace(ret[1], (ret[1].length == 1) ? (opt[k]) : (opt[k].padStart(ret[1].length, "0")))
// 				        };
// 				    };
// 				    return fmt;
// 				}
			
			var format = function(time, format){
			    var t = new Date(time);
			    var tf = function(i){return (i < 10 ? '0' : '') + i};
			    return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a){
			        switch(a){
			            case 'yyyy':
			                return tf(t.getFullYear());
			                break;
			            case 'MM':
			                return tf(t.getMonth() + 1);
			                break;
			            case 'mm':
			                return tf(t.getMinutes());
			                break;
			            case 'dd':
			                return tf(t.getDate());
			                break;
			            case 'HH':
			                return tf(t.getHours());
			                break;
			            case 'ss':
			                return tf(t.getSeconds());
			                break;
			        }
			    })
			}
//  						var timeC = format(timeA, 'yyyy-MM-dd HH:ss');   //timeC界面显示格式
			
            function tongji(){
            var chujie=0;
            var guihuan=0;
           	var zong=grid.getData();
			
           	var date1=format(nui.get("date1").getValue(),'yyyy-MM-dd');
           	var date2=format(nui.get("date2").getValue(),'yyyy-MM-dd');
           	var leixin=nui.get("leixin").getValue();
           		if(date1=="NaN-NaN-NaN"||date2=="NaN-NaN-NaN"){
           			nui.alert("请选择时间段！");
           			return;
           		}
           		if(leixin==""){
           			nui.alert("请选择焊材统计型号！");
           			return;
           		}
           		if(date1>date2){
           			nui.alert("请选择正确的时间段");
           			return;
           		}
           	
           	for(var i=0;i<zong.length;i++){
           	/* alert(zong[i].borandrettime) */
           		if(date1<=format(zong[i].borandrettime,'yyyy-MM-dd')&&format(zong[i].borandrettime,'yyyy-MM-dd')<=date2){
           		if(leixin==""){
	           				
	           			
	           		if(zong[i].operation=="JY"){
	           			
	           			var cj=parseInt(zong[i].borandretnumber);
	           			chujie +=cj;
	           		}
	           		if(zong[i].operation=="GH"){
	           			var gh=parseInt(zong[i].borandretnumber);
	           			guihuan +=gh;
	           		}
	           		}else{
		           		if(zong[i].operation=="JY"&&zong[i].model==leixin){
		           			
		           			var cj=parseInt(zong[i].borandretnumber);
		           			chujie +=cj;
		           		}
		           		if(zong[i].operation=="GH"&&zong[i].model==leixin){
		           			var gh=parseInt(zong[i].borandretnumber);
		           			guihuan +=gh;
		           		}
	           		}
           		}
           	}
         	if(chujie==0&&guihuan>0){
         		nui.alert("本统计时段无领用记录");
         		return;
         	}else if(guihuan==0&&chujie>0){
         		nui.alert("本统计时段无归还记录");
         		return;
         	}else if(guihuan==0&&chujie==0){
         		nui.alert("本统计时段无使用记录");
         		return;
         	}
           	if(chujie>=guihuan){
           	var sum=chujie-guihuan;
	           	if(leixin!=""){
	           		nui.alert("本统计时段 焊材:"+leixin+" 使用量为："+sum);
	           		return;
	           	}else{
					nui.alert("本统计时段 焊材使用量为："+sum);
					return;
				}
           	}else{
           		nui.alert("本统计时段领用数量小于归还数量");
           		return;
        	}
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
                width: 607,
                height: 177,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.weldingmanagement.MaterialRecord.MaterialRecord",
                        queryParam: json, //查询数据
                        queryKey: 'criteria', //查询实体名
                        query: ['name','model','operation','jd'], //按顺序放置
                        //queryIndex: [1, 3, 10, 11, 12, 13],  //按顺序放置
                        expTitle: "使用记录",
                        filterField: "uuid,isdel,jd,orderno", //要过滤的字段，多字段用,隔开
                        dicFieds: "operation@HCJLZT,isbf@BFBS",
                        jdFieds: "jd",
                        order: "borandrettime@desc",
                        attachFied:"fildid"
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
    }    
		//公共代码转换
			function bfRenderer(e){
	    		return nui.getDictText("BFBS",e.value);
	    	}
	    	function hcjlRenderer(e){
	    		return nui.getDictText("HCJLZT",e.value);
	    	}
	    	function bzRender(e){
	    		return nui.getDictText("BZ",e.value);
	    	}
	    	
            //新增
            function add() {
                nui.open({
                    url: "MaterialRecordForm.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
            }

         

                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                     nui.get('con_jdid').setValue(getCookie('jdid'));
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
                                
		    //起始日期事件
    function onDrawDateStart(e) {
        var date = e.date;
        var d = nui.get('date2').getValue();
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
        var d = nui.get('date1').getValue();
        if(d == null || "" == d){
        	 return;
        }
        if (date.getTime() < d.getTime()) {
            e.allowSelect = false;
        }
    }
    function btnQuery() {
			        var gjz = $("#cond").val();
			        if (gjz == "") {
			            refresh();
			        } else {
			            var data = {
			            	matchFied: "name,standard,model,brand,specifications,packing",
			                dicFied: "standard@BZ",
			                wordVal: $("#cond").val(),
			                entity: $("input[name='criteria/_entity']").val(),
			                entityName: 'criteria',
			                sfdel: true,
			                jdInfo: 'jd@' + getCookie('jdid')
			            };
			            var query = nui.decode(getKeyWordQuery(data));
			            query["criteria/_expr[10]/isdel"] = "0";
			            grid.load(query);
			        }
			    }
			    
			    function onDrawDate(e) {
            var date = e.date;
            var d = new Date();

            if (date.getTime() < d.getTime()) {
                e.allowSelect = false;
            }
        }
                            </script>
                        </body>
                    </html>
