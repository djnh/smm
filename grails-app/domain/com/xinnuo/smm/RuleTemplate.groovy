package com.xinnuo.smm

class RuleTemplate {
	
	String name
	String remark
	Integer firstPoints
	Integer secondPoints
	Integer thirdPoints
	Integer fourthPoints
	Integer fifthPoints
	Integer sixthPoints
	Integer seventhPoints
	Integer eighthPoints
	Integer allRoundPointsTimes
	
	static hasMany = [pointRules:PointRule]

	static mapping = {
	}

	static constraints = {
		name maxSize: 50
		firstPoints()
		secondPoints()
		thirdPoints()
		fourthPoints()
		fifthPoints()
		sixthPoints()
		seventhPoints()
		eighthPoints()
		allRoundPointsTimes()
		remark nullable: true
	}
}
