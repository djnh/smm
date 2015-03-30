package com.xinnuo.smm

class Item {

	String name
	Type type
	Tryout tryout
	Integer groupMemberMax
	Integer groupsSimultaneity //可同时进行小组数
	Integer orgMax
	String remark

	static hasMany = [raceGroups: RaceGroup, results:Result]
	static belongsTo = [Type, Tryout]

	static mapping = {
		raceGroups lazy: false
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
