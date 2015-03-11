<%@ page import="com.xinnuo.smm.Athlete" %>



	<div class="form-group">
		<div class="input-group ${hasErrors(bean: athleteInstance, field: 'org', 'error')} required">
			<span class="input-group-addon">
				<g:message code="athlete.org.label" default="Org" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="org" name="org.id" from="${com.xinnuo.smm.Org.list()}" optionKey="id" optionValue="name" required="" value="${athleteInstance?.org?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: athleteInstance, field: 'name', 'error')} required">
			<span class="input-group-addon">
				<g:message code="athlete.name.label" default="Name" />
				<span class="required-indicator">*</span>
			</span>
			<g:textField name="name" placeholder="${message(code:'athlete.name.label', default:'Name')}" maxlength="50" required="" value="${athleteInstance?.name}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: athleteInstance, field: 'sex', 'error')} required">
			<span class="input-group-addon">
				<g:message code="athlete.sex.label" default="Sex" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="sex" name="sex.id" from="${com.xinnuo.smm.GroupSex.list()}" optionKey="id" optionValue="name" required="" value="${athleteInstance?.sex?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: athleteInstance, field: 'number', 'error')} ">
			<span class="input-group-addon">
				<g:message code="athlete.number.label" default="Number" />
				
			</span>
			<g:textField name="number" placeholder="${message(code:'athlete.number.label', default:'Number')}" maxlength="5" value="${athleteInstance?.number}" class="form-control"/>

		</div>
	</div>

