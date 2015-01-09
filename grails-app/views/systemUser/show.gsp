
<%@ page import="com.xinnuo.smm.SystemUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'systemUser.label', default: 'SystemUser')}" />
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
		<div id="show-systemUser" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list systemUser">
						
							<g:if test="${systemUserInstance?.loginName}">
							<li class="fieldcontain">
								<span id="loginName-label" class="property-label"><g:message code="systemUser.loginName.label" default="Login Name" /></span>
								
									<span class="property-value" aria-labelledby="loginName-label"><g:fieldValue bean="${systemUserInstance}" field="loginName"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${systemUserInstance?.password}">
							<li class="fieldcontain">
								<span id="password-label" class="property-label"><g:message code="systemUser.password.label" default="Password" /></span>
								
									<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${systemUserInstance}" field="password"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${systemUserInstance?.databaselogs}">
							<li class="fieldcontain">
								<span id="databaselogs-label" class="property-label"><g:message code="systemUser.databaselogs.label" default="Databaselogs" /></span>
								
									<g:each in="${systemUserInstance.databaselogs}" var="d">
									<span class="property-value" aria-labelledby="databaselogs-label"><g:link controller="databaseLog" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
									</g:each>
								
							</li>
							</g:if>
						
							<g:if test="${systemUserInstance?.sportsMeeting}">
							<li class="fieldcontain">
								<span id="sportsMeeting-label" class="property-label"><g:message code="systemUser.sportsMeeting.label" default="Sports Meeting" /></span>
								
									<span class="property-value" aria-labelledby="sportsMeeting-label"><g:link controller="sportsMeeting" action="show" id="${systemUserInstance?.sportsMeeting?.id}">${systemUserInstance?.sportsMeeting?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${systemUserInstance?.systemRole}">
							<li class="fieldcontain">
								<span id="systemRole-label" class="property-label"><g:message code="systemUser.systemRole.label" default="System Role" /></span>
								
									<span class="property-value" aria-labelledby="systemRole-label"><g:link controller="systemRole" action="show" id="${systemUserInstance?.systemRole?.id}">${systemUserInstance?.systemRole?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:systemUserInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${systemUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
