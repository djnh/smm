package com.xinnuo.smm

class Athlete {

    String name
	Integer sex
	String number
	Org org

	static hasMany = [results: Result]
	static belongsTo = [Org]

	static mapping = {
	}

	static constraints = {
		name maxSize: 50
		number nullable: true, maxSize: 5
	}
}
