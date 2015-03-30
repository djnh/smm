package com.xinnuo.smm

import java.sql.Time

class Result {

	String signUpResult
	Integer groupNumber
	Integer laneNumber
	Integer checkIn
	String result
	Integer place
	String remark
	BigDecimal points
	BreakRuleType breakType
	BreakRuleGrade breakGrade
	Athlete athlete
	Item item
	RaceGroup raceGroup

	static belongsTo = [Athlete, Item, RaceGroup]

	static mapping = {
	}

	static constraints = {
		signUpResult nullable: true, maxSize: 50
		result nullable: true, maxSize: 50
		remark nullable: true
		points nullable: true
		breakType nullable: true
		breakGrade nullable: true
		athlete nullable: true
		groupNumber nullable:true
		checkIn nullable:true
		laneNumber nullable:true
		place nullable:true
	}
}
