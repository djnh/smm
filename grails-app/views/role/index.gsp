
<%@ page import="com.xinnuo.smm.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
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
		<div id="list-role" class="row">
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
	                            
									<g:sortableColumn property="name" title="${message(code: 'role.name.label', default: 'Name')}" />
								
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${roleInstanceList}" status="i" var="roleInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td><g:link action="show" id="${roleInstance.id}">${fieldValue(bean: roleInstance, field: "name")}</g:link></td>
								
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${roleInstanceCount ?: 0}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
