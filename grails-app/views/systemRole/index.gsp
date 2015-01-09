
<%@ page import="com.xinnuo.smm.SystemRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'systemRole.label', default: 'SystemRole')}" />
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
		<div id="list-systemRole" class="row">
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
	                            
									<g:sortableColumn property="name" title="${message(code: 'systemRole.name.label', default: 'Name')}" />
								
									<g:sortableColumn property="privilege" title="${message(code: 'systemRole.privilege.label', default: 'Privilege')}" />
								
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${systemRoleInstanceList}" status="i" var="systemRoleInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td><g:link action="show" id="${systemRoleInstance.id}">${fieldValue(bean: systemRoleInstance, field: "name")}</g:link></td>
								
									<td>${fieldValue(bean: systemRoleInstance, field: "privilege")}</td>
								
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${systemRoleInstanceCount ?: 0}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
