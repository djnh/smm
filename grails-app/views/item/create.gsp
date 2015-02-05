<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<script type="text/javascript">
		<!--
		$(function(){
			$("select[multiple='multiple'] option").attr("selected","selected");
			
		});
		//-->
		</script>
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
		<div id="create-item" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><i class="glyphicon glyphicon-plus"></i> <g:message code="default.create.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<g:hasErrors bean="${itemInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${itemInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
						</g:hasErrors>
						<g:form role="form" url="[resource:itemInstance, action:'save']" >
		                    <g:render template="form"/>
		                    <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
