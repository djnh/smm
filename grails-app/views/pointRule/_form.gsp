<%@ page import="com.xinnuo.smm.PointRule" %>



	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'lessThan', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.lessThan.label" default="Less Than" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="lessThan" type="number" value="${pointRuleInstance.lessThan}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'moreThan', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.moreThan.label" default="More Than" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="moreThan" type="number" value="${pointRuleInstance.moreThan}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'getCount', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.getCount.label" default="Get Count" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="getCount" type="number" value="${pointRuleInstance.getCount}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'firstPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.firstPoints.label" default="First Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="firstPoints" type="number" value="${pointRuleInstance.firstPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'secondPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.secondPoints.label" default="Second Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="secondPoints" type="number" value="${pointRuleInstance.secondPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'thirdPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.thirdPoints.label" default="Third Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="thirdPoints" type="number" value="${pointRuleInstance.thirdPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'fourthPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.fourthPoints.label" default="Fourth Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="fourthPoints" type="number" value="${pointRuleInstance.fourthPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'fifthPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.fifthPoints.label" default="Fifth Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="fifthPoints" type="number" value="${pointRuleInstance.fifthPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'sixthPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.sixthPoints.label" default="Sixth Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="sixthPoints" type="number" value="${pointRuleInstance.sixthPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'seventhPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.seventhPoints.label" default="Seventh Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="seventhPoints" type="number" value="${pointRuleInstance.seventhPoints}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: pointRuleInstance, field: 'eighthPoints', 'error')} required">
			<span class="input-group-addon">
				<g:message code="pointRule.eighthPoints.label" default="Eighth Points" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="eighthPoints" type="number" value="${pointRuleInstance.eighthPoints}" required="" class="form-control"/>

		</div>
	</div>
	
	
