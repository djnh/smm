package com.xinnuo.smm

class BreakRule {
	
	BreakRuleType type
	BreakRuleGrade grade
	Integer addPoints
	RuleTemplate ruleTemplate

	static belongsTo = [RuleTemplate, BreakRuleGrade, BreakRuleType]

	static mapping = {
	}

    static constraints = {
		type()
		grade()
		addPoints()
		ruleTemplate(nullable:true)
    }
}
