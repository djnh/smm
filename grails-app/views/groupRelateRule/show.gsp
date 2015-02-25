
<%@ page import="com.xinnuo.smm.GroupRelateRule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'groupRelateRule.label', default: 'GroupRelateRule')}" />
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
		<div id="show-groupRelateRule" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list groupRelateRule">
						
							<g:if test="${groupRelateRuleInstance?.type}">
							<li class="fieldcontain">
								<span id="type-label" class="property-label"><g:message code="groupRelateRule.type.label" default="Type" /></span>
								
									<span class="property-value" aria-labelledby="type-label"><g:link controller="groupRelateRuleType" action="show" id="${groupRelateRuleInstance?.type?.id}">${groupRelateRuleInstance?.type?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${groupRelateRuleInstance?.groupByHigherGroup}">
							<li class="fieldcontain">
								<span id="groupByHigherGroup-label" class="property-label"><g:message code="groupRelateRule.groupByHigherGroup.label" default="Group By Higher Group" /></span>
								
									<span class="property-value" aria-labelledby="groupByHigherGroup-label"><g:link controller="raceGroup" action="show" id="${groupRelateRuleInstance?.groupByHigherGroup?.id}">${groupRelateRuleInstance?.groupByHigherGroup?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${groupRelateRuleInstance?.groupByLowerGroup}">
							<li class="fieldcontain">
								<span id="groupByLowerGroup-label" class="property-label"><g:message code="groupRelateRule.groupByLowerGroup.label" default="Group By Lower Group" /></span>
								
									<span class="property-value" aria-labelledby="groupByLowerGroup-label"><g:link controller="raceGroup" action="show" id="${groupRelateRuleInstance?.groupByLowerGroup?.id}">${groupRelateRuleInstance?.groupByLowerGroup?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
							<g:if test="${groupRelateRuleInstance?.ruleTemplate}">
							<li class="fieldcontain">
								<span id="ruleTemplate-label" class="property-label"><g:message code="groupRelateRule.ruleTemplate.label" default="Rule Template" /></span>
								
									<span class="property-value" aria-labelledby="ruleTemplate-label"><g:link controller="ruleTemplate" action="show" id="${groupRelateRuleInstance?.ruleTemplate?.id}">${groupRelateRuleInstance?.ruleTemplate?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:groupRelateRuleInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${groupRelateRuleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
