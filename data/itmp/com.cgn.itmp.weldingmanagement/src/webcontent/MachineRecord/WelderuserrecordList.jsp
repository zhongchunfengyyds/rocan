<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<html>
<%--
- Author(s): train
- Date: 2019-08-29 16:20:13
- Description:
    --%>
    <head>
        <title>
            	使用记录
        </title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>

        <%-- <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"> --%>
        <!-- </script> -->
    </head>
    <body style="background-color: #f1f1f1; overflow: scroll; width:98%;height:98%;">
  <div class="bs-docs-section" style="height:100%;">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label"><input type="text" id="cond" name="processInstDesc:%" class="form-control Keywordsearch" placeholder="关键字查询" tmplId="todolist" url=" "></td>
						<td colspan="2" style="width: 30%; border-right: 1px solid #f7f7f9 !important"
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
						</td>
						<td colspan="1">
						<button class="btn btn-default"
									type="button" onclick="output()">
									<b:message key="btn-export" />
						</button>
						</td>
						<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
					</tr>
				</table>
					<div id="form1" class="nui-form display" align="center" style="height: 88px">
						<!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord">
						<!-- 排序字段 -->
						 <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="operatetime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
					<tr>
                        <td class="form_label">
                            设备编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/number"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            设备名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/name"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                    
                        <td class="form_label">
                            设备型号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/equipmenttype"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                      
                        <td class="form_label">
                            输入电压:
                        </td>
                    
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[4]/input"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            生产厂家:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[5]/manufacturer"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
                        </td>
                         <td class="form_label">
                            状态:
                        </td>
                         <td colspan="1">
                              <input id="sta" class="nui-dictcombobox" name="criteria/_expr[6]/state"
                            dictTypeId="HJSYJL" url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=HJSYJL" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
                            <input class="nui-hidden"  name="criteria/_expr[6]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all">
                         </td>
                  		</tr>
                    <tr>
                        <td class="form_label">
                            所属单位:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[7]/unit"/>
                            <input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[7]/_likeRule" value="all">
                        </td>
                      	  
						<input class="nui-hidden" id="con_jdid" name="criteria/_expr[8]/jd" /> 
			            <input class="nui-hidden" name="criteria/_expr[8]/_op" value="="> 
			            <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="end">
                    	</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
      
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="welderuserrecords"
                        sortField="operatetime" 
                        sortOrder="desc"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.welderuserrecordbiz.queryWelderuserrecords.biz.ext"
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
                            uuid
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            设备编号
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="equipmenttype" headerAlign="center" allowSort="true" >
                            设备型号
                        </div>
                        <div field="input" headerAlign="center" allowSort="true" >
                            输入电压
                        </div>
                        <div field="currentrange" headerAlign="center" allowSort="true" >
                            电流调节范围
                        </div>
                        <div field="manufacturer" headerAlign="center" allowSort="true" >
                            生产厂家
                        </div>
                        <div field="certificate" headerAlign="center" allowSort="true" renderer="setFile">
                            设备合格证明书
                        </div>
                        <div field="verification" headerAlign="center" allowSort="true"  dateFormat="yyyy-MM-dd">
                            检定有效期
                        </div>
                        <div field="state" headerAlign="center" allowSort="true" renderer="czlxRenderer">
                            操作类型
                        </div>
                        <div field="unit" headerAlign="center" allowSort="true" >
                            所属单位
                        </div>
                        <div field="operateperson" headerAlign="center" allowSort="true" >
                            操作人
                        </div>
                        <div field="operatetime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd" >
                            操作时间
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
	 		nui.get('con_jdid').setValue(getCookie('jdid'));
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

//公共代码转换
	    	function czlxRenderer(e){
	    		return nui.getDictText("HJSYJL",e.value);
	    	}
	    	function setFile(e) {
				var fileRealName = e.record.certificate;
				var filepath = e.record.filepath;
				var fileId = e.record.fileid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
			return html;
			}
			function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
				 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
				 document.body.appendChild(elemIF);
				 elemIF.style.display = "none";
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
                url: "/itmp/basecommon/importExcelComm/expSelectFiledAndAttachMultiple.jsp",
                title: "导出数据",
                width: 360,
                height: 242,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord",
                        queryParam: json, //查询数据
                        queryKey: 'criteria', //查询实体名
                        query: ['number','name','equipmenttype','input','manufacturer','state','unit','jd'], //按顺序放置
                        //queryIndex: [1, 3, 10, 11, 12, 13],  //按顺序放置
                        expTitle: "使用记录",
                        filterField: "uuid,isdel,jd,orderno,fileid", //要过滤的字段，多字段用,隔开
                        dicFieds: "state@HJSYJL",
                        jdFieds: "jd",
                        order: "operatetime@desc",
                        attachFied:"fileid@certificate",
                        mode:"ftp"
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
    }    
		
            //新增
            function add() {
                nui.open({
                    url: "WelderuserrecordForm.jsp",
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

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                        url: "WelderuserrecordForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 300,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{welderuserrecord:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                                grid.reload();
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
                                    var json = nui.encode({welderuserrecords:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.weldingmanagement.welderuserrecordbiz.deleteWelderuserrecords.biz.ext",
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
				function btnQuery() {
			        var gjz = $("#cond").val();
			        if (gjz == "") {
			            refresh();
			        } else {
			            var data = {
			                matchFied: "number,name,equipmenttype,input,manufacturer,unit",
			                dicFied: "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
			                wordVal: $("#cond").val(),
			                entity: $("input[name='criteria/_entity']").val(),
			                entityName: 'criteria',
			                sfdel: true,
			                jdInfo: 'jd@' + getCookie('jdid')
			            };
			            var query = nui.decode(getKeyWordQuery(data));
// 			            query["criteria/_expr[10]/isdel"] = "0";
			            grid.load(query);
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

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
                                    }
                                }
                            </script>
                        </body>
                    </html>
