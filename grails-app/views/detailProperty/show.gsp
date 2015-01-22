
<%@ page import="com.xinnuo.smm.DetailProperty" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'detailProperty.label', default: 'DetailProperty')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
		    </ul>
		</div>
		<div id="show-detailProperty" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list detailProperty">
						
							<g:if test="${detailPropertyInstance?.name}">
							<li class="fieldcontain">
								<span id="name-label" class="property-label"><g:message code="detailProperty.name.label" default="Name" /></span>
								
									<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${detailPropertyInstance}" field="name"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${detailPropertyInstance?.content}">
							<li class="fieldcontain">
								<span id="content-label" class="property-label"><g:message code="detailProperty.content.label" default="Content" /></span>
								
									<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${detailPropertyInstance}" field="content"/></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:detailPropertyInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${detailPropertyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
