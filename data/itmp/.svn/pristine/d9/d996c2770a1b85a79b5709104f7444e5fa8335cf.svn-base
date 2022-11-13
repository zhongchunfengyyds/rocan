<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
	
 %>
 <%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): wangyz
- Date: 2019-01-03 09:28:21
- Description:
    --%>
    <head>
        <title>
            容器基本信息
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
    <body style="background-color:#f1f1f1;width:98%;height:100%;margin:0 auto;">
	
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
				<div  id="form1" class="nui-form display" align="center" style="height: 3%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.ContainerInfomationAll">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">功能位置：</td>
							<td colspan="1">
							 <input class="nui-textbox" name="criteria/_expr[1]/baseGnwz"/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all"></td>
							<td class="form_label">名称：</td>
							<td colspan="1">
							<input class="nui-textbox" name="criteria/_expr[2]/baseMc"/>
                    <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all"></td>
						</tr>
					</table>
					 <input class="nui-hidden" name="criteria/_expr[3]/isdelete" value="0"/>
            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end">
            <input class="nui-hidden" id="con_jdid" name="criteria/_expr[4]/jdid" /> 
           <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like"> 
           <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="end">
           
            <input class="nui-hidden" name="criteria/_orderby[5]/_property" value="orderindex">
			<input class="nui-hidden" name="criteria/_orderby[5]/_sort" value="desc">  
				</div>
				
				
					<!-- 数据实体的名称 -->
					
				</div>
				
			</div>

		</div>
	</div>
    <div class="search-container folding-menu" style="overflow: hidden;display:none;" id="queryForm"> 
<!--         <div class="row"> -->
<!--             <div class="col-sm-4 form-inline input-control input-width"> -->
<!--                 <div class="form-group" style="text-align:left;"> -->
<!--                     <label>功能位置：</label> -->
<!--                     <input class="nui-textbox" name="criteria/_expr[1]/baseGnwz"/> -->
<!--                     <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like"> -->
<!--                     <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all"> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="col-sm-4 form-inline input-control input-width"> -->
<!--                 <div class="form-group" style="text-align:left;"> -->
<!--                     <label>名称：</label> -->
<!--                     <input class="nui-textbox" name="criteria/_expr[2]/baseMc"/> -->
<!--                     <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> -->
<!--                     <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all"> -->
<!--                 </div> -->
<!--             </div> -->
            
            
            
<!--             <input class="nui-hidden" name="criteria/_expr[3]/isdelete" value="0"/> -->
<!--             <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like"> -->
<!--             <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end"> -->
<!--             <input class="nui-hidden" id="con_jdid" name="criteria/_expr[4]/jdid" />  -->
<!--            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">  -->
<!--            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="end"> -->
           
<!--             <input class="nui-hidden" name="criteria/_orderby[5]/_property" value="orderindex"> -->
<!-- 			<input class="nui-hidden" name="criteria/_orderby[5]/_sort" value="desc">   -->
<!--                 </div> -->
                
                
            
            
        </div>        
       
    </div>
    
<%--     <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script> --%>
</div>
</div>
</div>
            <div  region="center"style="width:100%;height:93%;" showToolbar="false" showFooter="false">
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
<!--                           	<a class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu"  name="ITMP_btnAdd" >新增</a> -->
<!-- 					    <ul id="popupMenu" class="nui-menu" style="display:none;"> -->
<!-- 					        <li> -->
<!-- 							 <li  name="ITMP_btnAddOne" onclick="add()">单条增加</li> -->
<!-- 							 <li  name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li> -->
<!-- 						 </ul> -->
                            <a id="update" name="ITMP_btnEdit" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()">
                            	修改
                            </a>
                            <a class="nui-button btn btn-default btn-xs" name="ITMP_btnDel" onclick="remove()">
                                			删除
                            </a>
                                                    
                            <a class="nui-button btn btn-default btn-xs" name="ITMP_btnExp"   onclick="output()">
                            
                                                                            导出                                               
                         	</a>    
                         	<a class="nui-button btn btn-default btn-xs" name="ITMP_btnRec" onclick="recycle()">
                                                                           回收站       <!-- 弹框页面进入回收站页面,同时条件查询isdelete字段 -->                                                                                      
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglsysyrqinfos"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.queryTDxglSysyRqinfos.biz.ext"
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
                        <div field="jdname" headerAlign="center" allowSort="true" visible="false" >
                            	基地
                        </div>
                        <div field="jzname" headerAlign="center" allowSort="true">
                            	机组
                        </div>                      
                        <div field="baseGnwz" headerAlign="center" allowSort="true" renderer="GnwzlinkRenderer">
                            	功能位置
                        </div>
                        <div field="baseXt" headerAlign="center" allowSort="true" >
                            	系统
                        </div>
                        <div field="baseMc" headerAlign="center" allowSort="true" renderer="linkRenderer">
                           		名称
                        </div>
                        <div field="wjxxEomr" headerAlign="center" allowSort="true" visible="false" >
                            	EOMR
                        </div>
                        <div field="wjxxSbjgt" headerAlign="center" allowSort="true" visible="false" >
                           		设备竣工图
                        </div>
                        <div field="wjxxNbbm" headerAlign="center" allowSort="true" visible="false" >
                           		 内部编码
                        </div>
                        <div field="wjxxSdm" headerAlign="center" allowSort="true" visible="false" >
                            	SDM
                        </div>
                        <div field="wjxxEomm" headerAlign="center" allowSort="true" visible="false" >
                            	EOMM
                        </div>
                        <div field="wjxxLct" headerAlign="center" allowSort="true" visible="false">
                            	流程图
                        </div>
                        <div field="wjxxSylct" headerAlign="center" allowSort="true" visible="false" >
                            	水源流程图
                        </div>
                        <div field="wjxxQylct" headerAlign="center" allowSort="true" visible="false" >
                            	气源流程图
                        </div>
                        <div field="wjxxJsgfs" headerAlign="center" allowSort="true" visible="false" >
                            	设备技术规范号
                        </div>
                        <div field="zzcsSysyym" headerAlign="center" allowSort="true" visible="false" >
                            	水压试验页码
                        </div>
                        <div field="zzcsJyrq" headerAlign="center" allowSort="true" visible="false"  >
                            	检验日期（水压）
                        </div>
                        <div field="zzcsSjyl" headerAlign="center" allowSort="true" visible="false" >
                             	设计压力(bar.g)
                        </div>
                        <div field="zzcsSjwd" headerAlign="center" allowSort="true" visible="false" >
                            	设计温度(℃)
                        </div>
                        <div field="zzcsYxyl" headerAlign="center" allowSort="true" visible="false"  >
                            LOCA运行压力(bar.g)
                        </div>
                        <div field="zzcsYxwd" headerAlign="center" allowSort="true" visible="false" >
                            	LOCA运行温度(℃)
                        </div>                                             
                        <div field="zzcsZdgzyl" headerAlign="center" allowSort="true" visible="false" >
                            	最大工作压力
                        </div>
                        <div field="zzcsCcsyyl1" headerAlign="center" allowSort="true" visible="false"  >
                            	出厂试验压力(P1)(bar.g)
                        </div>
                        <div field="zzcsCcsyyl2" headerAlign="center" allowSort="true" visible="false"  >
                            	出厂试验压力(P2)(bar.g)
                        </div>
                        <div field="zzcsCcsyxs" headerAlign="center" allowSort="true" visible="false"  >
                            	出厂水压系数
                        </div>
                        <div field="zzcsZysyyl" headerAlign="center" allowSort="true"  >
                            	在役试验压力(bar.g)
                        </div>
                        <div field="zzcsZysysy" headerAlign="center" allowSort="true"   >
                          	 	在役水压系数
                        </div>
                        <div field="zzcsJz" headerAlign="center" allowSort="true" visible="false"  >
                           		 净重（kg）
                        </div>
                        <div field="zzcsMszl" headerAlign="center" allowSort="true" visible="false" >
                           		 满水重量（kg）
                        </div>
                        <div field="zzcsKtwj" headerAlign="center" allowSort="true" visible="false" >
                            	壳体外径(m)
                        </div>
              			 <div field="zzcsFsyl" headerAlign="center"align="center" allowSort="true" visible="false" >
                                               	   腐蚀余量（mm）
                        </div>
                        <div field="zzcsZbdj" headerAlign="center" align="center" allowSort="true" visible="false" >
                                                	  质保等级
                        </div>
              	          <div field="zzcsQjddj" headerAlign="center" align="center" allowSort="true" visible="false" >
                                                  	 清洁度等级
                        </div>
                        <div field="zzcsAqdj" headerAlign="center" align="center" allowSort="true" visible="false" >
                                                   	安全等级
                        </div>
                        <div field="zzcsZzjb" headerAlign="center" align="center" allowSort="true" visible="false"  >
                                                   	制造级别
                        </div>
                        <div field="zzcsZxbz" headerAlign="center" align="center" allowSort="true" visible="false"  >
                                                    	 执行标准
                        </div>
                        <div field="zzcsKtcz" headerAlign="center" align="center" allowSort="true" visible="false" >
                                                   	  壳体材质
                        </div>
                        <div field="zzcsCrgcz" headerAlign="center" align="center" allowSort="true" visible="false"  >
                          	 传热管材质
                        </div>
                        <div field="zzcsRj" headerAlign="center" align="center" allowSort="true" visible="false"  >
                          	 容积（m³）
                        </div>
                        <div field="zzcsSjsm" headerAlign="center" align="center" allowSort="true" visible="false" >
                   	                设计寿命
                        </div>
                        <div field="zzcsFj" headerAlign="center" align="center" allowSort="true" visible="false" >
                           	 房间号
                        </div>
                        <div field="syxxSyfm" headerAlign="center" align="center" allowSort="true" visible="false" >
                                                    水源阀门
                        </div>
                        <div field="syxxQyfm" headerAlign="center" align="center" allowSort="true" visible="false" >
                         	 气源阀门
                        </div>
                        <div field="syxxPqd" headerAlign="center" align="center" allowSort="true" visible="false"  >
                           	排气点
                        </div> 
                        <div field="syxxJsd" headerAlign="center" align="center" allowSort="true" visible="false"  >
                           	进水点
                        </div>
                        <div field="syxxDztxx" headerAlign="center" align="center" allowSort="true"  visible="false" >
                                                  等轴图信息
                        </div>
                        <div field="syxxSfhdp" headerAlign="center" align="center" allowSort="true" renderer="sfRenderer" visible="false" >
                                                  是否需更换垫片
                        </div>
                        <div field="syxxJglj" headerAlign="center" align="center" allowSort="true" visible="false"  >
                                                   紧固力矩(N.m)
                        </div>
                        <div field="syxxSybg" headerAlign="center" align="center" allowSort="true" renderer="setFile" visible="false">
                           	 耐压试验报告
                        </div>
                        <div field="adduser" headerAlign="center" allowSort="true" visible="false" visible="false" >
                           	新增人
                        </div>
                        <div field="addtime" headerAlign="center" align="center" allowSort="true" visible="false" dateFormat="yyyy-MM-dd HH:mm:ss">
                          	 新增日期
                        </div>
                        <div field="upduser" headerAlign="center" align="center" allowSort="true" value="<%=userName %>" visible="false">
                           	 删除人
                        </div>
                        <div field="updtime" headerAlign="center" align="center" allowSort="true" visible="false">
                           	 删除日期
                        </div>
                        <div field="isdelete" headerAlign="center" align="center" allowSort="true" visible="false">
                           	删除标识
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
            	
	            var formData = new nui.Form("#form1").getData(false,false);
	            grid.load(formData);
            }
			
			//导出
            function output(){
		
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 650, height: 500,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.ContainerInfomationSearch",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['baseGnwz','baseMc','isdelete','jdid','addtime'],  //按顺序放置
                            queryIndex:[1,2,3,4,5],  //按顺序放置
                            expTitle:"容器基本信息",
                            filterField:"orderindex,baseGnwz,baseMc,addtime,uuid,syxxSybg,zzcsJsgfh,zzcsLct",  //要过滤的字段，多字段用,隔开
                            dicFieds : "syxxSfhdp@SF",
                            vagueField:"", //关键字查询，多字段用,隔开   按顺序放置
                            jdFieds:"jdid",
                        	jzFieds:"jzid",
                        	order:"orderindex@desc"
                            
                    };//传入页面的json数据
                    
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
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
			/******   Tip提示  End   *******/
			
			 //预览页面附件显示 
           function setFile(e){
             var fileRealName = e.record.fileRealName;
 			var filepath = e.record.filePath;
 			var fileId = e.record.syxxSybg;
			if(fileRealName == null || fileRealName == 'null'){
				return "";
			}
           	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
           	return html;
           }
           //点击附件下载
           	function load(fileId){
			  window.location.href="com.cgn.itmp.basecommon.fileDownload.flow?fileId="+fileId;
			}
				
            //新增
            function add() {
                nui.open({showMaxButton : true,
                    url: "/itmp/vessel/ContainerInfomation/ContainerInfomationForm.jsp",
                    title: "新增记录", width: 600, height: 500,
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
			//导入
			function batchAdd(){
				 nui.open({showMaxButton : true,
	                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
	                    title: "新增记录", width: 600, height: 300,
	                    onload: function () {//弹出页面加载完成
	                    	var iframe = this.getIFrameEl();
		                    var data = {
		                    	pageType:"batchAdd",
		                    	tempFileName:"rqsysyjbxxImport.xlsx",
		                    	tempLoadName:"容器基本信息导入模板",
		                    	entitfName:"com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.ContainerInfomation"
		                    };//传入页面的json数据
		                     iframe.contentWindow.SetData(data);
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
                        url: "/itmp/vessel/ContainerInfomation/ContainerInfomationForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 500,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tdxglsysyrqinfo:row}};
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
                                    var json = nui.encode({tdxglsysyrqinfos:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.ljdeleteTDxglSysyRqinfos.biz.ext",
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
                                                 nui.get("update").disable();
                                            }
                                             
                                            });
                                        }
                                        });
                                    }else{
                                        nui.alert("请选中一条记录！");
                                    }
                                }
                           //回收站       
			               function recycle() {                           
			                nui.open({
			                	showMaxButton : true,                   
			                    url: "/itmp/vessel/ContainerInfomation/ContainerInfomationRecycle.jsp",
			                    title: "回收站",
			                    width: 800,      
			                    height: 400,
			                    onload: function () {
			                        var iframe = this.getIFrameEl();
			                        var data = {pageType:"add"};//传入页面的json数据
					                    iframe.contentWindow.setFormData(data); 
			                        },
			                        ondestroy: function (action) {
			                            grid.reload();
			                        }
			                       });
			                   
			                }

                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                   	nui.get("update").disable();
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").disable();
                                }

                                //重置查询条件
                                function reset(){
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
					                if(rows.length>1  || rows.length==0){
					                    nui.get("update").disable();
					                }else{
					                    nui.get("update").enable();
					                }
					            }          
                                 //添加超链接						    	
								function linkRenderer(e){
						    		var mc=e.record.baseMc;		
						    		var uid = e.record._uid;
						    		var retHtml ="&nbsp;&nbsp;<a style='color:blue;' href='javascript:view("+uid+")'>"+mc+"</a>";
						    		return retHtml;
						    	}
						    	//是否公共代码转换
						    	function sfRenderer(e){
						    		return nui.getDictText("SF",e.value);
						    	}
						    	
						    	
					//查看
		            function view(uid) { 
		            	var row = grid.getRowByUID(uid);        
		                nui.open({showMaxButton : true,
		                    url: "/itmp/vessel/ContainerInfomation/ContainerInfomationView.jsp",
		                    title: "容器基本信息查看",
		                    width: 600,
		                    height: 500,
		                    onload: function () {
		                        var iframe = this.getIFrameEl();
		                        var data = {pageType:"view",record:{tdxglsysyrqinfo:row}};
		                        //直接从页面获取，不用去后台获取
		                        iframe.contentWindow.setFormData(data);
		                        },
		                        ondestroy: function (action) {
		                            grid.reload();
		                        }
		                     });                                       
		              }
               //添加超链接
						    
				function GnwzlinkRenderer(e){
		    		if(e.record.baseGnwz != null){
				  		var gnwz = e.record.baseGnwz.split(",");
				 		if(gnwz == null || gnwz.length == 0){
				 			 gnwz = e.record.baseGnwz.split("，");
				 		}
				 		if(gnwz != null && gnwz.length > 0){
				 			var html = "";
				 			for(var i=0;i<gnwz.length;i++){
				 				html += '<a href = "#" onclick ="tsdView(1,\''+gnwz[i]+'\')">'+gnwz[i]+'</a>';
				 				if(i<gnwz.length - 1) html +=',';
				 			}
				 			return html; 
				 		}
		    		}
		    	}
		    	
		    	
		    	//弹出框
		    	 function tsdView(flag,gnwz) {           	                            
	                nui.open({showMaxButton : true,
	                    url: "/itmp/vessel/TsdStandardLibrary/TsdStandardLibraryList.jsp?flag="+flag+"&gnwz="+gnwz,
	                    title: "TSD标准库查看",
	                    width: 850,
	                     height: 500,	                    
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
								 	 matchFied :"jdname,jzname,baseGnwz,baseXt,baseMc,wjxxEomr,wjxxSbjgt,wjxxNbbm,wjxxSdm,wjxxEomm,wjxxLct,wjxxSylct,wjxxQylct,wjxxJsgfs,zzcsSysyym,zzcsSjyl,zzcsSjwd,zzcsYxyl,zzcsYxwd,zzcsZdgzyl,zzcsCcsyyl1,zzcsCcsyyl2,zzcsCcsyxs,zzcsZysyyl,zzcsZysysy,zzcsJz,zzcsMszl,zzcsKtwj,zzcsFsyl,zzcsZbdj,zzcsQjddj,zzcsAqdj,zzcsZzjb,zzcsZxbz,zzcsKtcz,zzcsCrgcz,zzcsRj,zzcsSjsm,zzcsFj,syxxSyfm,syxxQyfm,syxxPqd,syxxJsd,syxxDztxx,syxxSfhdp,syxxJglj",
									 wordVal : $("#cond").val(),
									 entity  : $("input[name='criteria/_entity']").val(),
									 entityName : 'criteria',
									 sfdel : true,
									 jdInfo:'jdid@'+getCookie('jdid')
		
								 }; 
								 var query = nui.decode(getKeyWordQuery(data));							
								 grid.load(query);
								 nui.get("update").disable();
							}
					
					}
					                                						//高级搜索按钮
function showquery() {
	var div = $("#form1");
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
  //重置查询条件
    function reset() {
        var form = new nui.Form("#queryForm");//将普通form转为nui的form
        form.reset();
        $('#cond').val("");
        nui.get('con_jdid').setValue(getCookie('jdid'));
    }
                            </script>
                        </body>
                    </html>
