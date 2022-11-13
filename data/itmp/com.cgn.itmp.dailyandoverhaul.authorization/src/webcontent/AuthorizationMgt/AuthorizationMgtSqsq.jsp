
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): ASUS
- Date: 2019-01-02 13:48:32
- Description:
    --%>
    <head>
        <title>
            	授权管理
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body style="width:98%;height:95%;">
            <div  class="nui-layout" style="width:100%;height:100%;">
    <div  region="north"  style="width:100%;height:20%;" showToolbar="false" showFooter="true" >
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt">
                <!-- 排序字段 -->
                <table id="table1" class="table" style="height:100%">
                    <tr>
        
                        <td class="form_label">
                            员工号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/empnubmer"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    
                        <td class="form_label">
                            身份证号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/idnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="=">
                        </td>
      
                         <td>
                         <a class="nui-button" onclick="search()">
                                    查询
                		</a>
                        </td>
                        <td>
            			  <td colspan="1">
                            <input class="nui-hidden" name="criteria/_expr[8]/isdelete" value="0"/>
                            <input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="end">
                        </td>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
       <div class="nui-panel" title="组织管理"   style="width:100%;height:85%;" showToolbar="false" showFooter="false" >
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
            <div id="dataform1" style="padding-top:5px;">
        	<fieldset id="fd2" style="width:600px;">
		        <legend><label>基本信息</label></legend>
			        <div class="fieldset-body">
			        	<table class="form-table" border="0" cellpadding="1" cellspacing="2">
					    <tr>
		               		<td class="form_label">
		                      	 姓名
		                    </td>
		                    <td colspan="1">
		                        <input class="nui-textbox" name="tdxglZzsqglSqgl.name"/>
		                    </td>
		                    <td class="form_label">
		                      	性别
		                    </td>
		                    <td colspan="1">
		                       <select style="width:100%;" name="tdxglZzsqglSqgl.sex"/>   
						        <option value="1" selected>请选择</option>   
						        <option value="2">男</option>   
						        <option value="3">女</option>           
      				</select>
		                    </td>
		                </tr>
		                <tr>
		                    <td class="form_label">
		                     	员工号
		                    </td>
		                    <td colspan="1">
		                        <input class="nui-textbox" name="tdxglZzsqglSqgl.empnubmer"/>
		                    </td>
		                    <td class="form_label">
		                      	身份证号
		                    </td>
		                    <td colspan="1">
		                        <input class="nui-textbox" name="tdxglZzsqglSqglt.idnubmer/>
		                    </td>
		                </tr>
		                <tr>
		                    <td class="form_label">
		                       	学历
		                    </td>
		                    <td colspan="1">	                   
		                       <select style="width:100%;" name="tdxglZzsqglSqglt.xl"/>   
						        <option value="1" selected>请选择</option>   
						        <option value="2">初中</option>   
						        <option value="3">高中</option>   
						        <option value="4">大专</option>   					               
      							</select>
		                    </td>
		                     <td class="form_label">
		                      	职称
		                     </td>
		                     <td colspan="1">
		                        <select style="width:100%;" name="tdxglZzsqglSqglt.zc"/>   
						        <option value="1" selected>请选择</option>   
						        <option value="2">初级工程师</option>   
						        <option value="3">中级工程师</option>   
						        <option value="4">高级工程师</option>     					               
      							</select>
		                    </td>
		                     </td>		 		                
		                </tr>
		         
		                </table>
		                </div>
			        </div>
			          <div class="fieldset-body">
			        	<table class="form-table" border="0" cellpadding="1" cellspacing="2">
			        	
		                <div field="kssj" headerAlign="center" allowSort="true" >
                            	开始时间
                        </div>
                        <div field="jssj" headerAlign="center" allowSort="true" >
                           	              结束时间
                        </div>
                        <div field="gzdw" headerAlign="center" allowSort="true" >
                            	工作单位
                        </div>
                        <div field="zygznr" headerAlign="center" allowSort="true" >
                            	主要工作内容
                        </div>		             
		                </table>	
            </div>
            <div>
                <table id="table1" class="table" style="height:100%">
                    <tr>
        
                        <td class="form_label">
                            员工号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/empnubmer"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    
                        <td class="form_label">
                            身份证号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/idnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="=">
                        </td>
                       <td class="form_label">
                            证明文件:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/empnubmer"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    
                        <td class="form_label">
                            有效期:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/idnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="=">
                        </td>
                        <td>
            			  <td colspan="1">
                            <input class="nui-hidden" name="criteria/_expr[8]/isdelete" value="0"/>
                            <input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="end">
                        </td>
                        </td>
                    </tr>
                </table>
            </div>
           <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglzzsqglsqgls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.queryTDxglZzsqglSqgls.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

       			    </div>
               </div>
            </div>
        </div>
      </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");

            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

            //新增
            function add() {
                nui.open({showMaxButton : true,
                    url: "TDxglZzsqglSqglForm.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    }，
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
                        url: "TDxglZzsqglSqglForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 300,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tdxglzzsqglsqgl:row}}; //直接从页面获取，不用去后台获取
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
                                    var json = nui.encode({tdxglzzsqglsqgls:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.ljdeleteTDxglZzsqglSqgls.biz.ext",
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
                                
                                
                                function huishouzhan() {
					                nui.open({showMaxButton : true,
					                    url: "TDxglZzsqglFolder.jsp",
					                    title: "回收站", width:1000, height: 500,
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
                                function search() {
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
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
                                    }
                                }
                            </script>
                        </body>
                    </html>
