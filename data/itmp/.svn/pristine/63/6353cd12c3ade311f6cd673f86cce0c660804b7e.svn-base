<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): littlebear
- Date: 2019-08-01 16:16:36
- Description:
    --%>
<head>
<title>焊接审查记录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<style>
.sx{
 background-color:red;
	cursor: pointer;
}
</style>
<body style="background-color: #f1f1f1;width:98%;height:98%;" >



   
<div class="bs-docs-section" style="height: 100%;">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label"><input type="text" id="cond" name="processInstDesc:%" class="form-control Keywordsearch" placeholder="关键字查询" tmplId="todolist" url=" "></td>
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
					</tr>
				</table>
					<div id="form1" class="nui-form display" align="center" style="height: 6%" >
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.weldingmanagement.Review.Reviewrecord">
						<!-- 排序字段 -->
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
							<tr>
                        <td class="form_label">
                            	审查记录名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/record_name"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
                        </td>
                    
								
									<td style="display:none;" colspan="0"><input class="nui-hidden"
									name="criteria/_expr[11]/isdel" value="0" /> 
									<input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[11]/_likeRule"
									value="all">
									<input class="nui-hidden" id="con_jdid" name="criteria/_expr[12]/jd" /> 
					            <input class="nui-hidden" name="criteria/_expr[12]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[12]/_likeRule" value="end">
					            
					            <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="record_time">
								<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						            </td>
									
							</tr>
														</table>
					</div>
				</div>
			</div>
		</div>
        
        
        
        <div class=""   style="width:100%;" showToolbar="false" showFooter="false" >
            <div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
			<table style="width: 100%;">

					<table style="width: 100%;">
						<tr>
							<td style="width: 100%;">
							
								<button class="btn btn-default" onclick="add()" >
									</span>
									<b:message key="btn-add" />
								</button>
								<a id="update" disabled="disabled"
                       class="nui-button showCellTooltip  btn btn-default btn-xs"  name="ITMP_btnEdit"
                       onclick="edit()"> 修改
                    </a> 
								<a class="nui-button  btn btn-default btn-xs" disabled="disabled" onclick="remove()" id="delete" name="ITMP_btnDel" >
                        删除
                    </a>
								<!-- 						<a class="btn btn-default btn-xs" plain="true" onclick="exportDict();">导出</a> -->
								<button disabled="disabled" class="btn btn-default"
									type="button" id="print" onclick="xiazai()">
								
									打印
								</button>
								<button disabled="disabled" class="btn btn-default" id="outQr" 
									type="button" onclick="erweimas()">
									导出二维码
								</button>
								<button class="btn btn-default"
									type="button" id="recycle" onclick="recycle()">
									回收站
								</button>
							</td>
						</tr>
					</table>
				</div>


			</table>
		</div>
            
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="reviewrecords"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.reviewrecordbiz.queryReviewrecords.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            审查id
                        </div>
                        <div field="record_name" headerAlign="center" allowSort="true"  renderer="setnameFile">
                            审查记录名称
                        </div>
                        <div field="record_person" headerAlign="center" allowSort="true" >
                            审查人
                        </div>
                        <div field="record_time" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            审查日期
                       </div>
                        <div field="review_person" headerAlign="center" allowSort="true" >
                            复审人
                        </div>
                        <div field="review_time" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            复审日期
                        </div>
                        <div field="qw" headerAlign="center" allowSort="true" >
                            流程状态
                        </div>
                       
                        
                       
                    </div>
                </div>
            </div>
        </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            var jdid = getCookie('jdid');
            nui.get("update").disable();
        	nui.get("delete").disable();
			
            
			nui.get('con_jdid').setValue(jdid);
	       
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

			//初始化
            function setnameFile(e){
                var record_name = e.record.record_name;
                var uuid = e.record.uuid;
               	var html = '<a onclick="review(\'' + uuid + '\')">'+record_name+'</a>';
                return html;
            }
            function review(uuid){
            	nui.open({
                showMaxButton : true,
                    url: "/itmp/weldingmanagement/Review/ReviewrecordPrinting.jsp?id="+uuid,
                    title: "审查记录", width: '80%', height: '70%',
                    onload: function () {},
                    ondestroy: function (action) {//弹出页面关闭前
                    
                }
                });
            }
            
            //新增
            function add() {
                nui.open({
                showMaxButton : true,
                    url: "/itmp/weldingmanagement/Review/ReviewrecordnewAdd.jsp",
                    title: "新增记录", width: '100%', height: '100%',
                    onload: function () {},
                    ondestroy: function (action) {//弹出页面关闭前
                    
                        grid.reload();
                        nui.get("update").disable();
		        	nui.get("delete").disable();
		        	$("#print").prop("disabled", "disabled");
		        	$("#outQr").prop("disabled", "disabled");
		                    
                }
                });
            }

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
	                //判断是否为流程中数据
					if(fordata()){
						return;
					}
                    nui.open({
                    showMaxButton : true,
                        url: "/itmp/weldingmanagement/Review/ReviewrecordnewAdd.jsp",
                        title: "编辑数据",
                       width: "100%", height: "100%",
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = row;
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setData(data);
                            },
                            ondestroy: function (action) {//弹出页面关闭前
		                        grid.reload();
		                        nui.get("update").disable();
					        	nui.get("delete").disable();
					        	$("#print").prop("disabled", "disabled");
					        	$("#outQr").prop("disabled", "disabled");
					                    
			                }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
                    }

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                        //判断是否为流程中数据
							if(fordata()){
								return;
							}
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({data:rows,entity : "com.cgn.itmp.weldingmanagement.Review.Reviewrecord",token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.updatedel.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                                grid.reload();
                                                nui.alert("删除成功", "系统提示", function(action){
	                                                nui.get("update").disable();
										        	nui.get("delete").disable();
										        	$("#print").prop("disabled", "disabled");
										        	$("#outQr").prop("disabled", "disabled");
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
                    function reset() {
						$("#cond").val('');
							var form = new nui.Form("#form1");//将普通form转为nui的form
							form.reset();
							nui.get('con_jdid').setValue(jdid);
						}

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
                                }
                              //打印
                                function xiazai() {

                            	  	var canshu;
                                	var rows = grid.getSelecteds();
                                	var zhi=rows[0];
                                	
                                	var json = nui.encode({id:zhi.uuid,jd:jdid});
                                	$.ajax({
                                        url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getworddata.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        async: false,
                                        success:function(text){
                                        	canshu=text.data;
                                        }
                                	});
                                	json=nui.encode({modelname:"scjl.ftl",data:canshu,title:zhi.record_name});
                                	$.ajax({
                                        url:"com.cgn.itmp.basecommon.Common.getword.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        async: false,
                                        success:function(text){
                                        window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.filename.replace("\\", "/").split("/")[1] + "&projectPath=temp1&loadFileName=" + text.filename.replace("\\", "/").split("/")[1]);
// 											var elemIF = document.createElement("iframe");
<%-- 					                        elemIF.src = "<%=request.getContextPath()%>/"+text.filename; --%>
// 					                        elemIF.style.display = "none";
// 					                        document.body.appendChild(elemIF);
//                                         	window.location.href=text.filename;
                                        }
                                	});
                                }

//                                 //当选择列时
//                                 function selectionChanged(){
//                                     var rows = grid.getSelecteds();
//                                     if(rows.length>1){
//                                         nui.get("update").disable();
//                                     }else{
//                                         nui.get("update").enable();
//                                     }
//                                 }
                                //关闭窗口
                                function CloseWindow(action) {
                                	if (window.CloseOwnerWindow)
                                    return window.CloseOwnerWindow(action);
                                    else window.close();
                                }
    
    
    	  //当选择列时
    function selectionChanged() {
        var rows = grid.getSelecteds();
        if(rows.length==0){
	        nui.get("update").disable();
        	nui.get("delete").disable();
        	$("#print").prop("disabled", "disabled");
        	$("#outQr").prop("disabled", "disabled");
        }else{
        	nui.get("delete").enable();
        	$("#print").prop("disabled", "");
        	$("#outQr").prop("disabled", "");
        	if (rows.length > 1 || grid.isEditing() ) {
	            nui.get("update").disable();
	            $("#outQr").prop("disabled", "disabled");
	        } else {
	            nui.get("update").enable();
	            $("#outQr").prop("disabled", "");
	        }
        }
    }
    function btnQuery() {
			        var gjz = $("#cond").val();
			        if (gjz == "") {
			            refresh();
			        } else {
			            var data = {
			                matchFied: "record_name,record_person,review_person",
			                dicFied: "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
			                wordVal: $("#cond").val(),
			                entity: $("input[name='criteria/_entity']").val(),
			                entityName: 'criteria',
			                sfdel: true,
			                jdInfo: 'jd@' + getCookie('jdid')
			            };
			            var query = nui.decode(getKeyWordQuery(data));
			            grid.load(query);
			            nui.get("update").disable();
        	nui.get("delete").disable();
        	$("#print").prop("disabled", "disabled");
        	$("#outQr").prop("disabled", "disabled");
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
					urlName:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.queryReviewrecords.biz.ext",//回收
					entityVal:"com.cgn.itmp.weldingmanagement.Review.Reviewrecord",
					removeUrl : "com.cgn.itmp.weldingmanagement.common.delete.biz.ext",
					recoveryUrl : "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.recovery.biz.ext",//恢复
					columnscode:[
						{type:"indexcolumn" },
						{type:"checkcolumn" },
						{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
						{field:"record_name",header:"审查记录名称", width:100, headerAlign:"center", allowSort:true,},
						{field:'record_person',header:'审查人', width:100, headerAlign:"center", allowSort:true},
						{field:'record_time',header:'审查日期', width:100, headerAlign:"center", allowSort:true,dateFormat:"yyyy-MM-dd"},
						{field:'review_person',header:'复审人', width:100, headerAlign:"center", allowSort:true},
						{field:'review_time',header:'复审日期', width:100, headerAlign:"center", allowSort:true,dateFormat:"yyyy-MM-dd"}
					],

					
				};//传入页面的json数据
				iframe.contentWindow.setFormData(data);
			},
			ondestroy : function(action) {//弹出页面关闭前
			 $("#editbtn").prop("disabled", "disabled");
				grid.reload();
				nui.get("update").disable();
        	nui.get("delete").disable();
        	$("#print").prop("disabled", "disabled");
        	$("#outQr").prop("disabled", "disabled");
			}
		});
	}
    
    
    
    function erweimas(){
    	 var row = grid.getSelected();
    var json=nui.encode({id:row.uuid});
    grid.loading("正在导出中,请稍等...");
    	$.ajax({
		    url:"com.cgn.itmp.weldingmanagement.welderbiz.outQRword.biz.ext",
		    type:'POST',
		    cache:false,
		    data:json,
		    contentType:'text/json',
		    success:function(text){
		    grid.unmask();
		    window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.data + "&projectPath=example&loadFileName=" + text.data);
// 		    var elemIF = document.createElement("iframe");
<%--                   elemIF.src = "<%=request.getContextPath()%>/"+text.data; --%>
//                   elemIF.style.display = "none";
//                   document.body.appendChild(elemIF);
  		}
  	});
    }
    
     //遍历所选数据
          function fordata(){
          	var data = grid.getSelecteds();
          	var list=new Array();
          	var focds="";
          	if(data){
          		for(var i=0;i<data.length;i++){
          			if(data[i].processStatus=="0"){
		          		focds+="审查记录名称为["+data[i].record_name+"]正在[修改]流程中<br>";
          			}
          		}
          	}
          	if(focds==""){
          		return false;
          	}else{
	          	nui.alert(focds+"请待审批结束后再进行操作", "提示");
          		return true;
          	}
          } 
                            </script>
                        </body>
                    </html>
