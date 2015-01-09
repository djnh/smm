
<%@ page import="com.xinnuo.smm.SystemUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'systemUser.label', default: 'SystemUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		        </li>
		    </ul>
		</div>
		<div id="list-systemUser" class="row">
	        <div class="box col-md-12">
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2><g:message code="default.list.label" args="[entityName]" /></h2>
	                </div>
	                <div class="box-content">
	                	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                            
									<g:sortableColumn property="loginName" title="${message(code: 'systemUser.loginName.label', default: 'Login Name')}" />
								
									<g:sortableColumn property="password" title="${message(code: 'systemUser.password.label', default: 'Password')}" />
								
									<th><g:message code="systemUser.sportsMeeting.label" default="Sports Meeting" /></th>
								
									<th><g:message code="systemUser.systemRole.label" default="System Role" /></th>
								
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${systemUserInstanceList}" status="i" var="systemUserInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td><g:link action="show" id="${systemUserInstance.id}">${fieldValue(bean: systemUserInstance, field: "loginName")}</g:link></td>
								
									<td>${fieldValue(bean: systemUserInstance, field: "password")}</td>
								
									<td>${fieldValue(bean: systemUserInstance, field: "sportsMeeting")}</td>
								
									<td>${fieldValue(bean: systemUserInstance, field: "systemRole")}</td>
								
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${systemUserInstanceCount ?: 0}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
