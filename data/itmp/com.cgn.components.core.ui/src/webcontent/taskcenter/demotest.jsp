<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ include file="/coframe/tools/lang.jsp"%> --%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ taglib uri="http://eos.primeton.com/tags/logic" prefix="l"%>


<div class="table-layout">
	<div style="overflow:hidden;">
		
		<div class="lt-input">
			<div class="form-group">
				<label for="name"><b:message key='name' /></label>
				<input name="name" class="nui-textbox" required="true"	width="100%" value="${name}" maxLength="160"  errorMode="cgn" requiredErrorText='<b:message key="name.errorText"/>'/>
			</div>
			  
			<div class="form-group">
				<label for="phone"><b:message key='phone' /></label>
				<input name="phone" class="nui-textbox" required="true" width="100%" value="${phone}" maxLength="160"  errorMode="cgn" requiredErrorText='<b:message key="phone.errorText"/>'/>
			</div>
		</div>
		
		<div class="rt-input">
			<l:equal property="status" targetValue="0">
				<div class="form-group">
					<label for="next1"><b:message key='next1' /></label>
					<input class="nui-npersonpicker form-control"  rootUrl="<%=request.getContextPath()%>"  name="next1" textName="next1" width="100%" multi="true" required="true" allowInput="false"/>
				</div>
				<div class="form-group">
					<label for="next2"><b:message key='next2' /></label>
					<input class="nui-npersonpicker form-control"  rootUrl="<%=request.getContextPath()%>"  name="next2" textName="next2" width="100%" multi="true" required="true"  allowInput="false"/>
				</div>
			</l:equal>
		</div>
	</div>
</div>

<script type="text/javascript">
	/* function initBizView(processInstId) {
		if(!processInstId) {
			nui.get("#add").on("click", add);
		} else {
			nui.get("#grid").load({
				processInstId : processInstId
			});
		}
	} */

	/* function getArrayData() {
		return {
			test2s : nui.get("#grid").getChanges()
		};
	} */

</script>