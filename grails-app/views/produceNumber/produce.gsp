
<%@ page import="com.xinnuo.smm.Athlete" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'athlete.label', default: 'Athlete')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" action="index">生成运动员编号</g:link>
		        </li>
		    </ul>
		</div>
		<div id="list-athlete" class="row">
	        <div class="box col-md-12">
	        	<g:if test="${flash.message}">
            	<div class="alert alert-info">${flash.message}</div>
            	</g:if>
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2>运动员编号列表</h2>
	                </div>
	                <div class="box-content">
	                	<p>
		                    <g:link class="btn btn-primary" action="index">重新生成</g:link>
		                </p>
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>${message(code: 'athlete.id.label', default: 'Id')}</th>
	                            
									<th><g:message code="athlete.name.label" default="Name" /></th>
									
									<th><g:message code="athlete.org.label" default="Org" /></th>
								
									<th><g:message code="athlete.sex.label" default="Sex" /></th>
									
									<th><g:message code="athlete.number.label" default="Number" /></th>
								
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${athleteInstanceList}" status="i" var="athleteInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td>${fieldValue(bean: athleteInstance, field: "id")}</td>
								
									<td>${fieldValue(bean: athleteInstance, field: "name")}</td>
									
									<td>${fieldValue(bean: athleteInstance, field: "org")}</td>
								
									<td>${fieldValue(bean: athleteInstance, field: "sex")}</td>
									
									<td>${fieldValue(bean: athleteInstance, field: "number")}</td>
								
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${athleteInstanceCount ?: 0}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
