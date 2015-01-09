package com.xinnuo.smm

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
	}

}
