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
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.ContainerInfomationAll">
                <!-- 排序字段 -->
                 <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="updtime">
				 <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">  
               <table id="table1" class="table" style="height:100%">
                    <tr> 
                        <td colspan="1">
                            <input class="nui-hidden" name="criteria/_expr[1]/isdelete" value="1"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                             <input class="nui-hidden" id="con_jdid" name="criteria/_expr[2]/jdid" /> 
					           <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> 
					           <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
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
                        <div field="jdid" headerAlign="center" allowSort="true" visible="false">
                            	基地id
                        </div>
                        <div field="jzname" headerAlign="center" allowSort="true" >
                            	机组
                        </div>                      
                        <div field="baseGnwz" headerAlign="center" allowSort="true" >
                            	功能位置
                        </div>
                        <div field="baseXt" headerAlign="center" allowSort="true" >
                            	系统
                        </div>
                        <div field="baseMc" headerAlign="center" allowSort="true" >
                           		名称
                        </div>
                        <div field="wjxxEomr" headerAlign="center" allowSort="true" visible="false">
                            	EOMR
                        </div>
                        <div field="wjxxSbjgt" headerAlign="center" allowSort="true" visible="false">
                           		设备竣工图
                        </div>
                        <div field="wjxxNbbm" headerAlign="center" allowSort="true" visible="false">
                           		 内部编码
                        </div>
                        <div field="wjxxSdm" headerAlign="center" allowSort="true" visible="false">
                            	SDM
                        </div>
                        <div field="wjxxEomm" headerAlign="center" allowSort="true" visible="false">
                            	EOMM
                        </div>
                        <div field="wjxxLct" headerAlign="center" allowSort="true" visible="false">
                            	流程图
                        </div>
                        <div field="wjxxJsgfs" headerAlign="center" allowSort="true" visible="false">
                            	设备技术规范号
                        </div>
                        <div field="zzcsSysyym" headerAlign="center" allowSort="true" visible="false">
                            	水压试验页码
                        </div>
                        <div field="zzcsJyrq" headerAlign="center" allowSort="true" visible="false">
                            	检验日期（水压）
                        </div>
                        <div field="zzcsSjyl" headerAlign="center" allowSort="true" visible="false">
                             	设计压力(bar)(表压)
                        </div>
                        <div field="zzcsYxyl" headerAlign="center" allowSort="true" visible="false">
                            LOCA运行压力(bar)(表压)
                        </div>
                        <div field="zzcsSjwd" headerAlign="center" allowSort="true" visible="false">
                            	设计温度(℃)
                        </div>
                        <div field="zzcsYxwd" headerAlign="center" allowSort="true" visible="false">
                            	LOCA运行温度(℃)
                        </div>
                        <div field="zzcsZdgzyl" headerAlign="center" allowSort="true" visible="false">
                            	最大工作压力
                        </div>
                        <div field="zzcsCcsyyl1" headerAlign="center" allowSort="true" visible="false">
                            	出厂试验压力(P1)(bar)(表压)
                        </div>
                        <div field="zzcsCcsyyl2" headerAlign="center" allowSort="true" visible="false">
                            	出厂试验压力(P2)(bar)(表压)
                        </div>
                        <div field="zzcsCcsyxs" headerAlign="center" allowSort="true" visible="false">
                            	出厂水压系数
                        </div>
                        <div field="zzcsZysyyl" headerAlign="center" allowSort="true" >
                            	在役试验压力(bar)(表压)
                        </div>
                        <div field="zzcsZysysy" headerAlign="center" allowSort="true" >
                          	 	在役水压系数
                        </div>
                        <div field="zzcsJz" headerAlign="center" allowSort="true" visible="false">
                           		 净重（kg）
                        </div>
                        <div field="zzcsMszl" headerAlign="center" allowSort="true" visible="false">
                           		 满水重量（kg）
                        </div>
                        <div field="zzcsKtwj" headerAlign="center" allowSort="true" visible="false">
                            	壳体外径(m)
                        </div>
              			 <div field="zzcsFsyl" headerAlign="center"align="center" allowSort="true" visible="false">
                                               	   腐蚀余量（mm）
                        </div>
                        <div field="zzcsZbdj" headerAlign="center" align="center" allowSort="true" visible="false">
                                                	  质保等级
                        </div>
              	          <div field="zzcsQjddj" headerAlign="center" align="center" allowSort="true" visible="false">
                                                  	 清洁度等级
                        </div>
                        <div field="zzcsAqdj" headerAlign="center" align="center" allowSort="true" visible="false">
                                                   	安全等级
                        </div>
                        <div field="zzcsZzjb" headerAlign="center" align="center" allowSort="true" visible="false">
                                                   	制造级别
                        </div>
                        <div field="zzcsZxbz" headerAlign="center" align="center" allowSort="true" visible="false">
                                                    	 执行标准
                        </div>
                        <div field="zzcsKtcz" headerAlign="center" align="center" allowSort="true" visible="false">
                                                   	  壳体材质
                        </div>
                        <div field="zzcsCrgcz" headerAlign="center" align="center" allowSort="true" visible="false">
                          	 传热管材质
                        </div>
                        <div field="zzcsRj" headerAlign="center" align="center" allowSort="true" visible="false">
                          	 容积（m³）
                        </div>
                        <div field="zzcsSjsm" headerAlign="center" align="center" allowSort="true" visible="false">
                   	                设计寿命
                        </div>
                        <div field="zzcsFj" headerAlign="center" align="center" allowSort="true" visible="false">
                           	 房间
                        </div>
                        <div field="syxxSyfm" headerAlign="center" align="center" allowSort="true" visible="false">
                                                    水源阀门
                        </div>
                        <div field="syxxQyfm" headerAlign="center" align="center" allowSort="true" visible="false">
                         	 气源阀门
                        </div>
                        <div field="syxxPqd" headerAlign="center" align="center" allowSort="true" visible="false">
                           	排气点
                        </div> 
                        <div field="syxxJsd" headerAlign="center" align="center" allowSort="true" visible="false">
                           	进水点
                        </div>
                        <div field="syxxDztxx" headerAlign="center" align="center" allowSort="true" visible="false">
                                                  等轴图信息
                        </div>
                        <div field="syxxSfhdp" headerAlign="center" align="center" allowSort="true" visible="false">
                                                  是否需更换垫片
                        </div>
                        <div field="syxxJglj" headerAlign="center" align="center" allowSort="true" visible="false">
                                                   紧固力矩
                        </div>
                        <div field="syxxSybg" headerAlign="center" align="center" allowSort="true" visible="false">
                           	 耐压试验报告
                        </div>
                        <div field="adduser" headerAlign="center" allowSort="true" visible="false">
                           	新增人
                        </div>
                        <div field="addtime" headerAlign="center" align="center" allowSort="true" visible="false">
                          	 新增日期
                        </div>
                        <div field="upduser" headerAlign="center" align="center" allowSort="true" >
                           	 删除人
                        </div>
                        <div field="updtime" headerAlign="center" align="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                           	 删除日期
                        </div>
                        <div field="isdelete" headerAlign="center" align="center" allowSort="true" visible="false">
                           	删除标识
                        </div>
                    </div>
                </div>
            </div>
         <div property="footer" align="center" style="margin-top:10px;">
            <a class="nui-button btn btn-default btn-xs" onclick="back()">
             恢复
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="remove()">
                彻底删除
            </a>
        </div>
        <style type="text/css">
        .mini-panel-viewport{
        height:300px;
        
        }
        
        </style>
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
                                    var json = nui.encode({tdxglsysyrqinfos:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.deleteTDxglSysyRqinfos.biz.ext",
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
                                    var json = nui.encode({tdxglsysyrqinfos:rows});
                                    grid.loading("正在恢复中,请稍等...");
                                    $.ajax({  
                                        url:"com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.hfdeleteTDxglSysyRqinfos.biz.ext",
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