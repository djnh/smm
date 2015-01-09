
<%@ page import="com.xinnuo.smm.SportsMeeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<g:set var="entityName" value="${message(code: 'sportsMeeting.label', default: 'SportsMeeting')}" />
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
		<div id="show-sportsMeeting" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2><g:message code="default.show.label" args="[entityName]" /></h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<ol class="property-list sportsMeeting">
						
							<g:if test="${sportsMeetingInstance?.name}">
							<li class="fieldcontain">
								<span id="name-label" class="property-label"><g:message code="sportsMeeting.name.label" default="Name" /></span>
								
									<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${sportsMeetingInstance}" field="name"/></span>
								
							</li>
							</g:if>
							
							<g:if test="${sportsMeetingInstance?.times}">
							<li class="fieldcontain">
								<span id="times-label" class="property-label"><g:message code="sportsMeeting.times.label" default="Times" /></span>
								
									<span class="property-value" aria-labelledby="times-label"><g:fieldValue bean="${sportsMeetingInstance}" field="times"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.entrepreneurOrg}">
							<li class="fieldcontain">
								<span id="entrepreneurOrg-label" class="property-label"><g:message code="sportsMeeting.entrepreneurOrg.label" default="Entrepreneur Org" /></span>
								
									<span class="property-value" aria-labelledby="entrepreneurOrg-label"><g:fieldValue bean="${sportsMeetingInstance}" field="entrepreneurOrg"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.undertakeOrg}">
							<li class="fieldcontain">
								<span id="undertakeOrg-label" class="property-label"><g:message code="sportsMeeting.undertakeOrg.label" default="Undertake Org" /></span>
								
									<span class="property-value" aria-labelledby="undertakeOrg-label"><g:fieldValue bean="${sportsMeetingInstance}" field="undertakeOrg"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.jointOrg}">
							<li class="fieldcontain">
								<span id="jointOrg-label" class="property-label"><g:message code="sportsMeeting.jointOrg.label" default="Joint Org" /></span>
								
									<span class="property-value" aria-labelledby="jointOrg-label"><g:fieldValue bean="${sportsMeetingInstance}" field="jointOrg"/></span>
								
							</li>
							</g:if>
							
							<g:if test="${sportsMeetingInstance?.startTime}">
							<li class="fieldcontain">
								<span id="startTime-label" class="property-label"><g:message code="sportsMeeting.startTime.label" default="Start Time" /></span>
								
									<span class="property-value" aria-labelledby="startTime-label"><g:formatDate date="${sportsMeetingInstance?.startTime}" /></span>
								
							</li>
							</g:if>
							
							<g:if test="${sportsMeetingInstance?.endTime}">
							<li class="fieldcontain">
								<span id="endTime-label" class="property-label"><g:message code="sportsMeeting.endTime.label" default="End Time" /></span>
								
									<span class="property-value" aria-labelledby="endTime-label"><g:formatDate date="${sportsMeetingInstance?.endTime}" /></span>
								
							</li>
							</g:if>
							
							<g:if test="${sportsMeetingInstance?.heldLocation}">
							<li class="fieldcontain">
								<span id="heldLocation-label" class="property-label"><g:message code="sportsMeeting.heldLocation.label" default="Held Location" /></span>
								
									<span class="property-value" aria-labelledby="heldLocation-label"><g:fieldValue bean="${sportsMeetingInstance}" field="heldLocation"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.committalOrg}">
							<li class="fieldcontain">
								<span id="committalOrg-label" class="property-label"><g:message code="sportsMeeting.committalOrg.label" default="Committal Org" /></span>
								
									<span class="property-value" aria-labelledby="committalOrg-label"><g:fieldValue bean="${sportsMeetingInstance}" field="committalOrg"/></span>
								
							</li>
							</g:if>
						
							
							<g:if test="${sportsMeetingInstance?.remark}">
							<li class="fieldcontain">
								<span id="remark-label" class="property-label"><g:message code="sportsMeeting.remark.label" default="Remark" /></span>
								
									<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${sportsMeetingInstance}" field="remark"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.pluralismMax}">
							<li class="fieldcontain">
								<span id="pluralismMax-label" class="property-label"><g:message code="sportsMeeting.pluralismMax.label" default="Pluralism Max" /></span>
								
									<span class="property-value" aria-labelledby="pluralismMax-label"><g:fieldValue bean="${sportsMeetingInstance}" field="pluralismMax"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.singleItemMin}">
							<li class="fieldcontain">
								<span id="singleItemMin-label" class="property-label"><g:message code="sportsMeeting.singleItemMin.label" default="Single Item Min" /></span>
								
									<span class="property-value" aria-labelledby="singleItemMin-label"><g:fieldValue bean="${sportsMeetingInstance}" field="singleItemMin"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.signUpRemark}">
							<li class="fieldcontain">
								<span id="signUpRemark-label" class="property-label"><g:message code="sportsMeeting.signUpRemark.label" default="Sign Up Remark" /></span>
								
									<span class="property-value" aria-labelledby="signUpRemark-label"><g:fieldValue bean="${sportsMeetingInstance}" field="signUpRemark"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.activate}">
							<li class="fieldcontain">
								<span id="activate-label" class="property-label"><g:message code="sportsMeeting.activate.label" default="Activate" /></span>
								
									<span class="property-value" aria-labelledby="activate-label"><g:fieldValue bean="${sportsMeetingInstance}" field="activate"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${sportsMeetingInstance?.startSignUp}">
							<li class="fieldcontain">
								<span id="startSignUp-label" class="property-label"><g:message code="sportsMeeting.startSignUp.label" default="Start Sign Up" /></span>
								
									<span class="property-value" aria-labelledby="startSignUp-label"><g:fieldValue bean="${sportsMeetingInstance}" field="startSignUp"/></span>
								
							</li>
							</g:if>
						
						</ol>
						<g:form role="form" url="[resource:sportsMeetingInstance, action:'delete']" method="DELETE">
		                	<g:link class="btn btn-info" action="edit" resource="${sportsMeetingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		                	<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
