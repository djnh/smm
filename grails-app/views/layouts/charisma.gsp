<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><g:layoutTitle default="Free HTML5 Bootstrap Admin Template"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">

<!-- The styles -->
<link href="${request.contextPath}/charisma/css/bootstrap-cerulean.min.css" rel="stylesheet">

<link href="${request.contextPath}/charisma/css/charisma-app.css" rel="stylesheet">
<link href='${request.contextPath}/charisma/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
<link href='${request.contextPath}/charisma/bower_components/chosen/chosen.min.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/css/jquery.noty.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/css/noty_theme_default.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/css/elfinder.min.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/css/elfinder.theme.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/css/uploadify.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/css/animate.min.css' rel='stylesheet'>
<link href='${request.contextPath}/charisma/bower_components/jQuery-Timepicker-Addon/dist/jquery-ui-timepicker-addon.min.css' rel='stylesheet'>

<!-- jQuery -->
<script src="${request.contextPath}/charisma/bower_components/jquery/jquery.min.js"></script>

<!-- The fav icon -->
<link rel="shortcut icon" href="${request.contextPath}/charisma/img/favicon.ico">
<jqui:resources />
<script src="${request.contextPath}/charisma/js/jquery.ui.datepicker-zh-CN.js"></script>
<script src="${request.contextPath}/charisma/bower_components/jQuery-Timepicker-Addon/dist/jquery-ui-timepicker-addon.min.js"></script>
<script src="${request.contextPath}/charisma/bower_components/jQuery-Timepicker-Addon/dist/i18n/jquery-ui-timepicker-zh-CN.js"></script>
<script src="${request.contextPath}/charisma/bower_components/jQuery-Timepicker-Addon/dist/jquery-ui-sliderAccess.js"></script>
<g:layoutHead/>


</head>

<body>
	<!-- topbar starts -->
	<div class="navbar navbar-default" role="navigation">

		<div class="navbar-inner">
			<button type="button" class="navbar-toggle pull-left animated flip">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"> <img
				alt="Charisma Logo" src="${request.contextPath}/charisma/img/logo20.png" class="hidden-xs" /> <span>Charisma</span></a>

			<!-- user dropdown starts -->
			<div class="btn-group pull-right">
				<button class="btn btn-default dropdown-toggle"
					data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i><span
						class="hidden-sm hidden-xs"> admin</span> <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#">Profile</a></li>
					<li class="divider"></li>
					<li><a href="login.html">Logout</a></li>
				</ul>
			</div>
			<!-- user dropdown ends -->

			<ul class="collapse navbar-collapse nav navbar-nav top-menu">
				<li><a href="#"><i class="glyphicon glyphicon-globe"></i>
						Visit Site</a></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"><i
						class="glyphicon glyphicon-star"></i> Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
				<li>
					<form class="navbar-search pull-left">
						<input placeholder="Search"
							class="search-query form-control col-md-10" name="query"
							type="text">
					</form>
				</li>
			</ul>

		</div>
	</div>
	<!-- topbar ends -->
	<div class="ch-container">
		<div class="row">

			<!-- left menu starts -->
			<div class="col-sm-2 col-lg-2">
				<div class="sidebar-nav">
					<div class="nav-canvas">
						<div class="nav-sm nav nav-stacked"></div>
						<ul class="nav nav-pills nav-stacked main-menu">
	                        <li class="nav-header">Main</li>
	                        <li class="accordion">
	                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span> 系统维护</span></a>
	                            <ul class="nav nav-pills nav-stacked">
	                                <li><g:link controller="systemUser"> 查看账号</g:link></li>
	                                <li><g:link controller="systemUser" action="create"> 添加账号</g:link></li>
	                            </ul>
	                        </li>
	                        
	                        <li><g:link controller="sportsMeeting"><i class="glyphicon glyphicon-home"></i><span> 运动会管理</span></g:link>
	                        </li>
	                        
	                        <li class="accordion">
	                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span> 赛前设置</span></a>
	                            <ul class="nav nav-pills nav-stacked">
	                                <li><g:link controller="detailProperty"> 设置细分属性</g:link></li>
	                                <li><g:link controller="item"> 设置项目</g:link></li>
	                                <li><g:link controller="raceGroup"> 设置组别</g:link></li>
	                                <li><g:link controller="org"> 设置参赛单位</g:link></li>
	                                <li><g:link controller="ruleTemplate"> 设置基本积分规则</g:link></li>
	                                <li><g:link controller="pointRule"> 设置人数不足积分规则</g:link></li>
	                                <li><g:link controller="breakRule"> 设置破纪录加分规则</g:link></li>
	                                <li><g:link controller="signUpRule"> 设置报名规则</g:link></li>
	                                <li><g:link controller="record"> 历史成绩录入</g:link></li>
	                            </ul>
	                        </li>
	                        
	                        <li><g:link controller="athlete"><i class="glyphicon glyphicon-home"></i><span> 在线报名</span></g:link>
	                        </li>
	                        
	                        <li class="accordion">
	                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span> 自动编排</span></a>
	                            <ul class="nav nav-pills nav-stacked">
	                                <li><g:link controller="produceNumber"> 生成运动员编号</g:link></li>
	                            </ul>
	                        </li>
					</div>
				</div>
			</div>
			<!--/span-->
			<!-- left menu ends -->

			<noscript>
				<div class="alert alert-block col-md-12">
					<h4 class="alert-heading">Warning!</h4>

					<p>
						You need to have <a href="" target="_blank">JavaScript</a> enabled
						to use this site.
					</p>
				</div>
			</noscript>

			<div id="content" class="col-lg-10 col-sm-10">
				<g:layoutBody/>
			</div>
			<!--/#content.col-md-0-->
		</div>
		<!--/fluid-row-->
		
		

	</div>
	<!--/.fluid-container-->

	<!-- external javascript -->

	<script src="${request.contextPath}/charisma/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- library for cookie management -->
	<script src="${request.contextPath}/charisma/js/jquery.cookie.js"></script>
	<!-- calender plugin -->
	<script src='${request.contextPath}/charisma/bower_components/moment/min/moment.min.js'></script>
	<script src='${request.contextPath}/charisma/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='${request.contextPath}/charisma/js/jquery.dataTables.min.js'></script>

	<!-- select or dropdown enhancer -->
	<script src="${request.contextPath}/charisma/bower_components/chosen/chosen.jquery.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="${request.contextPath}/charisma/bower_components/colorbox/jquery.colorbox-min.js"></script>
	<!-- notification plugin -->
	<script src="${request.contextPath}/charisma/js/jquery.noty.js"></script>
	<!-- library for making tables responsive -->
	<script src="${request.contextPath}/charisma/bower_components/responsive-tables/responsive-tables.js"></script>
	<!-- tour plugin -->
	<script src="${request.contextPath}/charisma/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
	<!-- star rating plugin -->
	<script src="${request.contextPath}/charisma/js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="${request.contextPath}/charisma/js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="${request.contextPath}/charisma/js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="${request.contextPath}/charisma/js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="${request.contextPath}/charisma/js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="${request.contextPath}/charisma/js/charisma.js"></script>

</body>
</html>
