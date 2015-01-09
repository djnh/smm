<%@ page import="com.xinnuo.smm.Role" %>



<div class="form-group ${hasErrors(bean: roleInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="role.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" placeholder="${message(code:'role.name.label', default:'Name')}" required="" value="${roleInstance?.name}" class="form-control"/>

</div>

