<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
		        </li>
		    </ul>
		</div>
		<div id="edit-${domainClass.propertyName}" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.edit.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="\${flash.message}">
		            	<div class="alert alert-info">\${flash.message}</div>
		            	</g:if>
		            	<g:hasErrors bean="\${${propertyName}}">
						<ul class="errors" role="alert">
							<g:eachError bean="\${${propertyName}}" var="error">
							<li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
							</g:eachError>
						</ul>
						</g:hasErrors>
						<g:form role="form" url="[resource:${propertyName}, action:'update']" method="PUT" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
		                    <g:hiddenField name="version" value="\${${propertyName}?.version}" />
		                    <g:render template="form"/>
		                    <g:actionSubmit class="btn btn-primary" action="update" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
		                    <g:link class="btn btn-primary" action="index">\${message(code: 'default.button.return.label', default: 'Return')}</g:link>
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
