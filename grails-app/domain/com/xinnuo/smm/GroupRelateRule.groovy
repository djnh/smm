package com.xinnuo.smm

class GroupRelateRule {
	
	GroupRelateRuleType type
	RuleTemplate ruleTemplate
	RaceGroup groupByHigherGroup
	RaceGroup groupByLowerGroup

	static belongsTo = [RaceGroup, RuleTemplate, GroupRelateRuleType]

	static mapping = {
	}

    static constraints = {
		type()
		groupByHigherGroup()
		groupByLowerGroup()
		ruleTemplate(nullable:true)
    }
}
