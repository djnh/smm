<%@ page import="com.xinnuo.smm.SportsMeeting" %>
<script type="text/javascript">
    $(document).ready(function()
    {
      $("#startTime").datepicker({dateFormat: 'yy-mm-dd'});
      $("#endTime").datepicker({dateFormat: 'yy-mm-dd'});
    })
</script>
<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'name', 'error')} required">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.name.label" default="Name" />
			<span class="required-indicator">*</span>
		</span>
		<g:textField name="name" placeholder="必填" maxlength="50" required="" value="${sportsMeetingInstance?.name}" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'times', 'error')} required">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.times.label" default="Times" />
			<span class="required-indicator">*</span>
		</span>
		<g:field name="times" placeholder="数字形式。必填" type="number" value="${sportsMeetingInstance.times}" required="" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'entrepreneurOrg', 'error')} required">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.entrepreneurOrg.label" default="Entrepreneur Org" />
			<span class="required-indicator">*</span>
		</span>
		<g:textField name="entrepreneurOrg" placeholder="必填" maxlength="50" required="" value="${sportsMeetingInstance?.entrepreneurOrg}" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'undertakeOrg', 'error')} ">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.undertakeOrg.label" default="Undertake Org" />
			
		</span>
		<g:textField name="undertakeOrg" placeholder="选填" maxlength="50" value="${sportsMeetingInstance?.undertakeOrg}" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'jointOrg', 'error')} ">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.jointOrg.label" default="Joint Org" />
			
		</span>
		<g:textField name="jointOrg" placeholder="选填" maxlength="50" value="${sportsMeetingInstance?.jointOrg}" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'committalOrg', 'error')} ">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.committalOrg.label" default="Committal Org" />
			
		</span>
		<g:textField name="committalOrg" placeholder="选填" maxlength="50" value="${sportsMeetingInstance?.committalOrg}" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'startTime', 'error')} required">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.startTime.label" default="Start Time" />
			<span class="required-indicator">*</span>
		</span>
		<%--<g:datePicker name="startTime" precision="day" value="${sportsMeetingInstance?.startTime}" />
		--%><g:textField id="startTime" type="date" name="startTime" placeholder="日期，形式为yyyy-mm-dd。必填" value="${formatDate(format:'yyyy-MM-dd',date:sportsMeetingInstance?.startTime)}" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'endTime', 'error')} required">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.endTime.label" default="End Time" />
			<span class="required-indicator">*</span>
		</span>
		<%--<g:datePicker name="endTime" precision="day" value="${sportsMeetingInstance?.endTime}"  />
		--%><g:textField id="endTime" name="endTime" placeholder="日期，形式为yyyy-mm-dd。必填" value="${formatDate(format:'yyyy-MM-dd',date:sportsMeetingInstance?.endTime)}" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'heldLocation', 'error')} ">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.heldLocation.label" default="Held Location" />
			
		</span>
		<g:textField name="heldLocation" placeholder="选填" maxlength="50" value="${sportsMeetingInstance?.heldLocation}" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'remark', 'error')} ">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.remark.label" default="Remark" />
			
		</span>
		<g:textField name="remark" placeholder="选填" value="${sportsMeetingInstance?.remark}" class="form-control"/>
	
	</div>
</div><%--


<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'pluralismMax', 'error')} ">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.pluralismMax.label" default="Pluralism Max" />
			
		</span>
		<g:field name="pluralismMax" type="number" value="${sportsMeetingInstance.pluralismMax}" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'singleItemMin', 'error')} ">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.singleItemMin.label" default="Single Item Min" />
			
		</span>
		<g:field name="singleItemMin" type="number" value="${sportsMeetingInstance.singleItemMin}" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'signUpRemark', 'error')} ">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.signUpRemark.label" default="Sign Up Remark" />
			
		</span>
		<g:textField name="signUpRemark" placeholder="${message(code:'sportsMeeting.signUpRemark.label', default:'Sign Up Remark')}" maxlength="50" value="${sportsMeetingInstance?.signUpRemark}" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class="input-group ${hasErrors(bean: sportsMeetingInstance, field: 'activate', 'error')} required">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.activate.label" default="Activate" />
			<span class="required-indicator">*</span>
		</span>
		<g:field name="activate" type="number" value="${sportsMeetingInstance.activate}" required="" class="form-control"/>
	
	</div>
</div>

<div class="form-group">
	<div class=" input-group ${hasErrors(bean: sportsMeetingInstance, field: 'startSignUp', 'error')} required">
		<span class="input-group-addon">
			<g:message code="sportsMeeting.startSignUp.label" default="Start Sign Up" />
			<span class="required-indicator">*</span>
		</span>
		<g:field name="startSignUp" type="number" value="${sportsMeetingInstance.startSignUp}" required="" class="form-control" />
	
	</div>
</div>

--%>