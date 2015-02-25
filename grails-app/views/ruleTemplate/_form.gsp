<%@ page import="com.xinnuo.smm.RuleTemplate" %>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'firstPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.firstPoints.label" default="First Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="firstPoints" type="number" value="${ruleTemplateInstance.firstPoints}" required="" class="form-control"/>

		</div>
	</div>
	
	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'secondPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.secondPoints.label" default="Second Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="secondPoints" type="number" value="${ruleTemplateInstance.secondPoints}" required="" class="form-control"/>

		</div>
	</div>
	
	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'thirdPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.thirdPoints.label" default="Third Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="thirdPoints" type="number" value="${ruleTemplateInstance.thirdPoints}" required="" class="form-control"/>

		</div>
	</div>
	
	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'fourthPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.fourthPoints.label" default="Fourth Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="fourthPoints" type="number" value="${ruleTemplateInstance.fourthPoints}" required="" class="form-control"/>

		</div>
	</div>
	
	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'fifthPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.fifthPoints.label" default="Fifth Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="fifthPoints" type="number" value="${ruleTemplateInstance.fifthPoints}" required="" class="form-control"/>

		</div>
	</div>
	
	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'sixthPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.sixthPoints.label" default="Sixth Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="sixthPoints" type="number" value="${ruleTemplateInstance.sixthPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'seventhPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.seventhPoints.label" default="Seventh Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="seventhPoints" type="number" value="${ruleTemplateInstance.seventhPoints}" required="" class="form-control"/>

		</div>
	</div>
	
	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'eighthPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.eighthPoints.label" default="Eighth Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="eighthPoints" type="number" value="${ruleTemplateInstance.eighthPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: ruleTemplateInstance, field: 'allRoundPointsTimes', 'error')} required">
			<span class="input-group-addon">
				<g:message code="ruleTemplate.allRoundPointsTimes.label" default="All Round Points Times" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="allRoundPointsTimes" placeholder="整数，0表示翻倍" type="number" value="${ruleTemplateInstance.allRoundPointsTimes}" required="" class="form-control"/>

		</div>
	</div>

