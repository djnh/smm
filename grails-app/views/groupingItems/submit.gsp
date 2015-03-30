
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
		<div id="list-item" class="row">
	        <div class="box col-md-12">
	            <div class="box-inner">
	                <div data-original-title="" class="box-header well">
	                    <h2>项目分组结果</h2>
	                </div>
	                <div class="box-content">
	                	<p>
	                	名称: ${session.item}
	                	</p>
	                	<p>
	                	组别: ${session.raceGroup}
	                	</p>
	                	<p>
	                	分组方法: ${session.groupingType}
	                	</p>
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
	                        <g:each in="${session.results}" status="i" var="resultInstance">
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
	                <p class="center">
	                	<g:link class="btn btn-primary" action="cancel">重排</g:link>
	                	<g:link class="btn btn-primary" action="submit">确定</g:link>
	                </p>
	            </div>
	            
	            
	        </div>
	        
			
	    </div>
	</body>
</html>
