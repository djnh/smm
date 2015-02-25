package com.xinnuo.smm

class BreakRuleGrade {
	
	String name
	BreakRuleType breakRuleType
	
	static belongsTo = [BreakRuleType]

    static constraints = {
    }
	
	String toString() {
		"$name"
	}
}
