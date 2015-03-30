<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<title>项目分组</title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" action="index">项目分组分道</g:link>
		        </li>
		    </ul>
		</div>
		<div id="create-athlete" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2>项目分组</h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
		            	<g:hasErrors bean="${athleteInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${athleteInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
						</g:hasErrors>
						<g:form role="form" url="[action:'submit']">
		                    <div class="form-group">
								<div class="input-group ${hasErrors(bean: athleteInstance, field: 'org', 'error')} required">
									<span class="input-group-addon">名称</span>
									<input name="item" readonly="readonly" value="${session.item}" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group ${hasErrors(bean: athleteInstance, field: 'org', 'error')} required">
									<span class="input-group-addon">分组方法</span>
									<select name="groupingType" class="form-control">
										<option value="随机">随机</option>
	   									<option value="蛇形">蛇形</option>
	   								</select>
								</div>
							</div>
							<p class="center"><g:submitButton name="create" class="btn btn-primary" value="确定" /></p>
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
