<%@ page import="com.xinnuo.smm.SystemRole" %>



<div class="form-group ${hasErrors(bean: systemRoleInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="systemRole.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" placeholder="${message(code:'systemRole.name.label', default:'Name')}" maxlength="50" required="" value="${systemRoleInstance?.name}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: systemRoleInstance, field: 'privilege', 'error')} required">
	<label for="privilege">
		<g:message code="systemRole.privilege.label" default="Privilege" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="privilege" placeholder="${message(code:'systemRole.privilege.label', default:'Privilege')}" maxlength="5" required="" value="${systemRoleInstance?.privilege}" class="form-control"/>

</div>

