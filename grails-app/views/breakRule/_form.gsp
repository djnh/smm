<%@page import="com.xinnuo.smm.BreakRuleType"%>
<%@ page import="com.xinnuo.smm.BreakRule" %>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: breakRuleInstance, field: 'type', 'error')} required">
			<span class="input-group-addon">
				<g:message code="breakRule.type.label" default="Type" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="type" name="type.id" from="${com.xinnuo.smm.BreakRuleType.list()}" optionKey="id" optionValue="name" required="" value="${breakRuleInstance?.type?.id}" class="many-to-one" class="form-control" onchange="${remoteFunction(controller:'BreakRuleGrade',action:'listByType', params:'\'id=\'+this.value', update:'grade')}" />

		</div>
	</div>


	<div class="form-group">
		<div class="input-group ${hasErrors(bean: breakRuleInstance, field: 'grade', 'error')} required">
			<span class="input-group-addon">
				<g:message code="breakRule.grade.label" default="Grade" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="grade" name="grade.id" from="${com.xinnuo.smm.BreakRuleGrade.findAllByBreakRuleType(breakRuleInstance?.type?.id!=null ? com.xinnuo.smm.BreakRuleType.get(breakRuleInstance?.type?.id):BreakRuleType.first())}" optionKey="id" optionValue="name" required="" value="${breakRuleInstance?.grade?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: breakRuleInstance, field: 'addPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="breakRule.addPoints.label" default="Add Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="addPoints" type="number" value="${breakRuleInstance.addPoints}" required="" class="form-control"/>

		</div>
	</div>

