
<%@ page import="com.xinnuo.smm.Result" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'result.label', default: 'Result')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
		    </ul>
		</div>
		<div id="show-result" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list result">
						
							<g:if test="${resultInstance?.signUpResult}">
							<li class="fieldcontain">
								<span id="signUpResult-label" class="property-label"><g:message code="result.signUpResult.label" default="Sign Up Result" /></span>
								
									<span class="property-value" aria-labelledby="signUpResult-label"><g:fieldValue bean="${resultInstance}" field="signUpResult"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.result}">
							<li class="fieldcontain">
								<span id="result-label" class="property-label"><g:message code="result.result.label" default="Result" /></span>
								
									<span class="property-value" aria-labelledby="result-label"><g:fieldValue bean="${resultInstance}" field="result"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.remark}">
							<li class="fieldcontain">
								<span id="remark-label" class="property-label"><g:message code="result.remark.label" default="Remark" /></span>
								
									<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${resultInstance}" field="remark"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.points}">
							<li class="fieldcontain">
								<span id="points-label" class="property-label"><g:message code="result.points.label" default="Points" /></span>
								
									<span class="property-value" aria-labelledby="points-label"><g:fieldValue bean="${resultInstance}" field="points"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.breakType}">
							<li class="fieldcontain">
								<span id="breakType-label" class="property-label"><g:message code="result.breakType.label" default="Break Type" /></span>
								
									<span class="property-value" aria-labelledby="breakType-label"><g:link controller="breakRuleType" action="show" id="${resultInstance?.breakType?.id}">${resultInstance?.breakType?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.breakGrade}">
							<li class="fieldcontain">
								<span id="breakGrade-label" class="property-label"><g:message code="result.breakGrade.label" default="Break Grade" /></span>
								
									<span class="property-value" aria-labelledby="breakGrade-label"><g:link controller="breakRuleGrade" action="show" id="${resultInstance?.breakGrade?.id}">${resultInstance?.breakGrade?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.athlete}">
							<li class="fieldcontain">
								<span id="athlete-label" class="property-label"><g:message code="result.athlete.label" default="Athlete" /></span>
								
									<span class="property-value" aria-labelledby="athlete-label"><g:link controller="athlete" action="show" id="${resultInstance?.athlete?.id}">${resultInstance?.athlete?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.checkIn}">
							<li class="fieldcontain">
								<span id="checkIn-label" class="property-label"><g:message code="result.checkIn.label" default="Check In" /></span>
								
									<span class="property-value" aria-labelledby="checkIn-label"><g:fieldValue bean="${resultInstance}" field="checkIn"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.groupNumber}">
							<li class="fieldcontain">
								<span id="groupNumber-label" class="property-label"><g:message code="result.groupNumber.label" default="Group Number" /></span>
								
									<span class="property-value" aria-labelledby="groupNumber-label"><g:fieldValue bean="${resultInstance}" field="groupNumber"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.item}">
							<li class="fieldcontain">
								<span id="item-label" class="property-label"><g:message code="result.item.label" default="Item" /></span>
								
									<span class="property-value" aria-labelledby="item-label"><g:link controller="item" action="show" id="${resultInstance?.item?.id}">${resultInstance?.item?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.laneNumber}">
							<li class="fieldcontain">
								<span id="laneNumber-label" class="property-label"><g:message code="result.laneNumber.label" default="Lane Number" /></span>
								
									<span class="property-value" aria-labelledby="laneNumber-label"><g:fieldValue bean="${resultInstance}" field="laneNumber"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.org}">
							<li class="fieldcontain">
								<span id="org-label" class="property-label"><g:message code="result.org.label" default="Org" /></span>
								
									<span class="property-value" aria-labelledby="org-label"><g:link controller="org" action="show" id="${resultInstance?.org?.id}">${resultInstance?.org?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.place}">
							<li class="fieldcontain">
								<span id="place-label" class="property-label"><g:message code="result.place.label" default="Place" /></span>
								
									<span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${resultInstance}" field="place"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${resultInstance?.raceGroup}">
							<li class="fieldcontain">
								<span id="raceGroup-label" class="property-label"><g:message code="result.raceGroup.label" default="Race Group" /></span>
								
									<span class="property-value" aria-labelledby="raceGroup-label"><g:link controller="raceGroup" action="show" id="${resultInstance?.raceGroup?.id}">${resultInstance?.raceGroup?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:resultInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${resultInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
