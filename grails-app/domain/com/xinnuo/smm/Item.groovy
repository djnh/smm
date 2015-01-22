package com.xinnuo.smm

class Item {

	String name
	Integer type
	Integer tryout
	Integer parentItemId
	Integer groupMemberMax
	Integer groupsSimultaneity
	Integer orgMax
	String remark

	static mapping = {
	}

	static constraints = {
		name maxSize: 50
		remark nullable: true
	}
}
