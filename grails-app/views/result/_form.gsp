<%@ page import="com.xinnuo.smm.Result" %>



	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'signUpResult', 'error')} ">
			<span class="input-group-addon">
				<g:message code="result.signUpResult.label" default="Sign Up Result" />
				
			</span>
			<g:textField name="signUpResult" placeholder="${message(code:'result.signUpResult.label', default:'Sign Up Result')}" maxlength="50" value="${resultInstance?.signUpResult}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'result', 'error')} ">
			<span class="input-group-addon">
				<g:message code="result.result.label" default="Result" />
				
			</span>
			<g:textField name="result" placeholder="${message(code:'result.result.label', default:'Result')}" maxlength="50" value="${resultInstance?.result}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'remark', 'error')} ">
			<span class="input-group-addon">
				<g:message code="result.remark.label" default="Remark" />
				
			</span>
			<g:textField name="remark" placeholder="${message(code:'result.remark.label', default:'Remark')}" value="${resultInstance?.remark}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'points', 'error')} ">
			<span class="input-group-addon">
				<g:message code="result.points.label" default="Points" />
				
			</span>
			<g:field name="points"placeholder="${message(code: 'result.points.label', default: 'Points')}" value="${fieldValue(bean: resultInstance, field: 'points')}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'breakType', 'error')} ">
			<span class="input-group-addon">
				<g:message code="result.breakType.label" default="Break Type" />
				
			</span>
			<g:select id="breakType" name="breakType.id" from="${com.xinnuo.smm.BreakRuleType.list()}" optionKey="id" optionValue="name" value="${resultInstance?.breakType?.id}" class="many-to-one" noSelection="['null': '']" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'breakGrade', 'error')} ">
			<span class="input-group-addon">
				<g:message code="result.breakGrade.label" default="Break Grade" />
				
			</span>
			<g:select id="breakGrade" name="breakGrade.id" from="${com.xinnuo.smm.BreakRuleGrade.list()}" optionKey="id" optionValue="name" value="${resultInstance?.breakGrade?.id}" class="many-to-one" noSelection="['null': '']" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'athlete', 'error')} required">
			<span class="input-group-addon">
				<g:message code="result.athlete.label" default="Athlete" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="athlete" name="athlete.id" from="${com.xinnuo.smm.Athlete.list()}" optionKey="id" optionValue="name" required="" value="${resultInstance?.athlete?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'checkIn', 'error')} required">
			<span class="input-group-addon">
				<g:message code="result.checkIn.label" default="Check In" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="checkIn"placeholder="${message(code: 'result.checkIn.label', default: 'Check In')}" type="number" value="${resultInstance.checkIn}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'groupNumber', 'error')} required">
			<span class="input-group-addon">
				<g:message code="result.groupNumber.label" default="Group Number" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="groupNumber"placeholder="${message(code: 'result.groupNumber.label', default: 'Group Number')}" type="number" value="${resultInstance.groupNumber}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'item', 'error')} required">
			<span class="input-group-addon">
				<g:message code="result.item.label" default="Item" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="item" name="item.id" from="${com.xinnuo.smm.Item.list()}" optionKey="id" optionValue="name" required="" value="${resultInstance?.item?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'laneNumber', 'error')} required">
			<span class="input-group-addon">
				<g:message code="result.laneNumber.label" default="Lane Number" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="laneNumber"placeholder="${message(code: 'result.laneNumber.label', default: 'Lane Number')}" type="number" value="${resultInstance.laneNumber}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'place', 'error')} required">
			<span class="input-group-addon">
				<g:message code="result.place.label" default="Place" />
				<span class="required-indicator">*</span>
			</span>
			<g:field name="place"placeholder="${message(code: 'result.place.label', default: 'Place')}" type="number" value="${resultInstance.place}" required="" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'raceGroup', 'error')} required">
			<span class="input-group-addon">
				<g:message code="result.raceGroup.label" default="Race Group" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="raceGroup" name="raceGroup.id" from="${com.xinnuo.smm.RaceGroup.list()}" optionKey="id" optionValue="name" required="" value="${resultInstance?.raceGroup?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

