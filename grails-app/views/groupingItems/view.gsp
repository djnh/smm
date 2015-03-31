
<%@ page import="com.xinnuo.smm.Result" %>
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
		<div id="list-result" class="row">
			<div class="box col-md-12">
				<div class="alert alert-info">
				${item }分组情况
				</div>
			</div>
			<g:each in="${groupedResults}" status="i" var="resultsInstance">
		
	        <div class="box col-md-12">
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2>组别:${groupedResults[i][0].raceGroup} 报名人数:${groupedResults[i].size()}</h2>
	                </div>
	                <div class="box-content">
	                    <table class="table table-striped table-bordered responsive">
	                        <thead>
	                        <tr>
	                        	<th>组别</th>
	                            
								<th>道次</th>
								<th>编号</th>
								<th>姓名</th>
								<th>单位</th>
								<th>报名成绩</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <g:each in="${resultsInstance}" status="j" var="resultInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
									<td>${resultInstance.groupNumber}</td>
									<td>${resultInstance.laneNumber}</td>
									<td>${resultInstance.athlete.number}</td>
									<td>${resultInstance.athlete.name}</td>
									<td>${resultInstance.athlete.org}</td>
									<td>${resultInstance.signUpResult}</td>
								</tr>
							</g:each>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	        </div>
	        <!--/span-->
	        
			</g:each>
	    </div>
	</body>
</html>
