
<%@ page import="com.xinnuo.smm.Org" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'org.label', default: 'Org')}" />
		<title>参赛单位报名</title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" action="signup">参赛单位报名</g:link>
		        </li>
		    </ul>
		</div>
		<div id="list-org" class="row">
	        <div class="box col-md-12">
	        	<g:if test="${flash.message}">
            	<div class="alert alert-info">${flash.message}</div>
            	</g:if>
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2>参赛单位报名</h2>
	                </div>
	                <div class="box-content">
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>${message(code: 'org.id.label', default: 'Id')}</th>
	                        	
	                        	<th>${message(code: 'org.name.label', default: 'Name')}</th>
	                        	
	                        	<th>${message(code: 'org.remark.label', default: 'Remark')}</th>
								
								<th>报名</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${orgInstanceList}" status="i" var="orgInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td>${fieldValue(bean: orgInstance, field: "id")}</td>
								
									<td>${fieldValue(bean: orgInstance, field: "name")}</td>
								
									<td>${fieldValue(bean: orgInstance, field: "remark")}</td>
								
								    <td><g:link class="btn btn-info" action="index" controller="Result" params="[org:orgInstance.id]">报名</g:link></td>
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${orgInstanceCount ?: 0}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
