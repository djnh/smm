<%@ page import="com.xinnuo.smm.DetailProperty" %>



	<div class="form-group">
		<div class="input-group ${hasErrors(bean: detailPropertyInstance, field: 'name', 'error')} required">
			<span class="input-group-addon">
				<g:message code="detailProperty.name.label" default="Name" />
				<span class="required-indicator">*</span>
			</span>
			<g:textField name="name" placeholder="${message(code:'detailProperty.name.label', default:'Name')}" maxlength="50" required="" value="${detailPropertyInstance?.name}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: detailPropertyInstance, field: 'content', 'error')} required">
			<span class="input-group-addon">
				<g:message code="detailProperty.content.label" default="Content" />
				<span class="required-indicator">*</span>
			</span>
			<g:textArea name="content" placeholder="${message(code:'detailProperty.content.label', default:'Content')}" required="" value="${detailPropertyInstance?.content}" class="form-control"/>

		</div>
	</div>


