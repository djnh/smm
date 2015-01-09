<%@ page import="com.xinnuo.smm.SystemUser" %>



<div class="form-group ${hasErrors(bean: systemUserInstance, field: 'loginName', 'error')} required">
	<label for="loginName">
		<g:message code="systemUser.loginName.label" default="Login Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loginName" placeholder="${message(code:'systemUser.loginName.label', default:'Login Name')}" maxlength="50" required="" value="${systemUserInstance?.loginName}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: systemUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="systemUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" placeholder="${message(code:'systemUser.password.label', default:'Password')}" maxlength="50" required="" value="${systemUserInstance?.password}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: systemUserInstance, field: 'databaselogs', 'error')} ">
	<label for="databaselogs">
		<g:message code="systemUser.databaselogs.label" default="Databaselogs" />
		
	</label>
	<g:select name="databaselogs" from="${com.xinnuo.smm.DatabaseLog.list()}" multiple="multiple" optionKey="id" size="5" value="${systemUserInstance?.databaselogs*.id}" class="many-to-many"/>

</div>

<div class="form-group ${hasErrors(bean: systemUserInstance, field: 'sportsMeeting', 'error')} required">
	<label for="sportsMeeting">
		<g:message code="systemUser.sportsMeeting.label" default="Sports Meeting" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sportsMeeting" name="sportsMeeting.id" from="${com.xinnuo.smm.SportsMeeting.list()}" optionKey="id" required="" value="${systemUserInstance?.sportsMeeting?.id}" class="many-to-one"/>

</div>

<div class="form-group ${hasErrors(bean: systemUserInstance, field: 'systemRole', 'error')} required">
	<label for="systemRole">
		<g:message code="systemUser.systemRole.label" default="System Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="systemRole" name="systemRole.id" from="${com.xinnuo.smm.SystemRole.list()}" optionKey="id" optionValue="name" required="" value="${systemUserInstance?.systemRole?.id}" class="many-to-one"/>

</div>

