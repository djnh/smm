package com.xinnuo.smm


class RaceGroup {

	String name
	GroupSex groupSex
	String remark

	static mapping = {
	}

	static constraints = {
		name maxSize: 50 , sortable: false
		remark nullable: true
	}
	
	String toString(){
		"${name}"
	}
}
