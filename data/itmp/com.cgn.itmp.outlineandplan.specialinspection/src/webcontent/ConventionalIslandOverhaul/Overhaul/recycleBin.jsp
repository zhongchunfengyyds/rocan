<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-24 19:33:32
- Description:
    --%>
    <head>
        <title>
      
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body style="width:98%;height:95%;">
        <div class="nui-panel"   style="width:100%;height:100;" showToolbar="false" showFooter="true">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.ConventionalIslandSearchDel">
                <!-- 排序字段 -->
                              <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="datetime">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                   <input class="nui-hidden" id="con_jdid" name="criteria/_expr[1]/jd" /> 
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like"> 
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                      
                            <input class="nui-hidden" id="con_jzid" name="criteria/_expr[2]/jz"   />
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
 
                
            </div>
        </div>
              
        
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tzyjcjhhdgddels"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.queryTzyjcjhhdGDdels.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
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
                          <div field="jd" headerAlign="center" allowSort="true" renderer="JDRenderer" >
                            基地
                        </div>
                        <div field="jz" headerAlign="center" allowSort="true"   renderer="JZRenderer">
                            机组
                        </div>
                        <div field="checkprojectname" headerAlign="center" allowSort="true" >
                            检查项目名称
                        </div>
                        <div field="type" headerAlign="center" renderer="gsRenderer"allowSort="true" >
                            类型
                        </div>
                        <div field="rwqd" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                      
                        <div field="gl" headerAlign="center" allowSort="true" >
                            管类
                        </div>
                        <div field="gxh" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div field="zysb" headerAlign="center" allowSort="true" >
                            主要设备
                        </div>
                        <div field="cz" headerAlign="center" allowSort="true" >
                            材质	
                        </div>
                        <div field="gczj" headerAlign="center" allowSort="true" >
                            公称直径(mm)
                        </div>
                        <div field="wj" headerAlign="center" allowSort="true" >
                            外径(mm)
                        </div>
                        <div field="mybh" headerAlign="center" allowSort="true" >
                            名义壁厚(mm)
                        </div>
                        <div field="jk" headerAlign="center" allowSort="true" >
                            进口
                        </div>
                        <div field="ck" headerAlign="center" allowSort="true" >
                            出口
                        </div>
                        <div field="lct" headerAlign="center" allowSort="true" >
                           流程图/等轴图号
                        </div>
                        <div field="jcbw" headerAlign="center" allowSort="true" >
                            检查部位/检查内容
                        </div>
                        <div field="bz" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="fac" headerAlign="center" renderer="facRenderer"allowSort="true" >
                            FAC
                        </div>
                        <div field="jcsl" headerAlign="center" allowSort="true" >
                            测厚数量
                        </div>
                        <div field="utbw" headerAlign="center" allowSort="true" >
                            UT 部位
                        </div>
                        <div field="utsl" headerAlign="center" allowSort="true" >
                            UT数量
                        </div>
                        <div field="creator" headerAlign="center" allowSort="true" >
                            发起人
                        </div>
                        <div field="datetime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                            发起时间
                        </div>
                        <div field="reason" headerAlign="center" allowSort="true" >
                            发起原因
                        </div>
                      <div field="c1" headerAlign="center" allowSort="true" >
                            C1
                        </div>
                        <div field="c2" headerAlign="center" allowSort="true" >
                            C2
                        </div>
                        <div field="c3" headerAlign="center" allowSort="true" >
                            C3
                        </div>
                        <div field="c4" headerAlign="center" allowSort="true" >
                            C4
                        </div>
                        <div field="c5" headerAlign="center" allowSort="true" >
                            C5
                        </div>
                        <div field="c6" headerAlign="center" allowSort="true" >
                            C6
                        </div>
                        <div field="c7" headerAlign="center" allowSort="true" >
                            C7
                        </div>
                        <div field="c8" headerAlign="center" allowSort="true" >
                            C8
                        </div>
                        <div field="c9" headerAlign="center" allowSort="true" >
                            C9
                        </div>
                        <div field="c10" headerAlign="center" allowSort="true" >
                            C10
                        </div>
                        <div field="c11" headerAlign="center" allowSort="true" >
                            C11
                        </div>
                        <div field="c12" headerAlign="center" allowSort="true" >
                            C12
                        </div>
                        <div field="c13" headerAlign="center" allowSort="true" >
                            C13
                        </div>
                        <div field="c14" headerAlign="center" allowSort="true" >
                            C14
                        </div>
                        <div field="c15" headerAlign="center" allowSort="true" >
                            C15
                        </div>
                        <div field="c16" headerAlign="center" allowSort="true" >
                            C16
                        </div>
                        <div field="c17" headerAlign="center" allowSort="true" >
                            C17
                        </div>
                        <div field="c18" headerAlign="center" allowSort="true" >
                            C18
                        </div>
                        <div field="c19" headerAlign="center" allowSort="true" >
                            C19
                        </div>
                        <div field="c20" headerAlign="center" allowSort="true" >
                            C20
                        </div>
                        <div field="c21" headerAlign="center" allowSort="true" >
                            C21
                        </div>
                        <div field="c22" headerAlign="center" allowSort="true" >
                            C22
                        </div>
                        <div field="c23" headerAlign="center" allowSort="true" >
                            C23
                        </div>
                        <div field="c24" headerAlign="center" allowSort="true" >
                            C24
                        </div>
                        <div field="c25" headerAlign="center" allowSort="true" >
                            C25
                        </div>
                        <div field="c26" headerAlign="center" allowSort="true" >
                            C26
                        </div>
                        <div field="c27" headerAlign="center" allowSort="true" >
                            C27
                        </div>
                        <div field="c28" headerAlign="center" allowSort="true" >
                            C28
                        </div>
                        <div field="c29" headerAlign="center" allowSort="true" >
                            C29
                        </div>
                        <div field="c30" headerAlign="center" allowSort="true" >
                            C30
                        </div>
                        <div field="c31" headerAlign="center" allowSort="true" >
                            C31
                        </div>
                        <div field="c32" headerAlign="center" allowSort="true" >
                            C32
                        </div>
                        <div field="c33" headerAlign="center" allowSort="true" >
                            C33
                        </div>
                        <div field="c34" headerAlign="center" allowSort="true" >
                            C34
                        </div>
                        <div field="c35" headerAlign="center" allowSort="true" >
                            C35
                        </div>
                        <div field="c36" headerAlign="center" allowSort="true" >
                            C36
                        </div>
                        <div field="c37" headerAlign="center" allowSort="true" >
                            C37
                        </div>
                        <div field="c38" headerAlign="center" allowSort="true" >
                            C38
                        </div>
                        <div field="c39" headerAlign="center" allowSort="true" >
                            C39
                        </div>
                        <div field="c40" headerAlign="center" allowSort="true" >
                            C40
                        </div>
                        <div field="c41" headerAlign="center" allowSort="true" >
                            C41
                        </div>
                        <div field="c42" headerAlign="center" allowSort="true" >
                            C42
                        </div>
                        <div field="c43" headerAlign="center" allowSort="true" >
                            C43
                        </div>
                        <div field="c44" headerAlign="center" allowSort="true" >
                            C44
                        </div>
                        <div field="c45" headerAlign="center" allowSort="true" >
                            C45
                        </div>
                        <div field="c46" headerAlign="center" allowSort="true" >
                            C46
                        </div>
                        <div field="c47" headerAlign="center" allowSort="true" >
                            C47
                        </div>
                        <div field="c48" headerAlign="center" allowSort="true" >
                            C48
                        </div>
                        <div field="c49" headerAlign="center" allowSort="true" >
                            C49
                        </div>
                        <div field="c50" headerAlign="center" allowSort="true" >
                            C50
                        </div>
                        <div field="c51" headerAlign="center" allowSort="true" >
                            C51
                        </div>
                        <div field="c52" headerAlign="center" allowSort="true" >
                            C52
                        </div>
                        <div field="c53" headerAlign="center" allowSort="true" >
                            C53
                        </div>
                        <div field="c54" headerAlign="center" allowSort="true" >
                            C54
                        </div>
                        <div field="c55" headerAlign="center" allowSort="true" >
                            C55
                        </div>
                        <div field="c56" headerAlign="center" allowSort="true" >
                            C56
                        </div>
                        <div field="c57" headerAlign="center" allowSort="true" >
                            C57
                        </div>
                        <div field="c58" headerAlign="center" allowSort="true" >
                            C58
                        </div>
                        <div field="c59" headerAlign="center" allowSort="true" >
                            C59
                        </div>
                        <div field="c60" headerAlign="enter" allowSort="true" >
                            C60
                        </div>
                        <div field="t_name" id="t_name" name="t_name" headerAlign="center" visible="false"  allowSort="true" >
                            t_name
                        </div>
                          <div field="isdelete" id="isdelete" name="isdelete" headerAlign="center" visible="false"  allowSort="true" >
                            isdelete
                        </div>
                      
                    </div>
                </div>
            </div>
          <div property="footer" align="center">
            <a class="nui-button btn btn-default btn-xs" onclick="setDel()">
               <i class="fa fa-reply"></i>恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="remove()">
                <i class="fa fa-remove"></i>彻底删除
            </a>
        </div>
        <script type="text/javascript">
            nui.parse();
            
            var grid = nui.get("datagrid1");
  var jdid= getCookie('jdid');
            nui.get('con_jdid').setValue(jdid);
             var jzid= getCookie('jzid');
            nui.get('con_jzid').setValue(jzid);
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
                //类型公共代码转换
			function gsRenderer(e) {
				return nui.getDictText("CGDRC", e.value);
			}
				function facRenderer(e) {
				
				
				return nui.getDictText("FAC", e.value);
			}
			       function JZRenderer(e){								
 	    		var val = "";
 	    		var jzval = e.value;
 	    		if(jzval != null && jzval != ""){
 	    		var jzid = jzval.split(",");
 	    		
     	    		for(var i = 0 ; i < jzid.length ; i++){
		     	    	nui.ajax({
			                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznameByid.biz.ext",
			                type: 'POST',
			                async: false,
			                data:"{jzid:'" + jzid[i] + "'}",
			                success: function (text) {
			                	val +=  text.jzname + (i == jzid.length -1 ? "" : ",");
			                }
			            });	
			            
			        }	
		        }				
			return val;
		}
		     function JDRenderer(e){	
		     							
 	    		var val = "";
 	    		var jdval = e.value;
 	    		if(jdval != null && jdval != ""){
 	    		var jdid = jdval.split(",");
 	    		
     	    		for(var i = 0 ; i < jdid.length ; i++){
		     	    	nui.ajax({
			                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJdnameByid.biz.ext",
			                type: 'POST',
			                async: false,
			                data:"{jdid:'" + jdid[i] + "'}",
			                success: function (text) {
			                	val +=  text.jdname + (i == jdid.length -1 ? "" : ",");
			                }
			            });	
			            
			        }	
		        }				
			return val;
		}
           //恢复
function setDel(){
                 
                        var rows = grid.getSelecteds();
                         
                        if(rows.length > 0){
                            nui.confirm("确定恢复选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                     
                   var json = nui.encode({entitys:rows});
                
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.luoji.biz.ext",
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
            

                    //删除
                 function remove(){
                 
                        var rows = grid.getSelecteds();
                        	
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({entitys:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.shanchu.biz.ext",
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
                                   
                                    }else{
                                       
                                    }
                                }
                                
                               </script>
                        </body>
                    </html>
