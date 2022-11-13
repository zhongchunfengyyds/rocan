<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): ASUS
  - Date: 2018-12-14 11:08:40
  - Description:
-->
<head>
<title>回收站</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
</head>
<body style="width:98%;height:95%;margin:0 auto;">
            <div id="form1">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgtFile">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="deltime">
    			<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">  
                <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table id="table1" class="table" style="height:100%">
                </table>
                 	<input class="nui-hidden"  name="criteria/_expr[1]/isdelete" value="1"/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                      <input class="nui-hidden" id="con_jdid" name="criteria/_expr[2]/jd" /> 
		           <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> 
		           <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">  
                </div>
     	  </div>
        
      
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglzzsqglsqgls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.queryTDxglZzsqglSqgls.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        multiSelect="true"
                        allowSortColumn="true"
                        sortMode="client"
                        onselectionchanged="selectionChanged"
                        >

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" width="70" >
                            姓名
                        </div>
                        <div field="sex" headerAlign="center" allowSort="true" width="50" renderer="xbRenderer">
                            性别
                        </div>
                        <div field="empnubmer" headerAlign="center" allowSort="true" >
                            员工号
                        </div>
                        <div field="idnumber" headerAlign="center" width="150" allowSort="true" >
                            身份证号
                        </div>
                         <div field="xl" headerAlign="center" allowSort="true" renderer="xlRenderer">
                            学历
                        </div>
                         <div field="zc" headerAlign="center" allowSort="true" renderer="zcRenderer">
                           职称
                        </div>
                        <div field="zyly" headerAlign="center" allowSort="true" renderer="zylyRenderer">
                            专业领域
                        </div>
                        <div field="kssj" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd" visible="false">
                            开始时间
                        </div>
                        <div field="jssj" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd" visible="false">
                            结束时间
                        </div>
                        <div field="gzdw" headerAlign="center" allowSort="true" visible="false">
                            工作单位
                        </div>
                        <div field="gznr" headerAlign="center" allowSort="true" visible="false">
                            工作内容
                        </div>
                        <div field="sqlx" headerAlign="center" allowSort="true" renderer="sqlxRenderer">
                            授权类型
                        </div>
                        <div field="sqfwhdj" headerAlign="center" allowSort="true" >
                            授权范围和等级（如有）
                        </div>
                        
                        <div field="sqyxq" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss"  renderer="yxqRenderer">
                            授权有效期至
                        </div>
                        <div field="zmwj" renderer="setFile" headerAlign="center" allowSort="true" >
                            证明文件（上传附件）
                        </div>
                        <div field="zt" headerAlign="center" allowSort="true" renderer="sqztRenderer" visible="false" >
                            状态
                        </div>
                        <div field="bz" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            是否删除
                        </div>
                         <div field="deluser" headerAlign="center" allowSort="true" >
                            删除人
                        </div>
                        <div field="deltime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                           删除时间
                        </div>
                    </div>
                </div>
            </div>
      
   <div property="footer" align="center" style="margin-top:10px;">
            <a class="nui-button btn btn-default btn-xs" onclick="back()">
               恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" id="remove" onclick="remove()">
                彻底删除
            </a>
        </div>


	<script type="text/javascript">
    	  nui.parse();
            var grid = nui.get("datagrid1");
          	var jdid=getCookie('jdid');
			nui.get('con_jdid').setValue(jdid);
           	if(jdid!=null && jdid!=""){
            	
	            var formData = new nui.Form("#form1").getData(false,false);
	            grid.load(formData);
            }
            var role = '<%=userRoleCodeList %>';
            function setFormData(data) {
            	if(data.isJdgly){
					if ('<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0) {
						 $("#remove").hide();
					 }
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
                                        url:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.deleteTDxglZzsqglSqgls.biz.ext",
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
                     //学历公共代码转换
			    	function xlRenderer(e){
			    		return nui.getDictText("Edu",e.value);
			    	}
			    	//职称公共代码转换
			    	function zcRenderer(e){
			    		return nui.getDictText("ZC",e.value);
			    	}
                                //恢复
                    function back(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tdxglzzsqglsqgls:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({  
                                        url:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.hfdeleteTDxglZzsqglSqgls.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                                grid.reload();
                                                nui.alert("恢复成功", "系统提示", function(action){
                                                    });
                                                }else{
                                                    grid.unmask();
                                                    nui.alert("恢复失败", "系统提示");
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
                               //性别公共代码转换
			    	function xbRenderer(e){
			    		return nui.getDictText("XB",e.value);
			    	}
			    	//学历公共代码转换
			    	function xlRenderer(e){
			    		return nui.getDictText("Edu",e.value);
			    	}
			    	//职称公共代码转换
			    	function zcRenderer(e){
			    		return nui.getDictText("ZC",e.value);
			    	}
			    	//专业领域公共代码转换
			    	function zylyRenderer(e){
			    		return nui.getDictText("ZYLY",e.value);
			    	}
			    	//授权类型公共代码转换
			    	function sqlxRenderer(e){
			    		return nui.getDictText("SQTYPE",e.value);
			    	}
			    	//授权状态公共代码转换
			    	function sqztRenderer(e){
			    	
			    		if(e.row.zt=="YGQ"||e.row.zt=="YCX"||e.row.zt=="YZT"){
			    			e.rowStyle = 'color:red';
			    		}
			    		return nui.getDictText("SQGL_WSZT",e.value);
			    	}
			    	 //有效期公共代码转换
					function yxqRenderer(e){
						var yxq=new Date(e.row.sqyxq);
						if(yxq!=null&&yxq<new Date()){
							e.rowStyle = 'color:red';
							e.row.zt="YGQ";
						}				
						var reg=/\\|\//g;	
						e.cellHtml = e.cellHtml.replace(reg,"-");														
						return e.cellHtml;
					}
					
					function setFile(e){
                    	var fileRealName = e.record.fileRealName;
			 			var filepath = e.record.filePath;
			 			var fileId = e.record.fileId;
						if(fileRealName == null || fileRealName == 'null'){
							return "";
						}
			           	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
			           	return html;
                    }
                    
                    //点击附件下载
				    function load(fileId) {
				        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId=" + fileId;
				    }
					
    </script>
</body>
</html>