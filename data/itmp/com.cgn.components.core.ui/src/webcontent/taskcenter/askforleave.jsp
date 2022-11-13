<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ taglib uri="http://eos.primeton.com/tags/logic" prefix="l"%>

<div class="table-layout">
	<div style="overflow:hidden;">
		<div class="lt-input">
			<div class="form-group">
				<label for="reason"><b:message key='askforleave.reason' /></label>
				<input name="reason" class="nui-textbox" required="true"	width="100%" value="${reason}" maxLength="160"  errorMode="cgn" requiredErrorText='<b:message key="askforleave.reason.errorText"/>'/>
			</div>
			<div class="form-group">
				<label for="startTime">开始时间</label>
				<input id="startTime" name="startTime" class="nui-datepicker" ondrawdate="ondrawdateStart" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd HH:mm" required="true" width="100%" value="${startTime}"/>
			</div>
		</div>
		<div class="rt-input">
			<div class="form-group">
				<label for="type"><b:message key='askforleave.type' /></label>
				<input name="type" class="nui-combobox" required="true" width="100%" value="${type}" 
					data="[{id:0,text:'事假'},{id:1,text:'病假'},{id:2,text:'产假'},{id:3,text:'出差'}]"
					maxLength="160"  errorMode="cgn" requiredErrorText='<b:message key="askforleave.type.errorText"/>'/>
			</div>
			<div class="form-group">
				<label for="endTime">结束时间</label>
				<input id="endTime" name="endTime" class="nui-datepicker" ondrawdate="ondrawdateEnd" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd HH:mm" required="true" width="100%" value="${endTime}"/>
			</div>
		</div>
		<%-- <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label><b:message key='hsearch.start-time-from'/></label>
                    <!--<input type="text" class="nui-datepicker" name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" showTime="true" timeFormat="H:mm:ss" format="yyyy-MM-dd HH:mm:ss" labelField="true" label="" allowInput="false">-->
					<input id="startTime" class="nui-datepicker" ondrawdate="ondrawdateStart"  name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd"/>                             
				</div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label><b:message key='hsearch.start-time-to'/></label>
                    <!--<input class="nui-datepicker" name="processStartTime:<" showClose="true" oncloseclick="this.setValue(null);" showTime="true" timeFormat="H:mm:ss" format="yyyy-MM-dd HH:mm:ss" labelField="true" label="" allowInput="false">-->
					<input id="endTime" class="nui-datepicker" ondrawdate="ondrawdateEnd"  name="processStartTime:<" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd"/>
                </div>
            </div> --%>
		<%-- <div class="mid-input">
			<div class="form-group">
				<label for="isHighQuality">是否精品</label>
				<input name="isHighQuality" class="nui-combobox" required="true" width="30%" value="${isHighQuality}"
				onvaluechanged="onValueChanged" data="[{id:0,text:'精品'},{id:1,text:'非精品'}]" requiredErrorText='请设置是否为精品'/>
			</div>
		</div> --%>
	</div>
</div>
<script type="text/javascript">
	/*日期控件按钮响应*/
	function ondrawdateStart(e){
		//
		/* var date=e.date;
		var d=nui.get("#endTime").getValue();
		if(d)d=new Date(d.replace(/-/g,"/")); */
		/* if(date && d && date.getTime()>d.getTime()){
			e.allowSelect=false;
		} */
	}
	
	function ondrawdateEnd(e){
		//
		/* var date=e.date;
		var d=nui.get("#startTime").getValue();
		if(d)d=new Date(d.replace(/-/g,"/")); */
		/* if(date && d && date.getTime()<d.getTime()){
			e.allowSelect=false;
		} */
	}
</script>
<%-- <l:equal property="status" targetValue="0">
				<div class="form-group">
					<label for="next1"><b:message key='next1' /></label>
					<input class="nui-npersonpicker form-control"  rootUrl="<%=request.getContextPath()%>"  name="next1" textName="next1" width="100%" multi="true" required="true" allowInput="false"/>
				</div>
				<div class="form-group">
					<label for="next2"><b:message key='next2' /></label>
					<input class="nui-npersonpicker form-control"  rootUrl="<%=request.getContextPath()%>"  name="next2" textName="next2" width="100%" multi="true" required="true"  allowInput="false"/>
				</div>
			</l:equal> --%>