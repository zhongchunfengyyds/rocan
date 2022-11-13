
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%String dxzt = request.getParameter("dxzt"); %> --%>
<%String proData = request.getParameter("proData");%>
<html>
<head>
<title>大修日历详情</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<script src="<%= request.getContextPath()%>/js/jquery/jquery-1.8.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
<style>
td{text-align: center;}
</style>

</head>
<body style="width:100%; height: 99%;margin:0 auto;">

<div id="form1" class="nui-form bs-docs-section"  align="center" style="height:100%">
<!-- 数据实体的名称 -->
<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="addtime">
<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">

 <input class="nui-hidden" name="criteria/_expr[2]/isdelete" value="0" />
 <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
<input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">

<div class="nui-layout" style="width:100%;height:100%;" > 
		 <div  region="west" width="250" title="">
	 
			<div class="mini-fit">
	            <ul id="tree1" class="mini-tree" expandOnNodeClick="true" expandOnLoad="true" style="width:100%;" showTreeIcon="true" textField="text" idField="id" onnodeselect="onNodeSelect" >
	                   
	            </ul>
            </div>
		</div>
		<div class="center" region="center" title="" style="width: 100%; height:99%;" showToolbar="false" showFooter="false">
			<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
				<table style="width: 100%;height:100%;">
			
				</table>
			</div>
		
		<div class="nui-fit">
			<div id="datagrid1" class="nui-datagrid" dataField="tdxgldxglzzgls"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.queryTDxglDxglZzgls.biz.ext"
			 	allowResize="true" pageSize="20" sizeList="[20,100,1000]" allowAlternating="true"
				onselectionchanged="selectionChanged" allowCellEdit="false" allowSortColumn="true" sortMode="client"
				allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
				<div property="columns">
				 <div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div header="大修轮次" headerAlign="center" >
	                <div property="columns"  >
	                    <div field="jzid" id="jzid"  align="right" renderer="xhRender" allowResize="false" width="50" headerAlign="center" allowSort="true" >
						   <input property="editor" class="nui-combobox"dataField="jsonObject" required="true"
						   requiredErrorText="机组不能为空" textField="name" valueField="id"
								emptyText="请选择" />
	                    </div>
	                      
	                  	<div field="dxlc" id="dxlc"  renderer="lcRender" allowResize="false"  vtype="required;range:01,99;maxLength:2" width="50" headerAlign="center" allowSort="true"> 
	 					   <input property="editor" class="nui-textbox" style="width: 100%;"/>
	 				    </div> 
	 				     <div field="xh" id="xh" allowResize="false"  visible="false" width="50" headerAlign="center" allowSort="true">
							<input property="editor" class="nui-textbox" style="width: 100%;"/>
			 		 	</div>  
	                </div>
	            </div>      
               <div field="zzlx" width="100" headerAlign="center" renderer="zzlxRenderer">
				类型 <input property="editor" class="nui-dictcombobox" style="width: 100%;"  dictTypeId="SEC_TYPE" />
			</div> 
             <div field="zzmc" allowResize="false" width="120" headerAlign="center" allowSort="true">
				名称<input property="editor" id="zzmc"  class="nui-textbox zzmc" readonly="readonly" style="width: 100%;"/>
			  </div>   
             <div field="bc" allowResize="false" width="120" headerAlign="center" allowSort="true">
		                          版次<input property="editor" class="nui-textbox" required="true" requiredErrorText="版次不能为空"
				style="width: 100%;" />
			  </div>
              <div field="fj" allowResize="false" width="120" renderer="setFile"   headerAlign="center" allowSort="true">
					  附件<input  id="fj" property="editor" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" style="width:100%;"/>
				</div>
                <div field="fileRealName" headerAlign="center" allowSort="true" visible="false" >
                   fileRealName
                </div>
                 <div field="filePath" headerAlign="center" allowSort="true" visible="false" >
                  
                </div>
                 <div field="filename" headerAlign="center" allowSort="true" visible="false" >
                  
                </div>
                <div field="fildid" headerAlign="center" allowSort="true" visible="false" >
                </div> 
              <div field="adduser" allowResize="false" width="120" headerAlign="center" allowSort="true">
			         上传者<input property="editor" class="nui-textbox adduser"  readonly="readonly" style="width: 100%;" />
			  </div>
			    <div field="upduser" allowResize="false" width="120" headerAlign="center" allowSort="true" visible="false">
			        <input property="editor" class="nui-textbox" style="width: 100%;" scope="session"  />
			  </div>
			  <div field="addtime" width="100" allowSort="true"  dateFormat="yyyy-MM-dd HH:mm:ss">
		                      上传日期     <input property="editor" class="nui-datepicker scsj" style="width:100%;" readonly="readonly"/>
		       </div>
                    
                <div field="yjjsr" headerAlign="center" allowSort="true" visible="false">
                                                              收件人
                                                              
                </div>
                <div field="updtime" headerAlign="center" allowSort="true" visible="false">
                                                             添加时间
                </div>
                <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                    isdelete
                </div>
				</div>
			</div> 
		</div>
	</div>
</div>
</div>




		<script type="text/javascript">
			nui.parse();
			
			//预览页面附件显示
     function setConnect(e) {
     	var html = '<a  onclick="tiaozhuan(\'' + e.record.uuid
            + '\')"  >' + e.record.detailed
            + '</a>';
        return html;
     }
     
     function tiaozhuan(id){
     	
		var param;
		var data=grid.getData();
		for(var i=0;data.length;i++){
			if(data[i].uuid==id){
				param=data[i];
				break;
			}
		}
		var uuid=param.uuid;
		var json=nui.encode({id:uuid});
		$.ajax({  
		    url:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.getItem.biz.ext",
		    type:'POST',
		    data:json,
		    cache: false,
            async: false,
		    contentType:'text/json',
		    success:function(text){
		    
		    var data=text.list;
		    for(var i=0;i<data.length;i++){
		    	if(data[i].elements){
         			data[i].elements=data[i].elements.replace(/\n/g, "</br>");
 				}
 				if(data[i].children){
			    	var children=data[i].children;
			    	for(var j=0;j<children.length;j++){
			    		var child=children[j];
			    		if(child.elements){
	         				child.elements=child.elements.replace(/\n/g, "</br>");
	     				}
	     				if(child.explain){
	         				child.explain=child.explain.replace(/\n/g, "</br>");
	     				}
			    	}
 				}
		    }
		    param.tree=data;
		    }
		});	
     	addTab("","项目管理详情","/itmp/overhaul/ItemManage/getItemmanage.jsp",param);
     }
     
     function addTab(position,type,url,data) {
         var tabs = parent.parent.nui.get("mainTabs");
         var tab = { title: type, url: url, showCloseButton: true};
         tab.onload = function (e) {
            var iframe = tabs.getTabIFrameEl(e.tab);
            iframe.contentWindow.setData(data);
          }
         tab = tabs.addTab(tab);            
	     tabs.activeTab(tab);
    }
			 //设置附件id为fj的超链接
		    function setFile(e) {
		        var fileRealName = e.record.fileRealName;
		        var fileId = e.record.fildid;
		        if (fileRealName == null || fileRealName == 'null') {
		            return "";
		        }
		        var html = '<a href="#" onclick="load(\'' + fileId + '\')" id="attr_' + fileRealName + '" >' + fileRealName + '</a>';
		        return html;
		    }
		

    //点击附件下载
    function load(fileId) {
        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId=" + fileId;
    }
    
			var grid = nui.get("datagrid1");
		 	var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
			
			
			var tree3 = nui.get("tree1");
				tree3.loadData([
				    { id: "proData", text: "<%=proData%>",
				         children: [
				           { id: "xmgl", text: "项目管理" },
				            { id: "zzgl", text: "组织管理" },
				            { id: "jhgl", text: "计划管理" },
				            { id: "aqgl", text: "安全管理 " },
				            { id: "zlgl", text: "质量管理" },
				           // { id: "fxgl", text: "风险管理" },
				            { id: "nbgl", text: "内部经验反馈 " }
				          //  { id: "qxgl", text: "缺陷通知单管理"},
				           // { id: "jggl", text: "监管要求管理"}
				        ]
				     },
				  
				]);
						
			var xh="<%=proData %>";
			var status=xh.substr(0,2);

   			function onNodeSelect(e){
	   			var node = e.node.id;
	         	if(node=="zzgl"){//组织管理
	         		 grid.setColumns(columnszz);
					 grid.set({dataField : "tdxgldxglzzgls"});
				 	 grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.queryTDxglDxglZzgls.biz.ext");
				 	 grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.OrganizationMgtSearch","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/xh" : xh});
	         	}else if(node=="jhgl"){//计划管理
	         		 grid.setColumns(columnsjh);
					 grid.set({dataField : "tdxgldxgljhgls"});
					 grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.PlanMgt.queryTDxglDxglJhgls.biz.ext");
					 grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.PlanMgt.PlanMgtSearch","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/xh" : xh});
	         	}else if(node=="aqgl"){//安全管理
	         		 grid.setColumns(columnsaq);
					 grid.set({dataField : "tdxgldxglaqgls"});
					 grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.SecurityMgt.queryTDxglDxglAqgls.biz.ext");
					 grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.SecurityMgt.SecurityMgtSearch","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/xh" : xh});
	         	}else if(node=="zlgl"){//质量管理
	         		 grid.setColumns(columnszl);
					 grid.set({dataField : "tddxglzlgls"});
					 grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.QualityMgt.queryTdDxglZlgls.biz.ext");
					 grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.QualityMgt.QualityMgtSearch","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/xh" : xh});
	         	}else if(node=="fxgl"){//风险管理
		         	 grid.setColumns(columnsfx);
					 grid.set({dataField : "tddxglfxgls"});
					 grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.RiskMgt.queryTdDxglFxgls.biz.ext");
					 grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.RiskMgt.RiskMgtSearch","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/xh" : xh});
	         	
	         	}else if(node=="nbgl"){//内部经验反馈
		         	 grid.setColumns(columnsnb);
					 grid.set({dataField : "tddxglnbjys"});
					 grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.queryTdDxglNbjys.biz.ext");
					 grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedbackSearch","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/dxlc" : xh});
	         	}else if(node=="qxgl"){//缺陷通知单管理
		         	 grid.setColumns(columnsqx);
					 grid.set({dataField : "tddxglqxgls"});
					 grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.queryTdDxglQxgls.biz.ext");
					 grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.DefectNoticeManagementSearch","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/dxlc" : xh});
	         	}else if(node=="jggl"){//监管要求管理
	         		grid.setColumns(columnsjg);
				 	grid.set({dataField : "tddxgljgyqgls"});
				 	grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.queryTdDxglJgyqgls.biz.ext");
				 	grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.RegulationRequirementsMgtSearch","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/jizu" : xh});
	         	}else if(node=="xmgl"){//管理
	         		grid.setColumns(columnxmgl);
				 	grid.set({dataField : "itemmanages"});
				 	grid.setUrl("com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.queryList.biz.ext");
				 	grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage","criteria/_expr[1]/isdelete" :'0',"criteria/_expr[2]/overhaul" : xh});
	         	}

   			}
				//组织		
				var columnszz=[{type:'indexcolumn'},{type:'checkcolumn'},{field:'xh',header:'大修轮次',displayField:'xh'},{field:'zzlx',header:'类型',displayField:'zzlx'},
				 {field:'zzmc',header:'名称',displayField:'zzmc'},{field:'bc',header:'版次',displayField:'bc'},{field:'fj',header:'附件',displayField:'fj',renderer:"setFile"},{field:'adduser',header:'上传者',displayField:'adduser'},{field:'addtime',header:'上传日期',displayField:'addtime'},
				 ];
				 //计划
				 var columnsjh=[{type:'indexcolumn'},{type:'checkcolumn'},{field:'xh',header:'大修轮次',displayField:'xh'},{field:'lx',header:'类型',displayField:'lx'},
				 {field:'zzmc',header:'名称',displayField:'zzmc'},{field:'bc',header:'版次',displayField:'bc'},{field:'fj',header:'附件',displayField:'fj',renderer:"setFile"},{field:'adduser',header:'上传者',displayField:'adduser'},{field:'addtime',header:'上传日期',displayField:'addtime'},
				 ];
				 //安全
				 var columnsaq=[{type:'indexcolumn'},{type:'checkcolumn'},{field:'xh',header:'大修轮次',displayField:'xh'},{field:'type2',header:'类型',displayField:'type2'},
				 {field:'zzmc',header:'名称',displayField:'zzmc'},{field:'bc',header:'版次',displayField:'bc'},{field:'fj',header:'附件',displayField:'fj',renderer:"setFile"},{field:'adduser',header:'上传者',displayField:'adduser'},{field:'addtime',header:'上传日期',displayField:'addtime'},
				 ];
				 //质量
				 var columnszl=[{type:'indexcolumn'},{type:'checkcolumn'},{field:'xh',header:'大修轮次',displayField:'xh'},{field:'type',header:'类型',displayField:'type'},
				 {field:'name',header:'名称',displayField:'name'},{field:'bc',header:'版次',displayField:'bc'},{field:'fj',header:'附件',displayField:'fj',renderer:"setFile"},{field:'adduser',header:'上传者',displayField:'adduser'},{field:'addtime',header:'上传日期',displayField:'addtime'},
				 ];
				 //风险	
				 var columnsfx=[{type:'indexcolumn'},{type:'checkcolumn'},{field:'xh',header:'大修轮次',displayField:'xh'},{field:'type1',header:'类型',displayField:'type1'},
				 {field:'name',header:'名称',displayField:'name'},{field:'bc',header:'版次',displayField:'bc'},{field:'fj',header:'附件',displayField:'fj'},{field:'adduser',header:'上传者',displayField:'adduser'},{field:'addtime',header:'上传日期',displayField:'addtime'},
				 ];
				 
				 //内部
				 var columnsnb=[{type:'indexcolumn'},{type:'checkcolumn'},{field:'dxlc',header:'大修轮次',displayField:'dxlc'},{field:'jcff',header:'检查项目和方法',displayField:'jcff'},{field:'jzstatus',header:'机组状态',displayField:'jzstatus'},
				 {field:'rysxys1',header:'人因失效因素分类（大类）',displayField:'rysxys1'},{field:'rysxys2',header:'人因失效因素分类（小类）',displayField:'rysxys2'},{field:'sjtype',header:'事件类型 ',displayField:'sjtype'},{field:'sjms',header:'事件描述',displayField:'sjms'},{field:'dzjg',header:'导致结果',displayField:'dzjg'},
				 {field:'yyfx',header:'原因分析',displayField:'yyfx'},{field:'jzxd',header:'纠正行动 ',displayField:'jzxd'},{field:'hxgjcs',header:'后续改进措施',displayField:'hxgjcs'},{field:'fujian',header:'附件',displayField:'fj',renderer:"setFile"},{field:'bz',header:'备注',displayField:'bz'},
				 ];
				 
				 //缺陷
				 var columnsqx=[{type:'indexcolumn'},{type:'checkcolumn'},{field:'dxlc',header:'大修轮次',displayField:'dxlc'},{field:'jzstatu',header:'机组状态',displayField:'jzstatu'},{field:'gdh',header:'工单号',displayField:'gdh'},
				 {field:'gznr',header:'工作内容',displayField:'gznr'},{field:'qxtzdh',header:'缺陷通知单号',displayField:'qxtzdh'},{field:'title',header:'标题',displayField:'title'},{field:'tzdlx',header:'通知单类型',displayField:'tzdlx'},
				 {field:'gnwz',header:'功能位置',displayField:'gnwz'},{field:'tzdms',header:'通知单描述 ',displayField:'tzdms'},{field:'bgz',header:'报告者',displayField:'bgz'},{field:'gzzxgc',header:'工作中心工厂',displayField:'gzzxgc'},{field:'yhstatu',header:'用户状态',displayField:'yhstatu'},
				 ];
				 //监管
				 var columnsjg=[{type:'indexcolumn'},{type:'checkcolumn'},{field:'jizu',header:'大修轮次',displayField:'jizu'},{field:'jzstatu',header:'机组状态',displayField:'jzstatu'},
				 {field:'source',header:'来源',displayField:'source'},{field:'jgyq',header:'监管要求',displayField:'jgyq'},{field:'xdjh',header:'行动计划',displayField:'xdjh'},{field:'zrr',header:'责任人',displayField:'zrr'},{field:'fileRealName',header:'附件',displayField:'fileRealName',renderer:"setFile"},
				 {field:'wcqksm',header:'完成情况说明',displayField:'wcqksm'},{field:'statu',header:'状态 ',displayField:'statu'},
				 ];
				//项目管理
				var columnxmgl = [{type:'indexcolumn'},{type:'checkcolumn'},{field:'jzname',header:'机组',displayField:'jzname'},{field:'overhaul',header:'大修轮次',displayField:'overhaul'},
				 {field:'itemname',header:'项目名称',displayField:'itemname'},{field:'detailed',header:'标准化项目管理清单',displayField:'detailed',renderer:"setConnect"}
				 ];	
						
				grid.on("drawcell", function (e) {
						
				    	var record = e.record,
				         column = e.column,
				         field = e.field,
				         value = e.value;
					    if (field == "zzlx") {
							 e.cellHtml = nui.getDictText("zzgltype", e.value);
						}
						if (field == "lx") {
						 e.cellHtml = nui.getDictText("SEC_TYPE", e.value);
						}
						if (field == "type") {
						 e.cellHtml = nui.getDictText("ZLGL_TYPE", e.value);
						}
						
						if (field == "type1") {
							 e.cellHtml = nui.getDictText("DXGL_TYPE", e.value);
						}
						if (field == "jzstatus") {
						 e.cellHtml = nui.getDictText("NBJY_JZSTATU", e.value);
						}
						if (field == "rysxys1") {
						 e.cellHtml = nui.getDictText("REASON1", e.value);
						}
						if (field == "rysxys2") {
						 e.cellHtml = nui.getDictText("REASON2", e.value);
						}
						if (field == "jzstatu") {
						 e.cellHtml = nui.getDictText("NBJY_JZSTATU", e.value);
						}
						if (field == "statu") {
						 e.cellHtml = nui.getDictText("JGYQSTATU", e.value);
						}
						if (field == "type2") {
						 e.cellHtml = nui.getDictText("DXGL_ANGL", e.value);
						}
						
						if (field == "addtime") {
						 e.cellHtml = nui.formatDate(e.value,"yyyy-MM-dd HH:mm:ss");
						}
						
						
			}); 


		</script>
</body>
</html>