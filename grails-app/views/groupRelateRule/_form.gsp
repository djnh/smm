<%@ page import="com.xinnuo.smm.GroupRelateRule" %>

<script type="text/javascript">
$(document).ready(function()
{
	$("form[role='form']").submit(function(){
		var groupByHigherGroup = $("#groupByHigherGroup").val();
		var groupByLowerGroup = $("#groupByLowerGroup").val();
		if(groupByHigherGroup == groupByLowerGroup){
			alert("高水平组和低水平组不能是同一组");
			return false;
		}
	});
	
});
</script>
	<div class="alert alert-info">
		<p>规则说明：高水平组运动员成绩必须高于低水平组运动员(同名次或第一名)，才有积分。</p>           	
	</div>
	<div class="form-group">
		<div class="input-group ${hasErrors(bean: groupRelateRuleInstance, field: 'type', 'error')} required">
			<span class="input-group-addon">
				<g:message code="groupRelateRule.type.label" default="Type" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="type" name="type.id" from="${com.xinnuo.smm.GroupRelateRuleType.list()}" optionKey="id" optionValue="name" required="" value="${groupRelateRuleInstance?.type?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: groupRelateRuleInstance, field: 'groupByHigherGroup', 'error')} required">
			<span class="input-group-addon">
				<g:message code="groupRelateRule.groupByHigherGroup.label" default="Group By Higher Group" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="groupByHigherGroup" name="groupByHigherGroup.id" from="${com.xinnuo.smm.RaceGroup.list()}" optionKey="id" optionValue="name" required="" value="${groupRelateRuleInstance?.groupByHigherGroup?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

	<div class="form-group">
		<div class="input-group ${hasErrors(bean: groupRelateRuleInstance, field: 'groupByLowerGroup', 'error')} required">
			<span class="input-group-addon">
				<g:message code="groupRelateRule.groupByLowerGroup.label" default="Group By Lower Group" />
				<span class="required-indicator">*</span>
			</span>
			<g:select id="groupByLowerGroup" name="groupByLowerGroup.id" from="${com.xinnuo.smm.RaceGroup.list()}" optionKey="id" optionValue="name" required="" value="${groupRelateRuleInstance?.groupByLowerGroup?.id}" class="many-to-one" class="form-control" />

		</div>
	</div>

