package com.xinnuo.smm

class Item {

	String name
	Type type
	Tryout tryout
	Integer groupMemberMax
	Integer groupsSimultaneity
	Integer orgMax
	String remark

	static hasMany = [raceGroups: RaceGroup]
	static belongsTo = [Type, Tryout]

	static mapping = {
	}

	static constraints = {
		type()
		name maxSize: 50
		tryout()
		groupMemberMax()
		groupsSimultaneity()
		orgMax()
		remark nullable: true
	}
	
	String toString() {
		"$name"
	}
}
