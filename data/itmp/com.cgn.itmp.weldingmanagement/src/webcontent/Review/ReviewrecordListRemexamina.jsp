<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<html>
<%--
- Author(s): littlebear
- Date: 2019-08-01 16:16:36
- Description:
    --%>
<head>
<title>到期提醒选择审查记录</title>
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
<body style="background-color: #f1f1f1; overflow: scroll;">



   
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
					<div id="form1" class="nui-form display" align="center" style="height: 4.5%" >
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
        
        
        
        <div class=""   style="width:100%;height:90%" showToolbar="false" showFooter="false" >
            
            
            <div class="nui-fit" style="width:100%;height:70%">
                <div 
                        id="datagrid1"
                        dataField="reviewrecords"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.reviewrecordbiz.queryReviewrecords.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        
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
                        
                        
                       
                    </div>
                </div>
            </div>
        </div>
        <div style="height:5%;position:absolute;left:50%;transform: translate(-50%, 0);bottom:0;text-align:center">
		<a class="mini-button btn btn-default btn-xs" onclick="add()">确定 </a> 
		<a class="mini-button btn btn-default btn-xs nui-button" onclick="cancel()">关闭</a>
	</div>
        </div>
        
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            var jdid = getCookie('jdid');
            var id="";
            
			nui.get('con_jdid').setValue(jdid);
	       
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

			//初始化
           
            
          

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                    showMaxButton : true,
                        url: "/itmp/weldingmanagement/Review/ReviewrecordnewAdd.jsp",
                        title: "编辑数据",
                       width: "75%", height: "70%",
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = row;
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setData(data);
                            },
                            ondestroy: function (action) {
                                if(action=="saveSuccess"){
                                    grid.reload();
                                }
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
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({reviewrecords:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.deleteReviewrecords.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
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
                                	
                                	var json = nui.encode({id:zhi.uuid});
                                	
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
                                	json=nui.encode({modelname:"scjl.ftl",data:canshu});
                                	$.ajax({
                                        url:"com.cgn.itmp.basecommon.Common.getword.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        async: false,
                                        success:function(text){
                                        window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.filename + "&projectPath=example&loadFileName=" + text.filename);
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
        	nui.get("outQr").disable();
        }else{
        	nui.get("delete").enable();
        	if (rows.length > 1 || grid.isEditing() ) {
	            nui.get("update").disable();
	            nui.get("outQr").disable();
	        } else {
	            nui.get("update").enable();
	            nui.get("outQr").enable();
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
			        }
			    }
    
    
    
    
    
    function getData(){
    	return id;
    }
    
    
    function add(){
    	
		var rows = grid.getSelecteds();
	   	
	   	id=rows[0].uuid;
		window.CloseOwnerWindow();
	}

	function cancel(){
		window.CloseOwnerWindow();
	}
                            </script>
                        </body>
                    </html>
