<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
 %>
 <html>
<%--
- Author(s): Administrator
- Date: 2019-01-14 16:33:50
- Description:
    --%>
    <head>
        <title>
            设备仪表库
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>  
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
    </head>
    <body style="background-color:#f1f1f1;width:98%;height:95%;margin:0 auto;">
	<!-- 工具条 -->
 <div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()"> 模糊查询 </a> 
									<a id="allQuery" style="display: none" class="btn btn-default" onclick="searchs()"> 查询 </a> 
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
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
				<div id="T_DXGL_SYSY_FACILITYINFO" class="nui-form display" align="center" style="height: 105px">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="tdxglsysyfacilityinfo/_entity" value="com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.EquipmentInstrumentLibrary">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">器具名称：</td>
							<td colspan="1">
							<input class="nui-textbox" name="tdxglsysyfacilityinfo/_expr[1]/qjmc"/>
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[1]/_op" value="like">
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[1]/_likeRule" value="all"></td>
							<td class="form_label">出厂编号：</td>
							<td colspan="1">
							<input class="nui-textbox" name="tdxglsysyfacilityinfo/_expr[2]/ccbh"/>
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[2]/_op" value="like">
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[2]/_likeRule" value="all"></td>
						</tr>
						<tr>
							<td class="form_label">规格型号：</td>
							<td colspan="1"> <input class="nui-textbox" name="tdxglsysyfacilityinfo/_expr[3]/ggxh"/>
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[3]/_op" value="like">
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[3]/_likeRule" value="all"></td>
							<td class="form_label">测量范围：</td>
							<td colspan="1"><input class="nui-textbox" name="tdxglsysyfacilityinfo/_expr[4]/clfw"/>
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[4]/_op" value="like">
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[4]/_likeRule" value="all"></td>
						</tr>
						<tr>
							<td class="form_label">有效期：</td>
							<td colspan="1"><input class="nui-dictcombobox" name="" id="sbyxq"
                             dictTypeId="YXQ"url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=YXQ" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
					</td>
							<td class="form_label">报备情况：</td>
							<td colspan="1"><input class="nui-dictcombobox" name="tdxglsysyfacilityinfo/_expr[6]/bbqk"
                            dictTypeId="BBQK" url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=BBQK" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[6]/_op" value="like">
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[6]/_likeRule" value="all"></td>
						</tr>
						<tr>
							<td class="form_label">使用状态：</td>
							<td colspan="1"><input class="nui-dictcombobox" name="tdxglsysyfacilityinfo/_expr[7]/syzt"
                           dictTypeId="SYZT"url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=SYZT" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[7]/_op" value="like">
                    <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[7]/_likeRule" value="all"></td>
							<td class="form_label"></td>
							<td colspan="1"></td>
						</tr>
					</table>
					<input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[8]/isdelete" value="0"/>
            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[8]/_op" value="like">
            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[8]/_likeRule" value="end">
            
            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[9]/jdyxqz" id="yxqstart"/>
            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[9]/_op" value=">">
            
            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[10]/jdyxqz" id="yxqend"/>
            <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[10]/_op" value="<=">
            
             <input class="nui-hidden" id="con_jdid" name="tdxglsysyfacilityinfo/_expr[11]/jd" /> 
           <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[11]/_op" value="like"> 
           <input class="nui-hidden" name="tdxglsysyfacilityinfo/_expr[11]/_likeRule" value="end">
           
           <input class="nui-hidden" name="tdxglsysyfacilityinfo/_orderby[12]/_property" value="orderindex">
			<input class="nui-hidden" name="tdxglsysyfacilityinfo/_orderby[12]/_sort" value="desc"> 
				</div>
				
			</div>

		</div>
	</div>
</div>


      
    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
         <div  region="center" style="width:100%;height:98%;" showToolbar="false" showFooter="false">
             <div class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
                <table style="width:100%;">
                    <tr>
                        <td style="width:100%;padding:5px 0;">
                        <button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
							新增
						</button>
						<ul id="popupMenu" class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>
<!--                         	<a class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu" >新增</a> -->
<!--              				 <ul id="popupMenu" class="nui-menu" style="display:none;"> -->
<!-- 					        <li> -->
<!-- 							 <li   onclick="add()">单条增加</li>	 -->
<!-- 							 <li   onclick="batchAdd()">批量增加</li> -->
<!-- 						 </ul> -->
           
                            <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs"  onclick="edit()">
                               修改
                            </a>
                            <a id="upload" class="nui-button btn btn-default btn-xs"  onclick="batchAddAttach()">
                                批量导入检定证书
                            </a>
                             <a id="ruku" class="nui-button btn btn-default btn-xs"  onclick="updateStatus(3)">
                                入库
                            </a>
                            <a id="save" class="nui-button btn btn-default btn-xs"  onclick="updateStatus(1)">
                                报备
                            </a> 
                              <a id="zoomin" class="nui-button btn btn-default btn-xs"  onclick="updateStatus(2)">
                               送检
                            </a>
                            <a class="nui-button btn btn-default btn-xs"  onclick="no()">
                                 报废
                            </a>
                            <a class="nui-button btn btn-default btn-xs" onclick="output()">
                                导出
                            </a>
                           <a class="nui-button btn btn-default btn-xs"  onclick="remove()">
                                删除
                            </a>
                            <a class="nui-button btn btn-default btn-xs" onclick="recycle()">
                               回收站
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglsysyfacilityinfos"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.queryTDxglSysyFacilityinfos.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="true"
                        sortMode="client"
                        allowAlternating="true"
                        >

                    <div property="columns">
                      
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="qjmc" headerAlign="center" allowSort="true" >
                            器具名称
                        </div>
                        <div field="ccbh" headerAlign="center" allowSort="true" renderer="ViewlinkRenderer">
                            出厂编号
                        </div>
                        <div field="sccj" headerAlign="center" allowSort="true" >
                            生产厂家
                        </div>
                        <div field="ggxh" headerAlign="center" allowSort="true" >
                            规格型号
                        </div>
                        <div field="jdzq" headerAlign="center" allowSort="true" >
                            检定周期
                        </div>
                        <div field="yxq" headerAlign="center" allowSort="true" renderer="yxqRenderer" visible="false">
                            有效期
                        </div>
                        <div field="jdyxqz" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            检定有效期至
                        </div>
                        <div field="bbqk" headerAlign="center" allowSort="true" renderer="bbqkRenderer">
                            报备情况
                        </div>
                        <div field="syzt" headerAlign="center" allowSort="true" renderer="syztRenderer">
                            使用状态
                        </div>
                        <div field="fzr" headerAlign="center" allowSort="true" >
                            负责人
                        </div>
                        <div field="fj" headerAlign="center" allowSort="true" renderer="setFile" >
                            附件
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            是否删除
                        </div>
                        <div field="bfyy" headerAlign="center" allowSort="true" visible="false">
                            报废原因
                        </div>
                        <div field="jd" headerAlign="center" allowSort="true" visible="false">
                            基地
                        </div>
                        <div field="clfw" headerAlign="center" allowSort="true" visible="false">
                            测量范围
                        </div>
                        <div field="jddj" headerAlign="center" allowSort="true" visible="false">
                            精度等级
                        </div>
                        <div field="jdrq" headerAlign="center" allowSort="true" visible="false">
                            检定日期
                        </div>
                        
                        <div field="jddw" headerAlign="center" allowSort="true" visible="false">
                            检定单位
                        </div>
                        <div field="bz" headerAlign="center" allowSort="true" visible="false">
                            备注
                        </div>
                        <div field="delUser" headerAlign="center" allowSort="true" visible="false" value="<%=userName %>">
                            删除人
                        </div>
                        <div field="delTime" headerAlign="center" allowSort="true" visible="false">
                            删除时间
                        </div>
                        <div field="xgyy" headerAlign="center" allowSort="true" visible="false">
                           修改原因
                        </div>
                        <div field="filePath" headerAlign="center" allowSort="true" visible="false" >
                           file_path
                        </div>
                        <div field="fileRealName" headerAlign="center" allowSort="true" visible="false" >
                           fileRealName
                        </div>
                        <div field="fileNewName" headerAlign="center" allowSort="true" visible="false" >
                           fileNewName
                        </div>
                        <div field="addtime" headerAlign="center" allowSort="true" visible="false" >
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            nui.get("update").disable();
            var jdid=getCookie('jdid');
			nui.get('con_jdid').setValue(jdid);

            //按钮权限控制
            accessControlButton('<%=userRoleCodeList %>',4);

           	if(jdid!=null && jdid!=""){
            	
	            var formData = new nui.Form("#T_DXGL_SYSY_FACILITYINFO").getData(false,false);
	            grid.load(formData);
            }
			/******   Tip提示 组件初始化 Start   *******/            
			var tip = new nui.ToolTip();
			tip.set({
				target: document,
				selector: '.showCellTooltip',   //要添加提示元素的calss
				placement:'topleft',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip.setContent("请选择需要修改的数据");  //给提示框内容添加值
				} 
			});
			
			//导入鉴定书
				function batchAddAttach(){
							nui.open({showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 300,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"JDS",
					                    
					                    };//传入页面的json数据
					                     iframe.contentWindow.SetData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    grid.reload();
				                }
				            });
						}
			
			
			//导出
			function output(){
		
						 //设置起始有效期和终止有效期
                                var sbyxq = nui.get("sbyxq").getValue();

                                if(sbyxq != null && sbyxq != ''){
                                	
                            	   if(sbyxq == 'TMS'){//设备有效期为两个月时
                            	      nui.get("yxqstart").setValue(doGetTime(0));
	                                  nui.get("yxqend").setValue(doGetTime(2));
	                                }else if(sbyxq=='SMS'){//设备有效期为6个月时
	                                 nui.get("yxqstart").setValue(doGetTime(0));
	                                  nui.get("yxqend").setValue(doGetTime(6));
	                                }else if(sbyxq == 'YGQ'){//设备有效期已过期
	                                  nui.get("yxqstart").setValue("");
	                                  nui.get("yxqend").setValue(doGetTime(0));
	                                }
                                }else{
                              		 nui.get("yxqstart").setValue("");
	                                 nui.get("yxqend").setValue("");
                                }
                                
                var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                var json = form.getData(false,false);
                
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 400, height: 250,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.EquipmentInstrumentLibrarySearchAll",
                            queryParam:json,								    //查询数据
                            queryKey:'tdxglsysyfacilityinfo',                              //查询实体名
                            query:['qjmc','ccbh','ggxh','clfw','bbqk','syzt','isdelete','jdyxqz','jdyxqz','jd','addtime'],  //按顺序放置
                            expTitle:"设备仪表库", 
                            queryIndex:[1,2,3,4,6,7,8,9,10,11,12],
                            filterField:['orderindex','fj','yxq','uuid','addtime'],
                            dicFieds:"syzt@SYZT,bbqk@BBQK",
                            jdFieds:"jd",
                            order:"orderindex@desc"
                        	
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
             }
             
			 //预览页面附件显示 
           function setFile(e) {
				var fileRealName = e.record.fj;
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
			
			
			/******   Tip提示  End   *******/
            //新增
            function add() {
                nui.open({showMaxButton : true,
                    url: "/itmp/vessel/EquipmentInstrumentLibrary/EquipmentInstrumentLibraryForm.jsp",
                    title: "新增记录", width: 600, height: 330,
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
                    nui.open({showMaxButton : true,
                        url: "/itmp/vessel/EquipmentInstrumentLibrary/EquipmentInstrumentLibraryForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height:400,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tdxglsysyfacilityinfo:row}};
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
                                	for(var i=0;i<rows.length;i++){
			                    		delete rows[i].orderindex;
			                    	}
                                    var json = nui.encode({
										data : rows,
										entity : "com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.EquipmentInstrumentLibrary",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
									});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                         url: "com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteone.biz.ext",
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
                    //回收站
                     function recycle(){
                    	nui.open({
	                    	showMaxButton : true,
	                    	url:"/itmp/vessel/EquipmentInstrumentLibrary/EquipmentInstrumentLibraryRecycle.jsp",
	                    	title:"回收站",width:800,height:400,
	                    	onload:function(){//弹出页面加载完成
	                    	},
	                    	ondestroy:function(action){//弹出页面关闭前
	                    	grid.reload();   	
	                    	}
                    	});                                	                                	
                    }
                    //导入
                  function batchAdd(){
					 nui.open({showMaxButton : true,
		                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
		                    title: "新增记录", width: 600, height: 300,
		                    onload: function () {//弹出页面加载完成
		                    	var iframe = this.getIFrameEl();
			                    var data = {
			                    	pageType:"batchAdd",
			                    	tempFileName:"rqsysySbybImport.xlsx",
			                    	tempLoadName:"设备仪表库导入模板",
			                    	entitfName:"com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.EquipmentInstrumentLibrary"
			                    };//传入页面的json数据
			                     iframe.contentWindow.SetData(data);
		                    },
		                    ondestroy: function (action) {//弹出页面关闭前
		                    grid.reload();
		                }
	                });
				}                              
           //报备
            function save(){                    
	         var rows = grid.getSelecteds();
	            if(rows.length > 0){
	              if(rows[0].syzt=="YBF"){
                	 nui.alert("已报废的工具不能报备", "系统提示");
                	 return;
                }
	                nui.confirm("确定报备选中记录？","系统提示",
	                function(action){
	                    if(action=="ok"){
	                        var json = nui.encode({tdxglsysyfacilityinfos:rows});
	                        grid.loading("正在报备中,请稍等...");
	                        $.ajax({
	                            url:"com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.bbTDxglSysyFacilityinfos.biz.ext",
	                            type:'POST',
	                            data:json,
	                            cache: false,
	                            contentType:'text/json',
	                            success:function(text){
	                                var returnJson = nui.decode(text);
	                                if(returnJson.exception == null){
	                                    grid.reload();
	                                    nui.alert("报备成功", "系统提示", function(action){
	                                        });
                                    }else{
                                        grid.unmask();
                                        nui.alert("报备失败", "系统提示");
                                	}
                                	 nui.get("update").disable();
                                }
                        	});
                    	}
                    });
                }else{
                    nui.alert("请选中一条记录！");
                }
            }
            //根据有效期获取日期
            function doGetTime(yxq){
            //获取当前时间
				var date = new Date();
				var year = date.getFullYear();
				var month = date.getMonth() + 1+yxq;
				var day = date.getDate();
				
				if(month > 12){
					month = month -12;
					year = year + 1;
				}
				
				if (month < 10) {
				    month = "0" + month;
				}
				if (day < 10) {
				    day = "0" + day;
				}
				var nowDate = year + "-" + month + "-" + day;
				return nowDate;
            }
           //报废
            function no(){
           		var row = grid.getSelected();
                if (row) {
                    nui.open({
                    	showMaxButton : true,
                        url: "/itmp/vessel/EquipmentInstrumentLibrary/EquipmentInstrumentLibraryScrap.jsp",
                        title: "报废",
                        width: 250,
                        height: 200,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"no",record:{tdxglsysyfacilityinfo:row}};
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

                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function searchs() {
                                //设置起始有效期和终止有效期
                                var sbyxq = nui.get("sbyxq").getValue();

                                if(sbyxq != null && sbyxq != ''){
                                	
                            	   if(sbyxq == 'TMS'){//设备有效期为两个月时
                            	      nui.get("yxqstart").setValue(doGetTime(0));
	                                  nui.get("yxqend").setValue(doGetTime(2));
	                                }else if(sbyxq=='SMS'){//设备有效期为6个月时
	                                 nui.get("yxqstart").setValue(doGetTime(0));
	                                  nui.get("yxqend").setValue(doGetTime(6));
	                                }else if(sbyxq == 'YGQ'){//设备有效期已过期
	                                  nui.get("yxqstart").setValue("");
	                                  nui.get("yxqend").setValue(doGetTime(0));
	                                }
                                }else{
                              		 nui.get("yxqstart").setValue("");
	                                 nui.get("yxqend").setValue("");
                                }
                             
                                
                                    var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                                    var json = form.getData(false,false);
                                    
                                    grid.load(json);//grid查询
                                }

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
                                    form.reset();
        							$('#cond').val("");
                                     nui.get('con_jdid').setValue(getCookie('jdid'));
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
                                }

                         //当选择列时
			            function selectionChanged(){
			                var rows = grid.getSelecteds();
			                if(rows.length>1  || rows.length==0){
			                    nui.get("update").disable();
			                }else{
			                    nui.get("update").enable();
			                }
			            }
	                      //报备情况公共代码转换
				    	function bbqkRenderer(e){
				    		return nui.getDictText("BBQK",e.value);
				    	}
				    	//使用状态公共代码转换
				    	function syztRenderer(e){			    
				    		if(e.row.syzt=="YBF"){
								e.rowStyle = 'color:gray';
							}
				    		return nui.getDictText("SYZT",e.value);
				    	}
				    	//有效期公共代码转换
				    	function yxqRenderer(e){
				    		return nui.getDictText("YXQ",e.value);
				    	}			   
			    	 //添加超链接
						function ViewlinkRenderer(e){
				    		var ccbh=e.record.ccbh;	
				    		var syzt=e.record.syzt;	
				    		var uid = e.record._uid;
				    		if(ccbh==null||ccbh==""){
				    			retHtml="";
				    		}else{
				    			var	retHtml ="&nbsp;&nbsp;<a style='color:blue;' href='javascript:view("+uid+")'>"+ccbh+"</a>";
				    		}
				    								
				    		if(syzt=="YBF"){
				    			retHtml ="&nbsp;&nbsp;<a style='color:blue;' href='javascript:noView("+uid+")'>"+ccbh+"</a>";
				    		}					    		
				    		return retHtml;
				    	}
				    	
				    	//查看
			            function view(uid) { 
			            	              
			                var row = grid.getRowByUID(uid);               
			                nui.open({showMaxButton : true,
			                    url: "/itmp/vessel/EquipmentInstrumentLibrary/EquipmentInstrumentLibraryView.jsp",
			                    title: "设备仪表库查看",
			                    width: 600,
			                    height: 350,
			                    onload: function () {
			                        var iframe = this.getIFrameEl();
			                        var data = {pageType:"view",record:{tdxglsysyfacilityinfo:row},flag:"1"};
			                        //直接从页面获取，不用去后台获取
			                        iframe.contentWindow.setFormData(data);
			                        },
			                        ondestroy: function (action) {
			                            grid.reload();
			                        }
			                     });                                       
			              }
			              //报废查看
			            function noView(uid) { 
			            	             
			                var row = grid.getRowByUID(uid);           
			                nui.open({showMaxButton : true,
			                    url: "/itmp/vessel/EquipmentInstrumentLibrary/EquipmentInstrumentLibraryScrapView.jsp",
			                    title: "报废查看",
			                    width: 600,
			                    height: 380,
			                    onload: function () {
			                        var iframe = this.getIFrameEl();
			                        var data = {pageType:"noView",record:{tdxglsysyfacilityinfo:row}};
			                        //直接从页面获取，不用去后台获取
			                        iframe.contentWindow.setFormData(data);
			                        },
			                        ondestroy: function (action) {
			                            grid.reload();
			                        }
			                     });                                       
			              }	
                //关键字查询
              	function btnQuery(){
						var gjz=$("#cond").val();
							if(gjz==""){
								refresh();
								nui.get("update").disable();
							}else{
								 var data = {
								 	 matchFied :"qjmc,ccbh,sccj,ggxh,clfw,jddj,jdzq,jddw,fzr,bz",
								 	 dicFied:"syzt@SYZT,bbqk@BBQK",
									 wordVal : $("#cond").val(),
									 entity  : $("input[name='tdxglsysyfacilityinfo/_entity']").val(),
									 entityName : 'tdxglsysyfacilityinfo',
									 sfdel : true,
									 jdInfo:'jd@'+getCookie('jdid')
								 }; 
								 var query = nui.decode(getKeyWordQuery(data));
								 grid.load(query);
								 nui.get("update").disable();
							
							}
						
					}
					
		//更新设备状态，1、报备 2、送检 
		function updateStatus(flag){
		
		var massage="";
		if(flag==1){
		  massage="设备报备";
		}else if(flag==2){
			massage="设备送检";
		}else{
			massage="入库";
		}
			nui.open({
						showMaxButton : true,
				        url: "/itmp/vessel/EquipmentInstrumentLibrary/EquipmentInstrumentLibraryInspection.jsp?flag="+flag+"&entityType=com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.EquipmentInstrumentLibrary",
				        title: massage, 
				        width: 1000, height: 650,
				        onload: function () {//弹出页面加载完成
					        var iframe = this.getIFrameEl();
					        //var data = {type:type};//传入页面的json数据
					        //iframe.contentWindow.setFormData(data);
				        },
				        ondestroy: function (action) {//弹出页面关闭前
				        	grid.reload();
			    		}
			    	});
		} 
			                                              						//高级搜索按钮
function showquery() {
	var div = $("#T_DXGL_SYSY_FACILITYINFO");
	div.slideToggle(500);
	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
	if($("#scbt").text()=="高级查询"){
		$("#fuzzyQuery").hide();
		$("#allQuery").show();
		$("#scbt").text("隐藏查询条件");
	}else{
		$("#fuzzyQuery").show();
		$("#allQuery").hide();
		$("#scbt").text("高级查询");
	}
};
//打开新增按钮
function openAllAdd(){
	$(".add_adds").toggle();
};
document.onclick = function (e) {
    //判断点击的地方是否为“更多”按钮和弹出层是否显示
	    if(!$(e.target).is("#addallbut")&&$(".add_adds").is(":visible")==true){
	        $(".add_adds").toggle();
	    }
 };
         </script>
                        </body>
                    </html>
