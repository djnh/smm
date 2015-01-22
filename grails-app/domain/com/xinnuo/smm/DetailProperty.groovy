package com.xinnuo.smm

class DetailProperty {

    String name
	String content
	SportsMeeting sportsMeeting

	static belongsTo = [SportsMeeting]

	static mapping = {
	}

	static constraints = {
		name maxSize: 50
		sportsMeeting nullable:true
	}
}
