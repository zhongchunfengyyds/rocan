<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-10-08 17:28:46
  - Description:
-->
<head>
<title>升版提醒设置</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath() %>/common/nui/nui.js"
	type="text/javascript"> </script>
	 <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript">
	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
</head>
<body>
						<!-- <div class="form-group"> -->
							<div id="form1" class="nui-form display" align="center" style="height: 10%;border:1px solid #ccc;background-color:#edf7ff;">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.programManagement.Upgrade_Remind">
								<table>
									<tr>
										<td class="form_label ">程序编码：</td>
										<td colspan="1"><input class="nui-textbox"
											name="criteria/_expr[1]/cxbm" /> <input class="nui-hidden"
											name="criteria/_expr[1]/_op" value="like"> <input
											class="nui-hidden" name="criteria/_expr[1]/_likeRule"
											value="all"></td>
										<td class="form_label ">状态：</td>
										<td colspan="1"><input class="nui-textbox"
											name="criteria/_expr[2]/status" /> <input class="nui-hidden"
											name="criteria/_expr[2]/_op" value="like"> <input
											class="nui-hidden" name="criteria/_expr[2]/_likeRule"
											value="all"></td>
									    <td class="form_label ">下次升版日期</td>
										<td colspan="1"><input class="nui-textbox"
											name="criteria/_expr[3]/xcsbrq" /> <input class="nui-hidden"
											name="criteria/_expr[3]/_op" value="like"> <input
											class="nui-hidden" name="criteria/_expr[3]/_likeRule"
											value="all"></td>
										<td class="col-sm-8">
											<div class="form-group text-right">
												<a class="nui-button btn btn-default btn-xs"
													onclick="search()"> <span class="fa fa-search"></span>查询
												</a> <a class="nui-button btn btn-default btn-xs"
													onclick="reset()"> <span class="fa fa-rotate-left"></span>重置
												</a>

											</div>
										</td>
									</tr>

								</table>
							</div>


			<div id="datagrid1" class="nui-datagrid" dataField="Upgrade_Remind"
				style="width: 100%; height: 310px;" url="com.cgn.itmp.outlineandplan.base.ProgramManagement.QueryUPgradeRemind.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"  allowSortColumn="true"  sortMode="client">
				<div property="columns">
					
					<div type="checkcolumn"></div>
					<div field="uuid" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true" visible="false">
						<input property="editor" class="nui-textbox" style="width: 100%;" />
					</div>	
					
						<div field="cxbm"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						程序编码 <input property="editor" id="cxbm" class="nui-textbox"
							name="Upgrade_Remind.cxbm"  style="width: 100%;" />
					</div>
					<div field="name" style="width: 100%;"
						headerAlign="center" allowSort="true">
						名称 <input property="editor" id="name" class="nui-textbox"
							name="Upgrade_Remind.name" required="true"
							requiredErrorText="名称不能为空" style="width: 100%;" />
					</div>
					<div field="lx" renderer="lxRenderer" 
						style="width: 100%;" headerAlign="center" allowSort="true">
						类型 <input property="editor" id="lx" class="nui-dictcombobox"
							name="Upgrade_Remind.lx" style="width: 100%;" dictTypeId="CXLX"
							dataField="cxlx" required="true" requiredErrorText="类型不能为空" />
					</div>
					<div field="jm"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						简码 <input property="editor" id="jm" class="nui-textbox"
							required="true" requiredErrorText="简码不能为空" style="width: 100%;"
							name="Upgrade_Remind.jm" />
					</div>
				
					<div field="bbh"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						版本号 <input property="editor" id="bbh" class="nui-textbox"
							 name="Upgrade_Remind.bbh"
							style="width: 100%;" />
					</div>
					<div field="status" headerAlign="center" allowSort="true">
						状态 <input property="editor" class="nui-textbox" value=""
							name="Upgrade_Remind.status" style="width: 100%;" />
					</div>
					<div field="sxrq" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true"
						dateFormat="yyyy-MM-dd">
						生效日期<input  property="editor" class="nui-datepicker"  style="width:100%;" onvaluechanged="getxcsbsj" />
					</div>
					<div field="xcsbsj"  style="width: 100%;" headerAlign="center" allowSort="true" renderer="sxrqRenderer" dateFormat="yyyy-MM-dd">
						下次升版日期 <input  property="editor"  class="nui-datepicker"  style="width:100%;"/>

					</div>
					<!-- <div field="zrr" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true">
						责任人 <input property="editor" class="nui-textbox zrr"
							name="tcgndgglcxgl.zrr" enabled=false style="width: 100%;" />
					</div> -->
					<div field="bxdw"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						编写单位 <input property="editor" name="Upgrade_Remind.bxdw"
							class="nui-textbox" style="width: 100%;" />
					</div>
					<div field="fj"  style="width: 100%;" renderer="setFile"
						headerAlign="center" allowSort="true">
						附件 <input property="editor" id="fj"
							class="nui-fileupload  nui-form-input" name="uploadFile"
							limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
							onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
							style="width: 100%;" />
					</div>
					</div>
				</div>
 <div class="nui-panel"  style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
 <div id="form2" class="nui-form" align="center" style="height:100%">
		<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;" name="ITMP_btn">
			<table style="width: 100%;">

				<tr>
				<td>
					<a  class="nui-button btn btn-default btn-xs btn-submit" onclick="add()" type="button" >
					添加
					</a>
					<a  class="nui-button btn btn-default btn-xs btn-submit" onclick="del()"  type="button" >
 					删除
					</a>
						<a  class="nui-button btn btn-default btn-xs btn-submit" onclick="empty()" type="button" >
 					清空
					</a>
				</td>
				    <td class="form_label ">升版提醒日期</td>
			<td colspan="1"><input class="nui-datepicker" name="txdate" id="txdate"  allowInput="false" ondrawdate="onDrawDate" showClose="true" oncloseclick="this.setValue(null);" />
					<td class="form_label ">持续提醒</td>
				<td colspan="1"><input class="nui-textbox" name="txday" id="txday"/>天 
						<td class="form_label ">选择提醒人员</td>
				<td colspan="1"> <input id="txr" class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" name="txr" textName="txr"/>    
			<td class="col-sm-8">
						<div class="form-group text-right">
						<a class="nui-button btn btn-default btn-xs btn-submit"
					 type="button"	onclick="Preservation()"> <span class="fa fa-search"></span>保存
						</a> <a class="nui-button btn btn-default btn-xs btn-submit"
					 type="button"	onclick="reset()"> <span class="fa fa-rotate-left"></span>关闭
						</a>
                </div>
										</td>
				</tr>
			</table>

		</div>
</div>
</div>
					<div id="datagrid2" class="nui-datagrid" dataField="Upgrade_Remind"
				style="width: 100%; height: 310px;"
				pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"  allowSortColumn="true"  sortMode="client">
				<div property="columns">
					<div type="checkcolumn" id='"checkcolumn"'></div>
					<div field="uuid" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true" visible="false">
						<input property="editor" class="nui-textbox" style="width: 100%;" />
					</div>	
					
						<div field="cxbm"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						程序编码 <input property="editor" id="cxbm" class="nui-textbox"
							name="Upgrade_Remind.cxbm"  style="width: 100%;" />
					</div>
					<div field="name" style="width: 100%;"
						headerAlign="center" allowSort="true">
						名称 <input property="editor" id="name" class="nui-textbox"
							name="Upgrade_Remind.name" required="true"
							requiredErrorText="名称不能为空" style="width: 100%;" />
					</div>
					<div field="lx" renderer="lxRenderer" 
						style="width: 100%;" headerAlign="center" allowSort="true">
						类型 <input property="editor" id="lx" class="nui-dictcombobox"
							name="Upgrade_Remind.lx" style="width: 100%;" dictTypeId="CXLX"
							dataField="cxlx" required="true" requiredErrorText="类型不能为空" />
					</div>
					<div field="jm"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						简码 <input property="editor" id="jm" class="nui-textbox"
							required="true" requiredErrorText="简码不能为空" style="width: 100%;"
							name="Upgrade_Remind.jm" />
					</div>
				
					<div field="bbh"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						版本号 <input property="editor" id="bbh" class="nui-textbox"
							 name="Upgrade_Remind.bbh"
							style="width: 100%;" />
					</div>
					<div field="status" headerAlign="center" allowSort="true">
						状态 <input property="editor" class="nui-textbox" value=""
							name="Upgrade_Remind.status" style="width: 100%;" />
					</div>
					<div field="sxrq" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true"
						dateFormat="yyyy-MM-dd">
						生效日期<input  property="editor" class="nui-datepicker"  style="width:100%;" onvaluechanged="getxcsbsj" />
							

					</div>
					<div field="xcsbsj"  style="width: 100%;" headerAlign="center" allowSort="true" renderer="sxrqRenderer" dateFormat="yyyy-MM-dd">
						下次升版日期 

					</div>
				
					<div field="bxdw"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						编写单位 
					</div>
					<div field="fj"  style="width: 100%;" renderer="setFile"
						headerAlign="center" allowSort="true">
						附件
					</div>
					</div>
				</div>
					

	<script type="text/javascript">
    	nui.parse();
    		
    	var grid = nui.get("datagrid1");
    	var grid2=  nui.get("datagrid2");
    	var formData = new nui.Form("#form1").getData(false,false);
    	var form  = new nui.Form("#form2").getData(false, false);
        grid.load(formData);
        
        function search(){
        		
    	var formData = new nui.Form("#form1").getData(false,false);
        grid.load(formData);
        
        }
        function onKeyEnter(e) {
            search();
          }
        //关闭窗口
        function reset(){
            window.CloseOwnerWindow("cancel");
        }
        //添加一行
        function add(){
        var rows = grid.getSelecteds();
          if(rows.length>0){
       /*  var id = [];
        var id2 =[];
        var row = [];
        if(rows.length>0){
      	var data2 = grid2.data;
         for  (var index in rows){
			id.push(rows[index]["jm"]);         
         }
         if(data2.length>0){
         
         for (var i= 0; i<data2.length;i++){
			 if(id.indexOf(data2[i]["jm"])==1){
			 id2.push(data2[i]["jm"]);
			 }         
         }
         }
         if(id2.length>0){
			for (var a=0 ; a<rows.length;a++){
			if(id2.indexOf(rows[a]["jm"])==-1){
			row.push(rows[a]);
			  grid2.addRows(row);
			}
			}	         
         
         }else{
           grid2.addRows(rows);
           } */
        
        grid2.addRows(rows);
        
        }else{
        alert("请选择");
        }
        }
        //清空
        function empty() {
        		var data=grid2.getData();
				grid2.removeRows(data,true);
				grid.load(formData);
        } 
        function del(){
		 var rows = grid2.getSelecteds();        
           grid2.removeRows(rows,true);
        }
        function Preservation(){
         var form  = new nui.Form("#form2").getData(false, false);
		//升版提醒日期	     
		if(form["txdate"]==""){
				nui.alert("请输入提醒天数");
		} 
		//提醒天数
      else 	if(form["txday"]==""){
       	nui.alert("请选择提醒日期");
       	}
       	//提醒人(暂时)
        else if(form["txr"]==""){
       	nui.alert("请选择人员");
       	}else{
       var rows =   grid2.getSelecteds();
         var  xinz = [];
         if(rows.length>0){
        for (var i=0 ;i<rows.length;i++){
       
        xinz.push({
         uuId : rows[i]["uuid"],
     	txdate : 	form["txdate"],
         txday : form["txday"],
         txr : form["txr"],
         txname : rows[i]["name"]+"升版提醒"
        });
     	/*  form["txday"] 
     	
     	
     	txdate : 	form["txdate"],
         txday : form["txday"],
         txr : form["txr"],
         txname : form["name"]+'升版提醒'
      xinz.uuid = rows[i]["uuid"];
        xinz.txdate=form["txdate"];
       	xinz.txday = form["txday"];
       	xinz.txr = form["txr"];
       	xinz.txname = "ceshi"; */
       	
       	
       	
       }
       
     /*   	xinz.txdate=form["txdate"];
       	xinz.txday = form["txday"];
       	xinz.txr = form["txr"];
       	xinz.txname = "ceshi";
       	xinz.uuid = s; */
       	var json =  nui.encode({TCgnDgglSbtx:xinz});
       	$.ajax({
          url:"com.cgn.itmp.outlineandplan.base.ProgramManagement.AddRemind.biz.ext",
       	  type:'POST',
	      data:json,
	      cache:false,
	      contentType:'text/json',
	      success:function(text){
	       nui.alert("添加成功", "系统提示", function(action){
	      	 var d =nui.get("txdate");
	      	d.setText("");
	      	 var a =nui.get("txday");
	      	a.setValue("");
	      	 var x =nui.get("txr");
	      	x.setText("");
	       });
	     }
       	});
        }else{
       
       nui.alert("请选择数据");
       }
        }
        }
        
        
        
			    function onDrawDate(e) {
            var date = e.date;
            var d = new Date();

            if (date.getTime() < d.getTime()) {
                e.allowSelect = false;
            }
        }
    </script>
</body>
</html>