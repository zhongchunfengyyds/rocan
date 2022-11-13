<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/coframe/tools/lang.jsp"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%
	String sta = request.getParameter("status");
%>
<div class="table-layout" style="margin-left:-10px">
	<div style="overflow:hidden;">
		<div class="rt-input">
			<div class="form-group">
			<!-- <input class="nui-hidden" name="isDraft"  id="mydraft"/> -->
				<label for="test1"><b:message key='test1' /></label>
				<input name="test1" class="nui-textbox" required="true"	width="100%" value="${test1}" maxLength="160"  errorMode="cgn" requiredErrorText='<b:message key="name.errorText"/>'/>
			</div>
			<div class="form-group">
				<label for="test4">申请金额</label>
				<input name="m" class="nui-spinner"  minValue="0" maxValue="100000" required="true"  width="100%" value="${m}" errorMode="cgn"/>
			</div>
		</div>
		
		<div class="rt-input">
			<div class="form-group">
			<label for="AAA">AAA</label>
			<% if(sta.equals("2")){ %>
				<input class="nui-orgpicker" width="100%" name="aaa" multi="false" textName="createWorkDepartName"  ></input>
				<% } else{%>
				<input name="aaa" width="100%" class="nui-textbox" ></input>
				<% } %>
			</div> 
			<div class="form-group">
			<label for="AAA">BBB</label>
			<% if(sta.equals("2")){ %>
				<input class="nui-personpicker" width="100%" id="bbb" name="bbb" multi="true"  />
				<% } else{%>
				<input name="bbb" class="nui-textbox" width="100%"  ></input>
				<% } %>
			</div>
		</div>
		
	</div>
</div>
<script type="text/javascript">
   nui.parse();
   (function(){
	    // nui.get("attach-panel").setBizKey('<b:write property="processInstId"/>');
	     nui.get("attach-panel").load('<b:write property="processInstId"/>');
	  //alert('<b:write property="actDefId"/>');
	   //alert('<b:write property="processCfg/processDefName" scope="f"/>');
	   //alert(nui.get("nextActivityDefName").url);
	  
   })();
  /* function myself(e){
	   alert(e.isDraft);
   } */
</script>