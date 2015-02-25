<%@ page import="com.xinnuo.smm.Record" %>



	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'item', 'error')} required">
			<span class="input-group-addon">
				<g:message code="record.item.label" default="Item" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="item" name="item.id" from="${com.xinnuo.smm.Item.list()}" optionKey="id" optionValue="name" required="" value="${recordInstance?.item?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'raceGroup', 'error')} required">
			<span class="input-group-addon">
				<g:message code="record.raceGroup.label" default="Race Group" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="raceGroup" name="raceGroup.id" from="${com.xinnuo.smm.RaceGroup.list()}" optionKey="id" optionValue="name" required="" value="${recordInstance?.raceGroup?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'grade', 'error')} required">
			<span class="input-group-addon">
				<g:message code="record.grade.label" default="Grade" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="grade" name="grade.id" from="${com.xinnuo.smm.BreakRuleGrade.list()}" optionKey="id" optionValue="name" required="" value="${recordInstance?.grade?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'result', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.result.label" default="Result" />
				
			</span>
			<g:textField name="result" placeholder="${message(code:'record.result.label', default:'Result')}" maxlength="50" value="${recordInstance?.result}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'keeperName', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.keeperName.label" default="Keeper Name" />
				
			</span>
			<g:textField name="keeperName" placeholder="${message(code:'record.keeperName.label', default:'Keeper Name')}" maxlength="50" value="${recordInstance?.keeperName}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'keeperOrg', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.keeperOrg.label" default="Keeper Org" />
				
			</span>
			<g:textField name="keeperOrg" placeholder="${message(code:'record.keeperOrg.label', default:'Keeper Org')}" maxlength="50" value="${recordInstance?.keeperOrg}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'keeperTime', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.keeperTime.label" default="Keeper Time" />
				
			</span>
			<g:textField id="keeperTime" name="keeperTime" precision="day"  placeholder="${message(code: 'record.keeperTime.label', default: 'Keeper Time')}" value="${recordInstance?.keeperTime}" value="${recordInstance?.keeperTime}" default="none" noSelection="['': '']" class="form-control" /><script>$("#keeperTime").datepicker({dateFormat: 'yy-mm-dd'})</script>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'keeperLocation', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.keeperLocation.label" default="Keeper Location" />
				
			</span>
			<g:textField name="keeperLocation" placeholder="${message(code:'record.keeperLocation.label', default:'Keeper Location')}" maxlength="50" value="${recordInstance?.keeperLocation}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'former', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.former.label" default="Former" />
				
			</span>
			<g:textField name="former" placeholder="${message(code:'record.former.label', default:'Former')}" maxlength="50" value="${recordInstance?.former}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'breakTime', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.breakTime.label" default="Break Time" />
				
			</span>
			<g:textField id="breakTime" name="breakTime" precision="day"  placeholder="${message(code: 'record.breakTime.label', default: 'Break Time')}" value="${recordInstance?.breakTime}" value="${recordInstance?.breakTime}" default="none" noSelection="['': '']" class="form-control" /><script>$("#breakTime").datepicker({dateFormat: 'yy-mm-dd'})</script>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'gameId', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.gameId.label" default="Game Id" />
				
			</span>
			<g:field name="gameId"placeholder="${message(code: 'record.gameId.label', default: 'Game Id')}" type="number" value="${recordInstance.gameId}" class="form-control"/>

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: recordInstance, field: 'sportsMeeting', 'error')} ">
			<span class="input-group-addon">
				<g:message code="record.sportsMeeting.label" default="Sports Meeting" />
				
			</span>
			<g:select id="sportsMeeting" name="sportsMeeting.id" from="${com.xinnuo.smm.SportsMeeting.list()}" optionKey="id" optionValue="name" value="${recordInstance?.sportsMeeting?.id}" class="many-to-one" noSelection="['null': '']" class="form-control" />

		</div>
	</div>

