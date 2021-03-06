
<%@ page import="com.xinnuo.smm.Result" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'result.label', default: 'Result')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" controller="athlete" action="index">已报名运动员列表</g:link>
		        </li>
		    </ul>
		</div>
		<div id="list-result" class="row">
	        <div class="box col-md-12">
	        	<g:if test="${flash.message}">
            	<div class="alert alert-info">${flash.message}</div>
            	</g:if>
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2>已报名的比赛</h2>
	                </div>
	                <div class="box-content">
	                	<p class="btn-group">
		                    <g:link class="btn btn-primary" action="create">项目报名</g:link>
		                </p>
		                <p>
		                	运动员: ${session.currentAthlete}
		                </p>
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>${message(code: 'result.id.label', default: 'Id')}</th>
	                            
								<th>${message(code: 'result.item.label', default: 'Item')}</th>
								<th>${message(code: 'result.raceGroup.label', default: 'Race Group')}</th>
								<th>${message(code: 'default.actions.label', default: 'Actions')}</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${resultInstanceList}" status="i" var="resultInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td>${fieldValue(bean: resultInstance, field: "id")}</td>
								
									<td>${fieldValue(bean: resultInstance, field: "item")}</td>
								
									<td>${fieldValue(bean: resultInstance, field: "raceGroup")}</td>
								
								<td>
									<g:form role="form" url="[resource:resultInstance, action:'delete']" method="DELETE">
							            <g:link class="btn btn-info" action="edit" resource="${resultInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						        		<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						        	</g:form>
					        	</td>
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${resultInstanceCount ?: 0}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
