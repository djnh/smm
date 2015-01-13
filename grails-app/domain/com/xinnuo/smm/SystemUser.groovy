package com.xinnuo.smm

import org.springframework.validation.Errors;

class SystemUser {

	
	String loginName
	String password
	SystemRole systemRole
	SportsMeeting sportsMeeting

	static hasMany = [databaselogs: DatabaseLog]
	static belongsTo = [SystemRole, SportsMeeting]

	static mapping = {
	}

	static constraints = {
		loginName maxSize: 50
		password maxSize: 50
		sportsMeeting nullable: true
	}
	
}
