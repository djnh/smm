
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
		            <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
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
	                    <h2><g:message code="default.list.label" args="[entityName]" /></h2>
	                </div>
	                <div class="box-content">
	                	
	                		<div class="row">
								<div class="col-md-4">
									<g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
								</div>
								<div class="col-md-8">
									<g:form role="form" url="[resource:athleteInstance, action:'index']">
									<p class="pull-right">
										<g:select id="org" name="org.id" from="${com.xinnuo.smm.Org.list()}" optionKey="id" optionValue="name" value="${params?.org?.id}" noSelection="['': '单位']" data-rel="chosen" />
										<g:select id="item" name="item.id" from="${com.xinnuo.smm.Item.list()}" optionKey="id" optionValue="name" value="${params?.item?.id}" noSelection="['': '项目']" data-rel="chosen" />
										<g:select id="raceGroup" name="raceGroup.id" from="${com.xinnuo.smm.RaceGroup.list()}" optionKey="id" optionValue="name" value="${params?.raceGroup?.id}" noSelection="['': '组别']" data-rel="chosen" />
										<g:actionSubmit class="btn btn-primary btn-sm" action="index" value="查询" />
									</p>
									</g:form>
								</div>
							</div>
						
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>${message(code: 'athlete.id.label', default: 'Id')}</th>
	                        	
	                        	<th><g:message code="athlete.number.label" default="Number" /></th>
	                            
									<th><g:message code="athlete.org.label" default="Org" /></th>
								
									<th><g:message code="athlete.name.label" default="Name" /></th>
								
									<th>参加比赛</th>
								
								<th>${message(code: 'default.actions.label', default: 'Actions')}</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${athleteInstanceList}" status="i" var="athleteInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td>${fieldValue(bean: athleteInstance, field: "id")}</td>
								
								<td>${fieldValue(bean: athleteInstance, field: "number")}</td>
								
									<td>${fieldValue(bean: athleteInstance, field: "org")}</td>
								
									<td>${fieldValue(bean: athleteInstance, field: "name")}</td>
								
									<td>
										<g:each in="${athleteInstance.results}" var="resultInstance">
											(${resultInstance.item})(${resultInstance.raceGroup})<br />
										</g:each>
									</td>
								
								<td>
									<g:form role="form" url="[resource:athleteInstance, action:'delete']" method="DELETE">
							            <g:link class="btn btn-info" action="edit" resource="${athleteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							            <g:link class="btn btn-info" action="index" controller="result" params="[athlete:athleteInstance.id]">报名比赛</g:link>
						        		<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						        	</g:form>
					        	</td>
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
