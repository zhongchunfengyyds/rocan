<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): wurui
  - Date: 2017-07-17 18:33:25
  - Description:
-->
<head>
<%@include file="/coframe/tools/skins/common.jsp" %>
</head>
<body style="overflow:auto">
	<div id="form1" class="nui-fit" style="padding-top:30px;padding-buttom:30px;">
    	<table style="width:100%;table-layout:fixed;" class="nui-form-table">
      		<tr>
      			<td colspan="2" align="right">
      				<label for="">本次导入数据总数为：&nbsp;</label>
        		</td>
        		<td colspan="2" >
          			<input class="nui-textbox" id="total" name="total" width="100%" align="left" style="color:red">  
        		</td>
        		<td colspan="1" >
        		</td>
      		</tr>
      		<tr>
        		<td colspan="2" align="right">
      				<label for="">更新数据量为:&nbsp;</label>
        		</td>
        		<td colspan="2" >
          			<input class="nui-textbox" id="snum" name="snum" width="100%" align="left">
        		</td>
        		<td colspan="1" align="center">
        			<a style="color:blue;" id="sucslog" onclick="seeSucsLog();">&nbsp;&nbsp;成功日志&nbsp;&nbsp;</a>
        		</td>
      		</tr>
      		<tr>
        		<td colspan="2" align="right">
      				<label for="">失败数据量为:&nbsp;</label>
        		</td>
        		<td colspan="2" >
          			<input class="nui-textbox" id="fnum" name="fnum" width="100%" align="left">
        		</td>
        		<td colspan="1" align="center">
        			<a style="color:red" id="faillog" onclick="seeFailLog();">&nbsp;&nbsp;错误日志&nbsp;&nbsp;</a>
        		</td>
      		</tr>
      		<tr>
        		<td colspan="5" >
        		</td>
      		</tr>
    	</table>
    	<div class="nui-toolbar" style="padding:0px;margin-buttom:5px;" borderStyle="border:0;">
    	<table width="100%">
      	<tr>
        	<td style="text-align:center;">
	          	<a class="nui-button" id="cancel" onclick="onCancel">关闭</a>
	          	<%--<a class="nui-button" id="cancel" onclick="download">下载反馈结果</a>--%>
        	</td>
      	</tr>
    	</table>
 	</div>
	</div>
	
</body>
<script type="text/javascript">
    nui.parse();
   // var failData,sucsData;
   var importid;
    var form = new nui.Form("#form1");
    function setData(data){
		if(!data)return;
			//failData=data.failData;
			//sucsData=data.sucsData;
			importid=data.importid;
			form.setData(data);
			formReadOnly();//只读属性设置
    }
    	
    function seeSucsLog(){//成功日志
    	if(importid!=""&&importid!=null){
    		var sucslog =nui.open({showMaxButton : true,
	        	url:"<%=request.getContextPath() %>/archives/sucsLog.jsp",
	          	title:'档案导入成功结果反馈',
	          	width:700,
	          	height:250,
	          	onload:function(){
	          	   var iframe = this.getIFrameEl();
                   var data={"importid":importid};
                   iframe.contentWindow.setData(data);
	          	},
	          	ondestroy:function(action){
	          	}
	    	});
	    	sucslog.max();
    	}else{
    		nui.alert("日志为空！","系统提示");
    	}
    }
    function seeFailLog(){//失败日志
    	if(importid!=""&&importid!=null){
    		var sucslog =nui.open({showMaxButton : true,
	        	url:"<%=request.getContextPath() %>/archives/failLog.jsp",
	          	title:'档案导入失败结果反馈',
	          	width:700,
	          	height:250,
	          	onload:function(){
	          	   var iframe = this.getIFrameEl();
                   var data={"importid":importid};
                   iframe.contentWindow.setData(data);
	          	},
	          	ondestroy:function(action){
	          	}
	    	});
	    	sucslog.max();
    	}else{
    		nui.alert("日志为空！","系统提示");
    	}
    }
    
    function saveData(){  
      	form.validate();
      	if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
      	var data = form.getData(false,true);
      	var json = nui.encode(data);
      	$.ajax({
      		url:"com.oa.archives.archive.saveAlredyArchive.biz.ext",
        	type:'POST',
	        data:json,
	        cache:false,
	        contentType:'text/json',
	        success:function(text){
	            //var returnJson = nui.decode(text);
				if(text.retCode == 1){
					nui.alert("保存成功!","系统提示");
						setTimeout(function(){
						  CloseWindow("saveSuccess");
						},1000);
				}else{
					nui.alert("保存失败！", "系统提示", function(action){
						if(action == "ok" || action == "close"){
							//CloseWindow("saveFailed");
						}
					});
				}
        	}
      	});
     }
    
	   //页面制度样式设置
	  function formReadOnly(){
    	var fields = form.getFields();                
        for (var i = 0, l = fields.length; i < l; i++) {
        	var c = fields[i];
            if (c.setReadOnly) c.setReadOnly(true);     //只读
            if (c.setIsValid) c.setIsValid(true);      //去除错误提示
            if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
         }
      }
      
     	 //取消
        function onCancel() {
        	CloseWindow("cancel");
        }
        
        //关闭窗口
        function CloseWindow(action) {
        	if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
            else window.close();
        }
        
        function download(){
        	alert("怎么个下载法,待确认!");
        }
        
</script>
</html>