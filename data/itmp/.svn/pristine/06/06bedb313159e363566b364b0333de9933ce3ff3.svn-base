<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-10-08 11:08:46
  - Description:
-->
<head>
<title>升版提醒</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
     <script type="text/javascript" src="<%=request.getContextPath()%>/common/common.js"></script>
    
</head>
<body style="height: 90%">
<div  id="form1"  class="nui-form" align="center">
		<!--数据实体  -->
		<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.programManagement.TCgnDgglSbtx">
		
          	<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="fqsj">
   			<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
   			<input class="nui-hidden" name="criteria/_expr[2]/isdel" value="0" /> 
   		<input class="nui-hidden" id="con_txname"
						name="criteria/_expr[3]/txname" value="" /> <input
						class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
			
</div>
	<div class="search-box">
	    <div class="navbar navbar-default query-form">
	        <div class="container-fluid">
	            <div class="collapse navbar-collapse">
	                <div class="navbar-header">
	                    <div class="navbar-brand" style="padding-top:0;padding-bottom:0;">
	                    	<div class="navbar-form navbar-left">
	                            <div class="input-group">
	                              <input type="text" id="cond" name="processInstDesc:%" class="form-control"  placeholder="关键字查询" tmplId="todolist" url="com.cgn.itmp.outlineandplan.base.ProgramManagement.QueryTCgnDgglSbtx.biz.ext " >
	                           	 <span class="input-group-btn" style="width:auto;">
	                                <button class="btn btn-default" type="button" id="query" onclick="btnQuery();" style="height: 34px;"><span class="fa fa-search"></span></button>
	                              </span>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	  </div>
	  
<div region="center" style="width: 100%; height: 95%;"
		showToolbar="false" showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;" name="ITMP_btn">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;"><a id="add"
						class="nui-button"  onclick = "add()" name="ITMP_btnAdd">新增</a>
				 <a id="update"
						class="nui-button showCellTooltip"
						onclick="edit()" name="ITMP_btnEdit">修改
					</a> <a
						class="nui-button" onclick="remove()"  name="ITMP_btnDel">
							 删除
					</a> <a class="nui-button"
						onclick="recycle()"  name="ITMP_btnRec"> 回收站
					</a> 
				</tr>
			</table>
		</div>
		
		<div class="nui-fit" style="height: 100%">
			<div id="datagrid1" class="nui-datagrid" dataField="TCgnDgglSbtx"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.outlineandplan.base.ProgramManagement.QueryTCgnDgglSbtx.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"  allowSortColumn="true"  sortMode="client">
				<div property="columns">
					
					<div type="checkcolumn"></div>
					<div field="uuid" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true" visible="false">
					</div>	
					
					<div field="txname" 
						style="width: 100%;" headerAlign="center" allowSort="true" renderer="setnameFile">
						到期提醒名称
										</div>
					<div field="fqr" 
						style="width: 100%;" headerAlign="center" allowSort="true">
						发起人
					</div>
						<div field="fqsj" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true"
						dateFormat="yyyy-MM-dd">
						发起日期
					</div>
				<!-- 		<div field="zt" 
						style="width: 100%;" headerAlign="center" allowSort="true">
						状态
						 <input property="editor" id="zt" class="nui-checkbox"
							name="TCgnDgglSbtx.zt" style="width: 100%;" dictTypeId="zt"
							dataField="zt" required="true" requiredErrorText="类型不能为空" />
					</div> -->
						<div id="cbl1" class="mini-checkboxlist" repeatItems="3" repeatLayout="table"
				        textField="text" valueField="id" value="" 
				        url="../itmp/data/checkList.txt" dataField="checks">状态
   				 </div>
   				 		<div field="txname" 
						style="width: 100%;" headerAlign="center" allowSort="true" visible="false">升版提醒时间
					</div>	
						<div field="txday" 
						style="width: 100%;" headerAlign="center" allowSort="true" visible="false">提醒时间
					</div>		
   				 			<div field="txr" 
						style="width: 100%;" headerAlign="center" allowSort="true" visible="false">提醒人
					</div>	
					</div>
				</div>
			</div>
		</div>



	<script type="text/javascript">
    	nui.parse();
    	
    	 var grid = nui.get("datagrid1");
    	
    	function btnQuery(){
			var gjz=$("#cond").val();
				if(gjz==""){
					refresh();
				}else{
					 var data = {
					 	 matchFied :"txname",
						 wordVal : gjz,
						 entity  : $("input[name='criteria/_entity']").val(),
						 entityName : 'criteria',
						 sfdel : true,
						 jdInfo:'dzid@'+getCookie('jdid'),
						 jzInfo:'jzid@'+getCookie('jzid')
						 
					 } 
					 var query = nui.decode(getKeyWordQuery(data));
					 grid.load(query);
				 }
        }
              //重新刷新页面
                    function refresh(){
                        var form = new  nui.Form("#form1");
                        var json = form.getData(false,false);
                        grid.load(json);//grid查询
                    }

                    //查询
                    function search() {
                        var form = new nui.Form("#form1");
                        var json = form.getData(false,false);
                        grid.load(json);//grid查询
                        nui.get("popupMenu").enable();
                    	nui.get("update").disable();
                        nui.get("save").hide();
						nui.get("cancle").hide();
                    }
        
        
        function add(){
               nui.open({
               showMaxButton : true,
                url: "/itmp/base/programManagement/ProgramAddRemind.jsp",
                title: "升版提醒设置", width: 1000, height: 600,
                onload: function () {//弹出页面加载完成
              //  var iframe = this.getIFrameEl();
                var data = {
                };//传入页面的json数据
                   // iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                }
            });
        }
        
       function remove(){
            	
                var rows = grid.getSelecteds();
                if(rows.length > 0){
                    nui.confirm("确定删除选中记录？","系统提示",
                    function(action){
                        if(action=="ok"){
                            var json = nui.encode({TCgnDgglSbtx:rows});
                            grid.loading("正在删除中,请稍等...");
                            $.ajax({
                                url:"com.cgn.itmp.outlineandplan.base.ProgramManagement.DeleteTCgnDgglSbtx.biz.ext",
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
                        
			     function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                        url: "/itmp/base/programManagement/ProgramUpdate.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 300,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{ TCgnDgglSbtx : row}};
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
                    
             function recycle(){
               nui.open({
               showMaxButton : true,
                url: "/itmp/base/programManagement/ProgramUpgradeRecyle.jsp",
                title: "回收站", width: 1000, height: 500,
                onload: function () {//弹出页面加载完成
              //  var iframe = this.getIFrameEl();
                var data = {
                };//传入页面的json数据
                   // iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                     grid.reload();
                }
            });
             }   
             
				function setnameFile(e){
				var txname =  e.record.txname;
				var uuid = e.record.uuId;
		    	var html = '<a href ="/itmp/base/programManagement/ProgramUpgradeDetail.jsp?id='+uuid+'">'+txname+'</a>';
				
				return html;													
				}        
				
    	
    </script>
</body>
</html>