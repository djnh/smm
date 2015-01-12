<%@ page import="com.xinnuo.smm.SystemUser" %>

<script type="text/javascript">
$(document).ready(function()
{
	$("form[role='form']").submit(function(){
		var password = $("#password").val();
		var repassword = $("#repassword").val();
		if(password != repassword){
			alert("两次输入的密码不符");
			return false;
		}
	});
	
})
</script>
<div class="form-group">
<div class="input-group ${hasErrors(bean: systemUserInstance, field: 'loginName', 'error')} required">
	<span class="input-group-addon">
		<g:message code="systemUser.loginName.label" default="Login Name" />
		<span class="required-indicator">*</span>
	</span>
	<g:textField name="loginName" placeholder="${message(code:'systemUser.loginName.label', default:'Login Name')}" maxlength="50" required="" value="${systemUserInstance?.loginName}" class="form-control"/>

</div>
</div>

<div class="form-group">
<div class="input-group ${hasErrors(bean: systemUserInstance, field: 'password', 'error')} required">
	<span class="input-group-addon">
		<g:message code="systemUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</span>
	<g:passwordField id="password" name="password" placeholder="${message(code:'systemUser.password.label', default:'Password')}" maxlength="50" required="" value="${systemUserInstance?.password}" class="form-control"/>

</div>
</div>

<div class="form-group">
<div class="input-group ${hasErrors(bean: systemUserInstance, field: 'repassword', 'error')} required">
	<span class="input-group-addon">
		<g:message code="systemUser.repassword.label" default="Repassword" />
		<span class="required-indicator">*</span>
	</span>
	<g:passwordField id="repassword" name="repassword" placeholder="${message(code:'systemUser.repassword.label', default:'Repassword')}" maxlength="50" required="" value="${systemUserInstance?.password}" class="form-control"/>

</div>
</div>

<div class="form-group">
<div class="input-group ${hasErrors(bean: systemUserInstance, field: 'systemRole', 'error')} required">
	<span class="input-group-addon">
		<g:message code="systemUser.systemRole.label" default="System Role" />
		<span class="required-indicator">*</span>
	</span>
	<g:select id="systemRole" name="systemRole.id" from="${com.xinnuo.smm.SystemRole.list()}" optionKey="id" optionValue="name" required="" value="${systemUserInstance?.systemRole?.id}" class="form-control"/>

</div>
</div>

