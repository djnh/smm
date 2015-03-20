
<%@ page import="com.xinnuo.smm.DetailProperty" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'detailProperty.label', default: 'DetailProperty')}" />
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
		<div id="list-detailProperty" class="row">
	        <div class="box col-md-12">
	        	<div class="alert alert-info">
					<p>当前被激活的是第 ${activateSportsMeeting?.times}届${activateSportsMeeting?.name}，请您设置该届运动会的细分属性。 </p>
					<p>细分属性是指和一届运动会相关的固化文本信息，如《竞赛规程总则》、《运动员/教练员/裁判员守则》、《竞赛委员会名单》、《裁判员名单》等.</p>
				</div>
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2><g:message code="default.list.label" args="[entityName]" /></h2>
	                </div>
	                <div class="box-content">
	                	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<p class="btn-group">
		                    <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		                </p>
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>${message(code: 'detailProperty.id.label', default: 'Id')}</th>
	                            
								<th>${message(code: 'detailProperty.name.label', default: 'Name')}</th>
								
								<th>${message(code: 'default.actions.label', default: 'Actions')}</th>
								
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${detailPropertyInstanceList}" status="i" var="detailPropertyInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td>${fieldValue(bean: detailPropertyInstance, field: "id")}</td>
								
									<td><g:link action="edit" id="${detailPropertyInstance.id}">${fieldValue(bean: detailPropertyInstance, field: "name")}</g:link></td>
								
									<td>
										<g:form role="form" url="[resource:detailPropertyInstance, action:'delete']" method="DELETE">
							        		<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							        	</g:form>
							        </td>
								
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${detailPropertyInstanceCount ?: 0}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
