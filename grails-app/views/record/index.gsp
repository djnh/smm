
<%@ page import="com.xinnuo.smm.Record" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'record.label', default: 'Record')}" />
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
		<div id="list-record" class="row">
	        <div class="box col-md-12">
	        	<g:if test="${flash.message}">
            	<div class="alert alert-info">${flash.message}</div>
            	</g:if>
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2><g:message code="default.list.label" args="[entityName]" /></h2>
	                </div>
	                <div class="box-content">
	                	<p class="btn-group">
		                    <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		                </p>
		                <p>
		                	<g:form role="form" url="[resource:recordInstance, action:'index']">
							<label><g:message code="record.item.label" default="Item" />
							<g:select id="item" name="item.id" from="${com.xinnuo.smm.Item.list()}" optionKey="id" optionValue="name" required="" value="${params?.item?.id}" class="many-to-one" />
		                	</label>
		                	<label><g:message code="record.raceGroup.label" default="Race Group" />
							<g:select id="raceGroup" name="raceGroup.id" from="${com.xinnuo.smm.RaceGroup.list()}" optionKey="id" optionValue="name" required="" value="${params?.raceGroup?.id}" class="many-to-one" />
		                	</label>
							<label><g:message code="record.grade.label" default="Grade" />
							<g:select id="grade" name="grade.id" from="${com.xinnuo.smm.BreakRuleGrade.list()}" optionKey="id" optionValue="name" required="" value="${params?.grade?.id}" class="many-to-one" />
		                	</label>
						    <g:actionSubmit class="btn btn-primary" action="index" value="查询" />
						    </g:form>
		                </p>
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>${message(code: 'record.id.label', default: 'Id')}</th>
	                            
									<th><g:message code="record.item.label" default="Item" /></th>
								
									<th><g:message code="record.raceGroup.label" default="Race Group" /></th>
								
									<th><g:message code="record.grade.label" default="Grade" /></th>
								
								<th>${message(code: 'default.actions.label', default: 'Actions')}</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${recordInstanceList}" status="i" var="recordInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td>${fieldValue(bean: recordInstance, field: "id")}</td>
								
									<td>${fieldValue(bean: recordInstance, field: "item")}</td>
								
									<td>${fieldValue(bean: recordInstance, field: "raceGroup")}</td>
								
									<td>${fieldValue(bean: recordInstance, field: "grade")}</td>
								
								<td>
									<g:form role="form" url="[resource:recordInstance, action:'delete']" method="DELETE">
							            <g:link class="btn btn-info" action="edit" resource="${recordInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						        		<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						        	</g:form>
					        	</td>
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${recordInstanceCount ?: 0}" params="${["item.id":params?.item?.id,"raceGroup.id":params?.raceGroup?.id,"grade.id":params?.grade?.id]}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
