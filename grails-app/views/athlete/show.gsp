
<%@ page import="com.xinnuo.smm.Athlete" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'athlete.label', default: 'Athlete')}" />
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
		<div id="show-athlete" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list athlete">
						
							<g:if test="${athleteInstance?.org}">
							<li class="fieldcontain">
								<span id="org-label" class="property-label"><g:message code="athlete.org.label" default="Org" /></span>
								
									<span class="property-value" aria-labelledby="org-label"><g:link controller="org" action="show" id="${athleteInstance?.org?.id}">${athleteInstance?.org?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${athleteInstance?.name}">
							<li class="fieldcontain">
								<span id="name-label" class="property-label"><g:message code="athlete.name.label" default="Name" /></span>
								
									<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${athleteInstance}" field="name"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${athleteInstance?.sex}">
							<li class="fieldcontain">
								<span id="sex-label" class="property-label"><g:message code="athlete.sex.label" default="Sex" /></span>
								
									<span class="property-value" aria-labelledby="sex-label"><g:link controller="groupSex" action="show" id="${athleteInstance?.sex?.id}">${athleteInstance?.sex?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${athleteInstance?.number}">
							<li class="fieldcontain">
								<span id="number-label" class="property-label"><g:message code="athlete.number.label" default="Number" /></span>
								
									<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${athleteInstance}" field="number"/></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:athleteInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${athleteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
