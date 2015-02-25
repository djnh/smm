<%@ page import="com.xinnuo.smm.SportsMeeting" %>
<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'pluralismMax', 'error')} required">
		<span class="input-group-addon">
			<g:message code="signUpRule.pluralismMax.label" default="Pluralism Max" />
			<span class="required-indicator">*</span>
		</span>
		<g:field name="pluralismMax" placeholder="0表示不限。必填" type="number" value="${sportsMeetingInstance.pluralismMax}" required="" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'singleItemMin', 'error')} required">
		<span class="input-group-addon">
			<g:message code="signUpRule.singleItemMin.label" default="Single Item Min" />
			<span class="required-indicator">*</span>
		</span>
		<g:field name="singleItemMin" placeholder="0表示不限。必填" type="number" value="${sportsMeetingInstance.singleItemMin}" required="" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'signUpRemark', 'error')} required">
		<span class="input-group-addon">
			<g:message code="signUpRule.signUpRemark.label" default="Sign Up Remark" />
		</span>
		<g:textField name="signUpRemark" value="${sportsMeetingInstance?.signUpRemark}" class="form-control"/>
	</div>
</div>
