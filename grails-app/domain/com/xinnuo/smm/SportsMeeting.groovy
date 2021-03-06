package com.xinnuo.smm

import java.util.Date;

class SportsMeeting {

    Integer times
	String name
	String entrepreneurOrg
	String undertakeOrg
	String jointOrg
	String committalOrg
	Date startTime
	Date endTime
	String heldLocation
	String remark
	Integer pluralismMax = 1
	Integer singleItemMin = 0
	String signUpRemark
	Boolean activate = true
	Boolean startSignUp = true
	RuleTemplate ruleTemplate
	
	static belongsTo = [RuleTemplate]

	static mapping = {
	}

	static constraints = {
		name maxSize: 50
		entrepreneurOrg maxSize: 50
		undertakeOrg nullable: true, maxSize: 50
		jointOrg nullable: true, maxSize: 50
		committalOrg nullable: true, maxSize: 50
		heldLocation nullable: true, maxSize: 50
		remark nullable: true
		pluralismMax nullable: true
		singleItemMin nullable: true
		signUpRemark nullable: true, maxSize: 50
	}
}
