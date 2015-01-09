package com.xinnuo.smm

class SystemRole {

    String name
	String privilege

	static mapping = {
	}

	static constraints = {
		name maxSize: 50
		privilege maxSize: 5
	}
}
