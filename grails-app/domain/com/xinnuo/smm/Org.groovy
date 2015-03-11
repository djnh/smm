package com.xinnuo.smm

class Org {

	String name
	String number
	String remark
	String loginName
	String password

	static hasMany = [accessItems:Item, accessGroups:RaceGroup]

	static mapping = {
	}

	static constraints = {
		name maxSize: 50
		number maxSize: 2
		loginName nullable:true
		password nullable:true
		remark nullable: true, maxSize: 250
		loginName nullable: true, maxSize: 50
		password nullable: true, maxSize: 50, password:true
	}
	String toString() {
		"$name"
	}
}
