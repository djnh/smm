<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'systemUser.label', default: 'SystemUser')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
		        </li>
		    </ul>
		</div>
		<div id="create-systemUser" class="row">
		    <div class="box col-md-12">
		    	<div class="alert alert-info">
				<g:if test="${activateSportsMeeting != null}">
				<p>当前被激活的是第  ${activateSportsMeeting.times} 届${activateSportsMeeting.name}。 </p>
				<p>您可以添加与此届运动会相关的大会组委会帐号、检录员、成绩录入员帐号等。</p>
				<p>如果需要，您还可以添加系统管理员级别的帐号。 </p>
				</g:if>
				<g:if test="${activateSportsMeeting == null}">
				<p>当前没有可用的运动会，您可以点击此处<g:link class="create" controller="sportsMeeting" action="create">添加</g:link> 一届运动会。  </p>
				</g:if>
                </div>
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><i class="glyphicon glyphicon-plus"></i> <g:message code="default.create.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<div class="alert alert-info">
		            	<p>注意：用户名和密码只能为英文字母(a-z,A-Z)、数字(0-9)、下划线(_)的任意组合</p>
						</div>
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<g:hasErrors bean="${systemUserInstance}">
		            	<div class="alert alert-danger">
						<ul class="errors" role="alert">
							<g:eachError bean="${systemUserInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
						</div>
						</g:hasErrors>
						<g:form role="form" url="[resource:systemUserInstance, action:'save']">
		                    <g:render template="form"/>
		                    <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		                    <input name="reset" type="reset" class="btn btn-primary" value="${message(code: 'default.button.reset.label', default: 'Reset')}" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
