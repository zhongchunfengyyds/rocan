<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ taglib uri="http://eos.primeton.com/tags/logic" prefix="l"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>

<ul class="activitys">
<l:iterate id="activity" property="participants/WFActivityParticipants">
	<li class="activity">
		<ul class="candidates">
			<li>
				<b:write iterateId="activity" property="activityName"/>
			</li>
			<l:empty iterateId="activity" property="participants/WFParticipant">
				<li class="icon icon-user">[<b:write property="userObject/userId" scope="session"/>]<b:write property="userObject/userRealName" scope="session"/></li>
			</l:empty>
			<l:notEmpty iterateId="activity" property="participants/WFParticipant">
				<l:iterate id="user"  iterateId="activity" property="participants/WFParticipant">
					<li class="icon icon-user">[<b:write iterateId="user" property="id"/>]<b:write iterateId="user" property="name"/></li>
				</l:iterate>
			</l:notEmpty>
		</ul>
	</li>
</l:iterate>
</ul>