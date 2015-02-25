
<%@ page import="com.xinnuo.smm.PointRule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'pointRule.label', default: 'PointRule')}" />
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
		<div id="show-pointRule" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list pointRule">
						
							<g:if test="${pointRuleInstance?.lessThan}">
							<li class="fieldcontain">
								<span id="lessThan-label" class="property-label"><g:message code="pointRule.lessThan.label" default="Less Than" /></span>
								
									<span class="property-value" aria-labelledby="lessThan-label"><g:fieldValue bean="${pointRuleInstance}" field="lessThan"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.moreThan}">
							<li class="fieldcontain">
								<span id="moreThan-label" class="property-label"><g:message code="pointRule.moreThan.label" default="More Than" /></span>
								
									<span class="property-value" aria-labelledby="moreThan-label"><g:fieldValue bean="${pointRuleInstance}" field="moreThan"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.getCount}">
							<li class="fieldcontain">
								<span id="getCount-label" class="property-label"><g:message code="pointRule.getCount.label" default="Get Count" /></span>
								
									<span class="property-value" aria-labelledby="getCount-label"><g:fieldValue bean="${pointRuleInstance}" field="getCount"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.firstPoints}">
							<li class="fieldcontain">
								<span id="firstPoints-label" class="property-label"><g:message code="pointRule.firstPoints.label" default="First Points" /></span>
								
									<span class="property-value" aria-labelledby="firstPoints-label"><g:fieldValue bean="${pointRuleInstance}" field="firstPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.secondPoints}">
							<li class="fieldcontain">
								<span id="secondPoints-label" class="property-label"><g:message code="pointRule.secondPoints.label" default="Second Points" /></span>
								
									<span class="property-value" aria-labelledby="secondPoints-label"><g:fieldValue bean="${pointRuleInstance}" field="secondPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.thirdPoints}">
							<li class="fieldcontain">
								<span id="thirdPoints-label" class="property-label"><g:message code="pointRule.thirdPoints.label" default="Third Points" /></span>
								
									<span class="property-value" aria-labelledby="thirdPoints-label"><g:fieldValue bean="${pointRuleInstance}" field="thirdPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.fourthPoints}">
							<li class="fieldcontain">
								<span id="fourthPoints-label" class="property-label"><g:message code="pointRule.fourthPoints.label" default="Fourth Points" /></span>
								
									<span class="property-value" aria-labelledby="fourthPoints-label"><g:fieldValue bean="${pointRuleInstance}" field="fourthPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.fifthPoints}">
							<li class="fieldcontain">
								<span id="fifthPoints-label" class="property-label"><g:message code="pointRule.fifthPoints.label" default="Fifth Points" /></span>
								
									<span class="property-value" aria-labelledby="fifthPoints-label"><g:fieldValue bean="${pointRuleInstance}" field="fifthPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.sixthPoints}">
							<li class="fieldcontain">
								<span id="sixthPoints-label" class="property-label"><g:message code="pointRule.sixthPoints.label" default="Sixth Points" /></span>
								
									<span class="property-value" aria-labelledby="sixthPoints-label"><g:fieldValue bean="${pointRuleInstance}" field="sixthPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.seventhPoints}">
							<li class="fieldcontain">
								<span id="seventhPoints-label" class="property-label"><g:message code="pointRule.seventhPoints.label" default="Seventh Points" /></span>
								
									<span class="property-value" aria-labelledby="seventhPoints-label"><g:fieldValue bean="${pointRuleInstance}" field="seventhPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.eighthPoints}">
							<li class="fieldcontain">
								<span id="eighthPoints-label" class="property-label"><g:message code="pointRule.eighthPoints.label" default="Eighth Points" /></span>
								
									<span class="property-value" aria-labelledby="eighthPoints-label"><g:fieldValue bean="${pointRuleInstance}" field="eighthPoints"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${pointRuleInstance?.ruleTemplate}">
							<li class="fieldcontain">
								<span id="ruleTemplate-label" class="property-label"><g:message code="pointRule.ruleTemplate.label" default="Rule Template" /></span>
								
									<span class="property-value" aria-labelledby="ruleTemplate-label"><g:link controller="ruleTemplate" action="show" id="${pointRuleInstance?.ruleTemplate?.id}">${pointRuleInstance?.ruleTemplate?.encodeAsHTML()}</g:link></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:pointRuleInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${pointRuleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
