
<%@ page import="com.xinnuo.smm.BreakRule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'breakRule.label', default: 'BreakRule')}" />
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
		<div id="show-breakRule" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list breakRule">
						
							<g:if test="${breakRuleInstance?.grade}">
							<li class="fieldcontain">
								<span id="grade-label" class="property-label"><g:message code="breakRule.grade.label" default="Grade" /></span>
								
									<span class="property-value" aria-labelledby="grade-label"><g:link controller="breakRuleGrade" action="show" id="${breakRuleInstance?.grade?.id}">${breakRuleInstance?.grade?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${breakRuleInstance?.addPoints}">
							<li class="fieldcontain">
								<span id="addPoints-label" class="property-label"><g:message code="breakRule.addPoints.label" default="Add Points" /></span>
								
									<span class="property-value" aria-labelledby="addPoints-label"><g:fieldValue bean="${breakRuleInstance}" field="addPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${breakRuleInstance?.ruleTemplate}">
							<li class="fieldcontain">
								<span id="ruleTemplate-label" class="property-label"><g:message code="breakRule.ruleTemplate.label" default="Rule Template" /></span>
								
									<span class="property-value" aria-labelledby="ruleTemplate-label"><g:link controller="ruleTemplate" action="show" id="${breakRuleInstance?.ruleTemplate?.id}">${breakRuleInstance?.ruleTemplate?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:breakRuleInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${breakRuleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
