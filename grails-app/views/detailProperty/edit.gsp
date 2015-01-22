<%@ page import="com.xinnuo.smm.DetailProperty" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'detailProperty.label', default: 'DetailProperty')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
		        <li>
		            <g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		        </li>
		    </ul>
		</div>
		<div id="edit-detailProperty" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.edit.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<g:hasErrors bean="${detailPropertyInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${detailPropertyInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
						</g:hasErrors>
						<g:form role="form" url="[resource:detailPropertyInstance, action:'update']" method="PUT" >
		                    <g:hiddenField name="version" value="${detailPropertyInstance?.version}" />
		                    <g:render template="form"/>
		                    <g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>