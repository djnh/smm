
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
	        	<div class="alert alert-info">
                	<g:if test="${activateSportsMeeting != null}">
					<p>当前被激活的是第  ${activateSportsMeeting.times} 届${activateSportsMeeting.name}，您可以管理与该运动会相关的帐号。 </p>
					</g:if>
					<g:if test="${activateSportsMeeting == null}">
					<p>当前没有被激活的运动会。您可以点击此处<g:link class="create" controller="sportsMeeting" action="create">添加</g:link>一届运动会。 </p>
					</g:if>
				</div>
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
	                        	<th>${message(code: 'sportsMeeting.id.label', default: 'Id')}</th>
	                        	
	                            <th><g:message code="systemUser.loginName.label" default="Login Name" /></th>
	                            	
								<th><g:message code="systemUser.systemRole.label" default="System Role" /></th>
									
								<th>${message(code: 'default.actions.label', default: 'Actions')}</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${systemUserInstanceList}" status="i" var="systemUserInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td>${fieldValue(bean: systemUserInstance, field: "id")}</td>
								
									<td>${fieldValue(bean: systemUserInstance, field: "loginName")}</td>
								
									<td>${ systemUserInstance.systemRole.name}</td>
									
									<td>
										<g:form role="form" url="[resource:systemUserInstance, action:'delete']" method="DELETE">
								            <g:link class="btn btn-info" action="edit" resource="${systemUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							        		<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							        	</g:form>
									</td>
								
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
