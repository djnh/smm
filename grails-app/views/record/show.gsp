
<%@ page import="com.xinnuo.smm.Record" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'record.label', default: 'Record')}" />
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
		<div id="show-record" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list record">
						
							<g:if test="${recordInstance?.item}">
							<li class="fieldcontain">
								<span id="item-label" class="property-label"><g:message code="record.item.label" default="Item" /></span>
								
									<span class="property-value" aria-labelledby="item-label"><g:link controller="item" action="show" id="${recordInstance?.item?.id}">${recordInstance?.item?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.raceGroup}">
							<li class="fieldcontain">
								<span id="raceGroup-label" class="property-label"><g:message code="record.raceGroup.label" default="Race Group" /></span>
								
									<span class="property-value" aria-labelledby="raceGroup-label"><g:link controller="raceGroup" action="show" id="${recordInstance?.raceGroup?.id}">${recordInstance?.raceGroup?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.grade}">
							<li class="fieldcontain">
								<span id="grade-label" class="property-label"><g:message code="record.grade.label" default="Grade" /></span>
								
									<span class="property-value" aria-labelledby="grade-label"><g:link controller="breakRuleGrade" action="show" id="${recordInstance?.grade?.id}">${recordInstance?.grade?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.result}">
							<li class="fieldcontain">
								<span id="result-label" class="property-label"><g:message code="record.result.label" default="Result" /></span>
								
									<span class="property-value" aria-labelledby="result-label"><g:fieldValue bean="${recordInstance}" field="result"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.keeperName}">
							<li class="fieldcontain">
								<span id="keeperName-label" class="property-label"><g:message code="record.keeperName.label" default="Keeper Name" /></span>
								
									<span class="property-value" aria-labelledby="keeperName-label"><g:fieldValue bean="${recordInstance}" field="keeperName"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.keeperOrg}">
							<li class="fieldcontain">
								<span id="keeperOrg-label" class="property-label"><g:message code="record.keeperOrg.label" default="Keeper Org" /></span>
								
									<span class="property-value" aria-labelledby="keeperOrg-label"><g:fieldValue bean="${recordInstance}" field="keeperOrg"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.keeperTime}">
							<li class="fieldcontain">
								<span id="keeperTime-label" class="property-label"><g:message code="record.keeperTime.label" default="Keeper Time" /></span>
								
									<span class="property-value" aria-labelledby="keeperTime-label"><g:formatDate date="${recordInstance?.keeperTime}" /></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.keeperLocation}">
							<li class="fieldcontain">
								<span id="keeperLocation-label" class="property-label"><g:message code="record.keeperLocation.label" default="Keeper Location" /></span>
								
									<span class="property-value" aria-labelledby="keeperLocation-label"><g:fieldValue bean="${recordInstance}" field="keeperLocation"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.former}">
							<li class="fieldcontain">
								<span id="former-label" class="property-label"><g:message code="record.former.label" default="Former" /></span>
								
									<span class="property-value" aria-labelledby="former-label"><g:fieldValue bean="${recordInstance}" field="former"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.breakTime}">
							<li class="fieldcontain">
								<span id="breakTime-label" class="property-label"><g:message code="record.breakTime.label" default="Break Time" /></span>
								
									<span class="property-value" aria-labelledby="breakTime-label"><g:formatDate date="${recordInstance?.breakTime}" /></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.gameId}">
							<li class="fieldcontain">
								<span id="gameId-label" class="property-label"><g:message code="record.gameId.label" default="Game Id" /></span>
								
									<span class="property-value" aria-labelledby="gameId-label"><g:fieldValue bean="${recordInstance}" field="gameId"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${recordInstance?.sportsMeeting}">
							<li class="fieldcontain">
								<span id="sportsMeeting-label" class="property-label"><g:message code="record.sportsMeeting.label" default="Sports Meeting" /></span>
								
									<span class="property-value" aria-labelledby="sportsMeeting-label"><g:link controller="sportsMeeting" action="show" id="${recordInstance?.sportsMeeting?.id}">${recordInstance?.sportsMeeting?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:recordInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${recordInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
