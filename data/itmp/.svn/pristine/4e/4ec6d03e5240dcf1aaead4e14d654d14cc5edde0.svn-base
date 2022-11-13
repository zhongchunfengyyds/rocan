<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
    String dataTime = df.format(new Date());

    IUserObject cu = CommonUtil.getUserObject();
    String userid = cu.getUserId();
    String username = cu.getUserRealName();

    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<html>
<%--
- Author(s): Sun
- Date: 2019-02-21 09:42:10
- Description:
    --%>
    <head>
        <title>
            年度计划核岛大修计划
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
        <%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/> --%>
       
    </head>
    <body style="width:98%;height:97%;">
        <div class="nui-panel" title="年度计划核岛换料大修计划"  style="width:100%;height:auto;" showToolbar="false" showFooter="true">
            <div id="form1" class="nui-form" align="left" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.PlanEntity">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[2]/_property" value="creatdate">
                <input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="desc">
                大修轮次
                <input id="combo1" class="nui-combobox" style="width:70px;" valueField="id" 
						    required="true" allowInput="true" 
						    textField="text"  pinyinField="tag">
                <a class="nui-button btn btn-default btn-xs" onclick="createplan()" name="TIMP_btnMakePlan">
               生成大修计划
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="search()">
                查询
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
                重置
            </a>
            <a id="del" style="display: none" class="nui-button btn btn-default btn-xs" onclick="onDel()">
                删除
            </a> 
            <a class="nui-button btn btn-default btn-xs" id="effect" id="effect" onclick="effect()">
               生效
            </a>
            <input id="lc" class="nui-hidden" name="criteria/_expr[1]/lc"/>
        	<input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
        	<input style="display: none" id='baseid' class="nui-textbox" name="criteria/_expr[2]/base"/>
	        <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
	        <input style="display: none" id='crewid' class="nui-textbox" name="criteria/_expr[3]/crew"/>
	        <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
            </div>
        </div>
        <!--footer-->
        <div title="center" region="center" style="width:100%;height:90%;">
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tgglndjhhddxs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryTgglndjhhddxs.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false" allowAlternating="true">

                    <div property="columns">
                    	<div type="checkcolumn">
                        </div>
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processInstId" headerAlign="center" visible="false" allowSort="true" >
                            processInstId
                        </div>
                        <div field="orderno" headerAlign="center" visible="false" allowSort="true" >
                            orderno
                        </div>
                        <div field="base" headerAlign="center" visible="false" allowSort="true" >
                            base
                        </div>
                        <div field="crew" headerAlign="center" visible="false" allowSort="true" >
                            crew
                        </div>
                        <div field="lc" headerAlign="center" visible="false" allowSort="true" >
                            lc
                        </div>
                        <div field="ndplan" renderer="setdanhao" width="170" headerAlign="center" allowSort="true" >
                            年度计划
                        </div>
                        <div field="record" renderer="setrecord" headerAlign="center" allowSort="true" >
                            生成记录
                        </div>
                        <div field="creater" headerAlign="center" allowSort="true" >
                            生成人
                        </div>
                        <div field="creatdate" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                            生成日期
                        </div>
                        <div field="isdelete" headerAlign="center" width="200" renderer="downloadFile">
                            生效文件
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();

            //按钮权限控制
            accessControlButton('<%=userRoleCodeList %>',1);

            var grid = nui.get("datagrid1");

            var formData = new nui.Form("#form1").getData(false,false);
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            if(isadmin == 'true'){
            	$('#del').show();
            }
			if(grid.data.length == 0){
				//nui.alert("请生成年度计划","提示");
			}
			var countrys = [];
            for(var i =1;i<=60;i++){
            	countrys.push({id:'C'+i,text:'C'+i,tag:'C'+i});
            }
			nui.parse();
			var combo = nui.get("combo1");
			combo.setData(countrys);
			
			var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
			if(jdid != null && jdid != '' && jzid != null && jzid != ''){
				search();//grid查询
			}
                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    //nui.get("update").enable();
                                }

                                //查询
                                function search() {
                                	nui.get('baseid').setValue(jdid);
									nui.get('crewid').setValue(jzid);
                                	var lc = nui.get('combo1').getValue();
                                    nui.get('lc').setValue(lc);
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    search();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                        //nui.get("update").disable();
                                    }else{
                                       // nui.get("update").enable();
                                    }
                                }
                                function createplan(){
                                	var lc = nui.get('combo1').getValue();
                                	if(lc == ""){
                                		nui.alert("请选择换料大修轮次","提示");
                                	}else{
                                		var jdid = getCookie('jdid');
										var jzid = getCookie('jzid');
                                		var json = {};
                                		json.base = jdid;
                                		json.crew = jzid;
                                		json.lc = lc;
                                		json.ident = "年度计划核岛大修";
                                		json.entity = "com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Dgglvitae8";
                                		json = nui.encode(json);
                                		$.ajax({
							                url:"com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getNDJHisAdd.biz.ext",							                
							                type:'POST',
							                data:json,
							                cache:false,
							                contentType:'text/json',
							                success:function(data){
							                	if(data.record){
							                		var jsondata = '{"data":{"ident":"年度计划核岛大修","baseid":"'+jdid+'","crewid":"'+jzid+'","lc":"'+lc+'","username":"'+'<%= username%>'+'"}}';
			        								var urlStr = "com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.createNDJHDX.biz.ext";
			        								grid.loading("正在生成中,请稍等...");
													$.ajax({
										                url:urlStr,
										                type:'POST',
										                data:jsondata,
										                cache:false,
										                contentType:'text/json',
										                success:function(data){
										                	grid.unmask();
								                            nui.alert("生成成功", "系统提示", function(action){
								                            	grid.reload();
								                            });
										                }
										            });
							                	}else{
							                		nui.alert("该大修轮次计划数据已存在,无需重新生成","提示");
							                	}
							                }
							            });
                                	}
                                }
                                
                                function setdanhao(e){
					          		return '<a href = "#" onclick ="showdetail()">'+e.record.ndplan+'</a>'; 
					            }
					           
					           function setrecord(e){
					          		return '<a href = "#" onclick ="showrecorddetail()">'+e.record.record+'</a>'; 
					            }
					           
					           
					           //超链接页面  
					            function showdetail() {
					                var row = grid.getSelected();      
					                if (row) {
					                    nui.open({showMaxButton : true,
					                        url: "<%=request.getContextPath()%>/annual/NuclearIsland/Overhaul/linkList.jsp",
					                        title: "数据详情",
					                        width: 1000,
					                        height: 600,
					                        onload: function () {
					                             var iframe = this.getIFrameEl();
								                 var data = {pageType:"data",record:{ndjh:row}};
								                //直接从页面获取，不用去后台获取
								                iframe.contentWindow.setFormData(data);
				                            }
			                            });
			                        } 
			                    }
			                    
			                    function showrecorddetail(){
			                    	var row = grid.getSelected();
					                if (row) {
					                	nui.open({showMaxButton : true,
					                        url: "/itmp/annual/NuclearIsland/Overhaul/linkDetail.jsp",
					                        title: "数据详情",
					                        width: 800,
					                        height: 550,
					                        onload: function () {
					                             var iframe = this.getIFrameEl();
								                 var data = {pageType:"data",record:{ndplan:row.ndplan,crew:row.crew,base:row.base,lc:row.lc,ident:'年度计划核岛大修'}};
								                //直接从页面获取，不用去后台获取
								                iframe.contentWindow.setFormData(data);
				                            }
			                            });
					                }
			                    }
			                    
function onDel(){
	var rows = grid.getSelecteds();
	if(rows.length > 0){
		nui.confirm("确定删除选中记录？","系统提示",
		function(action){
            if(action=="ok"){
            	var fieldValue = "";
            	for(var i=0;i<rows.length;i++){
            		fieldValue += rows[i].id;
            		if(i<rows.length - 1)fieldValue +=",";
            	}
                var json = {};
                json.fieldValue=fieldValue;
                json.token="<%=TokenUtil.getTokenString(request.getSession())%>"
                json.entity='com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.PlanEntity';
                json.mxEntity='com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulCreate.PlanGeneration';
                json.jlEntity='com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulDetail.PlanRecord';
                json = nui.encode(json);
                var urlStr = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.setDelNdjhInforMation.biz.ext";
                grid.loading("正在删除中,请稍等...");
				$.ajax({
	                url:urlStr,
	                type:'POST',
	                data:json,
	                cache:false,
	                contentType:'text/json',
	                success:function(text){
	                	var returnJson = nui.decode(text);
                        if(returnJson.record == 'true'){
                        	grid.unmask();
                            nui.alert("删除成功", "系统提示", function(action){
                            	grid.reload();
                            });
                        }else{
                            grid.unmask();
                            nui.alert("删除失败", "系统提示");
                        }
	                }
	            });
            }
        });
	}
}
				function effect(){
				var row = grid.getSelecteds();      
				var data = '';
				if(row.length=="1"){
					if(row[0].isdelete == "4"){
						nui.alert("该计划生效文件已经生成！","提示");
						return;
					}
					nui.open({
						showMaxButton : true,
						 url : '/itmp/annual/NuclearIsland/Overhaul/effectList.jsp',
						 title :'生效',
				 		 width: '90%',
		                 height: '90%',
		                 onload: function () {
		                 var iframe = this.getIFrameEl();
		                 for (var i = 0 ; i<row.length ;i++){
						   data=row[i]["id"];	                 
		                 }
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
			                    
		//数据行渲染下载标签                 
		 function downloadFile(e){
		 		if(e.value=="4"){
		 			return  '<a href="javascript:expotyPDF(\'' +e.record.id + '\')">'+e.record.ndplan+'.pdf</a> ';
		 		}else{
		 			return '';
		 		}
          }
          //导出pdf
          function expotyPDF(id){
         		var json = nui.encode({
         					id: id,
         					entityName:'com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.PlanEntity',
         					childEntityName:'com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulCreate.PlanGeneration'
         				});
          		var message = nui.loading("正在下载,请稍后...",'提示');
            	nui.ajax({
	                url: "com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.exportPdf.biz.ext",
	                type: 'POST',
	                data: json,
	                success: function (text) {
	                	if(text.result != null){
	                		nui.hideMessageBox(message);
	                     	openDownloadDialog("<%=request.getContextPath()%>/"+text.result,text.result);
	                	}
	                },
	                error: function (jqXHR, textStatus, errorThrown) {
	                    nui.hideMessageBox(message);
	                    nui.alert(jqXHR.responseText);
	                }
	            });
          }
        //下载弹窗	
		function openDownloadDialog(url, saveName){
			var type = navigator.userAgent;
                if((!!window.ActiveXObject || "ActiveXObject" in window)){
                 	//"IE";
                 	window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + saveName.replace("\\", "/").split("/")[1] + "&projectPath=tempFile&loadFileName=" + saveName.replace("\\", "/").split("/")[1]);;
//                   	var elemIF = document.createElement("iframe");
// 			        elemIF.src = url;
// 			        elemIF.style.display = "none";
// 			        document.body.appendChild(elemIF);
                }else if(type.indexOf("Chrome")>-1){
                 //"谷歌";
	                 if(typeof(url) == 'object'&& url instanceof Blob){
					  url = URL.createObjectURL(url); // 创建blob地址
					 }
					 var aLink = document.createElement('a');
					 aLink.href = url;
					 aLink.download = saveName.substring(5,saveName.length) || '';// HTML5新增的属性，指定保存文件名，可以不要后缀，注意，file:///模式下不会生效
					 var event;
					 if(window.MouseEvent) event = new MouseEvent('click');
					 else
					 {
					  event = document.createEvent('MouseEvents');
					  event.initMouseEvent('click',true,false, window, 0, 0, 0, 0, 0, false,false,false,false, 0, null);
					 }
					 aLink.dispatchEvent(event); 
                }else{
                  //"其他";
                 window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + saveName.replace("\\", "/").split("/")[1] + "&projectPath=tempFile&loadFileName=" + saveName.replace("\\", "/").split("/")[1]);;
// 				  var elemIF = document.createElement("iframe");
// 			        elemIF.src = url;
// 			        elemIF.style.display = "none";
// 			        document.body.appendChild(elemIF);
                }
		}
          
                            </script>
                        </body>
                    </html>
