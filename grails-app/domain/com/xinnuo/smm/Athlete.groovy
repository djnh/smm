package com.xinnuo.smm

class Athlete {

    String name
	GroupSex sex
	String number
	Org org

	static belongsTo = [Org]

	static mapping = {
	}

	static constraints = {
		org()
		name maxSize: 50
		sex()
		number nullable: true, maxSize: 5
	}
	
	String toString() {
		"$name"
	}
}
