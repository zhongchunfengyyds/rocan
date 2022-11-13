<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
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
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.authorization.WelderQualificationMgt.WelderQualificationMgtFile">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="deltime">
    			<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">  
                <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table id="table1" class="table" style="height:100%">
                   
          
                </table>
                
                 <input class="nui-hidden"  name="criteria/_expr[1]/isdelete" value = "1"/>
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
                        dataField="tdxglzzsqglhgzzgls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.authorization.WelderQualificationMgt.queryTDxglZzsqglHgzzgls.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        multiSelect="true"
                        allowSortColumn="true"
                        sortMode="client"
                        onselectionchanged="selectionChanged"
                        >

                    <div property="columns">  
                        <div type="checkcolumn">
                        </div>
                       
            <div field="uuid" headerAlign="center" allowSort="true"visible="false" >
                            uuid
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" width="70">
                            姓名
                        </div>
                        <div field="sex" headerAlign="center" width="50" allowSort="true" renderer="xbRenderer">
                            性别
                        </div>
                        <div field="empnubmer" headerAlign="center" allowSort="true" >
                            员工号
                        </div>
                        <div field="idnumber" headerAlign="center" width="150" allowSort="true" >
               	身份证号
                        </div>
                        <div field="pzrq" headerAlign="center" allowSort="true">
                          证书编号
                        </div>
                        <div field="zyxmdh" headerAlign="center" allowSort="true" >
                            作业项目代号
                        </div>
                          <div field="gzdw" headerAlign="center" allowSort="true" >
                            工作单位
                        </div>                        
                    
                        <div field="yxrq" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss"  renderer="yxqRenderer">
                            有效日期至
                        </div>
                        <div field="fzjg" headerAlign="center" allowSort="true" >
                           发证机关
                        </div>
                        <div field="zmwj" renderer="setFile" headerAlign="center" allowSort="true" >
                            证明文件
                        </div>
                        <div field="zt" headerAlign="center" allowSort="true" renderer="ztRenderer" visible="false" >
                            状态
                        </div>
                        <div field="bz" headerAlign="center" allowSort="true" >
                           备注
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false" >
                            删除标识
                        </div>
                        <div field="deluser" headerAlign="center" allowSort="true">
                            删除人
                        </div>
                        <div field="deltime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
                            删除时间
                        </div>
                    </div>
                </div>
            </div>
        
   <div property="footer" align="center">
            <a class="nui-button btn btn-default btn-xs" onclick="back()">
              <i class="fa fa-reply"></i>恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="remove()">
              <i class="fa fa-remove"></i>彻底删除
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
                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tdxglzzsqglhgzzgls:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.authorization.WelderQualificationMgt.deleteTDxglZzsqglHgzzgls.biz.ext",
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
                                
                                //恢复
                    function back(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tdxglzzsqglhgzzgls:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({  
                                        url:"com.cgn.itmp.dailyandoverhaul.authorization.WelderQualificationMgt.hfdeleteTDxglZzsqglHgzzgls.biz.ext",
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
								//状态公共代码转换
								function ztRenderer(e){
									return nui.getDictText("WSZT",e.value);
								}
								//有效期公共代码转换
								function yxqRenderer(e){
									var yxq=new Date(e.row.yxrq);
									if(yxq!=null&&yxq<new Date()){
										e.rowStyle = 'color:red';
										e.row.zt="YGQ";
									}																	
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