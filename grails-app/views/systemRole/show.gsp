
<%@ page import="com.xinnuo.smm.SystemRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'systemRole.label', default: 'SystemRole')}" />
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
		<div id="show-systemRole" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list systemRole">
						
							<g:if test="${systemRoleInstance?.name}">
							<li class="fieldcontain">
								<span id="name-label" class="property-label"><g:message code="systemRole.name.label" default="Name" /></span>
								
									<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${systemRoleInstance}" field="name"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${systemRoleInstance?.privilege}">
							<li class="fieldcontain">
								<span id="privilege-label" class="property-label"><g:message code="systemRole.privilege.label" default="Privilege" /></span>
								
									<span class="property-value" aria-labelledby="privilege-label"><g:fieldValue bean="${systemRoleInstance}" field="privilege"/></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:systemRoleInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${systemRoleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
