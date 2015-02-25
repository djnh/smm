<%@ page import="com.xinnuo.smm.SportsMeeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'signUpRule.label', default: 'Sign Up Rule')}" />
		<title>报名规则</title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" action="index">设置报名规则</g:link>
		        </li>
		    </ul>
		</div>
		<div id="edit-signUpRule" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2>设置报名规则</h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<g:hasErrors bean="${sportsMeetingInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${sportsMeetingInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
						</g:hasErrors>
						<g:form role="form" url="[controller:signUpRule, action:'update', id:sportsMeetingInstance.id]" method="PUT" >
		                    <g:hiddenField name="version" value="${sportsMeetingInstance?.version}" />
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
