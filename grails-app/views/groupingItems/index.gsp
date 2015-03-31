
<%@ page import="com.xinnuo.smm.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<title>项目分组分道</title>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" action="index">项目分组分道</g:link>
		        </li>
		    </ul>
		</div>
		<g:if test="${flash.message}">
       	<div class="alert alert-info">${flash.message}</div>
       	</g:if>
		<div id="list-item" class="row">
	        <div class="box col-md-12">
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2>未分组项目列表</h2>
	                </div>
	                <div class="box-content">
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>${message(code: 'item.id.label', default: 'Id')}</th>
	                            
								<th>${message(code: 'item.name.label', default: 'Name')}</th>
								
								<th>${message(code: 'item.remark.label', default: 'Remark')}</th>
								
								<th>${message(code: 'default.actions.label', default: 'Actions')}</th>
								
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${notGroupedItems}" status="i" var="itemInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td>${fieldValue(bean: itemInstance, field: "id")}</td>
								
									<td>${fieldValue(bean: itemInstance, field: "name")}</td>
									
									<td>${fieldValue(bean: itemInstance, field: "remark")}</td>
								
									<td>
										<g:link class="btn btn-info" action="reset" id="${itemInstance.id}">分组</g:link>
							        </td>
								
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	        </div>
	        
	        <div class="box col-md-12">
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2>已分组项目列表</h2>
	                </div>
	                <div class="box-content">
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>${message(code: 'item.id.label', default: 'Id')}</th>
	                            
								<th>${message(code: 'item.name.label', default: 'Name')}</th>
								
								<th>${message(code: 'item.remark.label', default: 'Remark')}</th>
								
								<th>${message(code: 'default.actions.label', default: 'Actions')}</th>
								
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${groupedItems}" status="i" var="itemInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td>${fieldValue(bean: itemInstance, field: "id")}</td>
								
									<td>${fieldValue(bean: itemInstance, field: "name")}</td>
									
									<td>${fieldValue(bean: itemInstance, field: "remark")}</td>
								
									<td>
										<g:form role="form" url="[resource:itemInstance, action:'delete']" method="DELETE">
											<g:link class="btn btn-primary" action="view" id="${itemInstance.id}">查看分组情况</g:link>
							        		<g:link class="btn btn-info" action="reset" id="${itemInstance.id}" onclick="return confirm('所有现存分组信息将丢失，确实要重新分组吗?');">重新分组</g:link>
							        	</g:form>
							        </td>
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	        </div>
	
	    </div>
	</body>
</html>
