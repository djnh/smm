package com.xinnuo.smm

class PointRule {

    Integer lessThan
	Integer moreThan
	Integer getCount
	Integer firstPoints
	Integer secondPoints
	Integer thirdPoints
	Integer fourthPoints
	Integer fifthPoints
	Integer sixthPoints
	Integer seventhPoints
	Integer eighthPoints
	RuleTemplate ruleTemplate

	static belongsTo = [RuleTemplate]

	static mapping = {
	}
	
	static constraints = {
		lessThan()
		moreThan()
		getCount()
		firstPoints()
		secondPoints()
		thirdPoints()
		fourthPoints()
		fifthPoints()
		sixthPoints()
		seventhPoints()
		eighthPoints()
		ruleTemplate(nullable: true)
	}
}
