
<%@ page import="com.xinnuo.smm.SportsMeeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'sportsMeeting.label', default: 'SportsMeeting')}" />
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
		<div id="list-sportsMeeting" class="row">
	        <div class="box col-md-12">
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2><g:message code="default.list.label" args="[entityName]" /></h2>
	                </div>
	                <div class="box-content">
	                	<div class="alert alert-info">
	                	<g:if test="${activateSportsMeeting != null}">
						<p>当前被激活的第 ${activateSportsMeeting.times} 届 ${activateSportsMeeting.name} </p>
						<p>您可以点击此处 <g:link class="create" action="create">添加</g:link> 一届运动会，新添加的运动会将会被自动激活。 </p>
						<p>您也可以在下面的列表中修改、删除、激活或关闭某一届已有的运动会。 </p>
						<p>当您激活某一届运动会时，当前被激活的运动会就会自动关闭。 </p>
						<p>运动会在关闭后，不能对其进行任何操作，关联到这届运动会的帐号也将被停用。 </p>
						<p>在管理某届运动会之前，请先将其激活。</p>
						</g:if>
						<g:if test="${activateSportsMeeting == null}">
						<p>当前没有可用的运动会，您可以点击此处 <g:link class="create" action="create">添加</g:link> 一届运动会。</p>
						<p>新添加的运动会将被自动激活，然后你可以对其进行操作操作。 </p>
						</g:if>
						</div>
	                	<g:if test="${flash.message}">
		            	<div class="alert alert-success">${flash.message}</div>
		            	</g:if>
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                            	
	                            	<th>${message(code: 'sportsMeeting.id.label', default: 'Id')}</th>
	                            	
									<g:sortableColumn property="name" title="${message(code: 'sportsMeeting.name.label', default: 'Name')}" />
									
									<g:sortableColumn property="times" title="${message(code: 'sportsMeeting.times.label', default: 'Times')}" />
								
									<g:sortableColumn property="entrepreneurOrg" title="${message(code: 'sportsMeeting.entrepreneurOrg.label', default: 'Entrepreneur Org')}" />
								
									<g:sortableColumn property="startTime" title="${message(code: 'sportsMeeting.startTime.label', default: 'Start Time')}" />
									
									<g:sortableColumn property="endTime" title="${message(code: 'sportsMeeting.endTime.label', default: 'End Time')}" />
									
									<th>${message(code: 'sportsMeeting.activate.label', default: 'Activate')}</th>
									
									<th>${message(code: 'default.actions.label', default: 'Actions')}</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${sportsMeetingInstanceList}" status="i" var="sportsMeetingInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td>${fieldValue(bean: sportsMeetingInstance, field: "id")}</td>
								
									<td>${fieldValue(bean: sportsMeetingInstance, field: "name")}</td>
								
									<td>${fieldValue(bean: sportsMeetingInstance, field: "times")}</td>
								
									<td>${fieldValue(bean: sportsMeetingInstance, field: "entrepreneurOrg")}</td>
									
									<td><g:formatDate format="yyyy-MM-dd" date="${sportsMeetingInstance.startTime}"/></td>
									
									<td><g:formatDate format="yyyy-MM-dd" date="${sportsMeetingInstance.endTime}"/></td>
								
									<td>
										<g:if test="${sportsMeetingInstance.activate}"><g:message code="sportsMeeting.activate.active.label" default="Active" /></g:if>
										<g:if test="${!sportsMeetingInstance.activate}">
											<g:link class="edit" action="activate" resource="${sportsMeetingInstance}"  onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><g:message code="sportsMeeting.activate.activeNow.label" default="Activate now" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></g:link>
										</g:if>
									</td>
									
									<td>
										<g:form role="form" url="[resource:sportsMeetingInstance, action:'delete']" method="DELETE">
								            <g:link class="btn btn-info" action="edit" resource="${sportsMeetingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
								            <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								            <g:link class="btn btn-primary ${sportsMeetingInstance.activate?:'disabled' }" action="close" resource="${sportsMeetingInstance}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><g:message code="sportsMeeting.close.label" default="Close" /></g:link>
							        	</g:form>
									</td>
								
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                    <div class="pagination pagination-centered">
							<g:paginate total="${sportsMeetingInstanceCount ?: 0}" />
						</div>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	
	    </div>
	</body>
</html>
