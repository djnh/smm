<%@ page import="com.xinnuo.smm.Result" %>
	<div class="form-group">
		<div class="input-group">
			<span class="input-group-addon">
				<g:message code="result.athlete.label" default="Athlete" />
			</span>
			<input name="athlete" value="${session.currentAthlete}" class="form-control" readonly="readonly" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="input-group">
			<span class="input-group-addon">
				<g:message code="result.org.label" default="Org" />
			</span>
			<input name="org" value="${session.currentAthlete?.org}" class="form-control" readonly="readonly" />
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
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'raceGroup', 'error')} required">
			<span class="input-group-addon">
				<g:message code="result.raceGroup.label" default="Race Group" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="raceGroup" name="raceGroup.id" from="${com.xinnuo.smm.RaceGroup.findAllByGroupSex(session.currentAthlete?.sex)}" optionKey="id" optionValue="name" required="" value="${resultInstance?.raceGroup?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>


	<div class="form-group">
		<div class="input-group ${hasErrors(bean: resultInstance, field: 'signUpResult', 'error')} ">
			<span class="input-group-addon">
				<g:message code="result.signUpResult.label" default="Sign Up Result" />
				
			</span>
			<g:textField name="signUpResult" placeholder="${message(code:'result.signUpResult.label', default:'Sign Up Result')}" maxlength="50" value="${resultInstance?.signUpResult}" class="form-control"/>

		</div>
	</div>


