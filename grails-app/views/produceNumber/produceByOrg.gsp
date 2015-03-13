
<%@ page import="com.xinnuo.smm.Record" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="charisma">
		<title>生成运动员编号</title>
		<script type="text/javascript">
		function validate(){
			var produceType = $('input:radio:checked');
			if(produceType.length == 0){
				alert ('生成方式不可为空');
				return false;
			}
			return true;
		}
		</script>
	</head>
	<body>
		<div>
		    <ul class="breadcrumb">
		        <li>
		            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		        </li>
		        <li>
		            <g:link class="list" action="index">生成运动员编号</g:link>
		        </li>
		    </ul>
		</div>
		<div id="create-record" class="row">
		    <div class="box col-md-12">
		        <div class="box-inner">
		            <div data-original-title="" class="box-header well">
		                <h2>生成运动员编号</h2>
		            </div>
		            <div class="box-content">
		            	<g:if test="${flash.message}">
		            	<div class="alert alert-info">${flash.message}</div>
		            	</g:if>
						<g:form role="form" url="[action:'produce']" onsubmit=" return validate()">
							<div class="form-group">
		                        <label for="exampleInputEmail1">请您选择生成运动员编号的方式</label>
		                    </div>
							<div class="form-group">
		                        <label class="radio-inline">
				                    <input type="radio" name="produceType" id="produceType1" value="inseparate"> 男女连续
				                </label>
				                <label class="radio-inline">
				                    <input type="radio" name="produceType" id="produceType2" value="separate"> 分开编号
				                </label>
		                    </div>
		                    <g:submitButton name="create" class="btn btn-primary" value="确定" />
		                </g:form>
		            </div>
		        </div>
		    </div>
		    <!--/span-->
		</div>
	</body>
</html>
