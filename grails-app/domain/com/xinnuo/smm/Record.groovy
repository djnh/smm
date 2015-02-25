package com.xinnuo.smm

class Record {

	Item item
    RaceGroup raceGroup
	BreakRuleGrade grade
	String result
	String keeperName
	
	String keeperOrg
	Date keeperTime
	String keeperLocation
	String former
	Date breakTime
	Integer gameId
	SportsMeeting sportsMeeting
	

	static belongsTo = [Item]

	static mapping = {
	}

	static constraints = {
		item()
		raceGroup()
		grade()
		result nullable: true, maxSize: 50
		keeperName nullable: true, maxSize: 50
		keeperOrg nullable: true, maxSize: 50
		keeperTime nullable: true, maxSize: 50
		keeperLocation nullable: true, maxSize: 50
		former nullable: true, maxSize: 50
		breakTime nullable: true
		gameId nullable: true
		sportsMeeting nullable:true
	}
}
