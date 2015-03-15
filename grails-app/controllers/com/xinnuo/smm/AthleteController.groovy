package com.xinnuo.smm

class AthleteController {

    static scaffold = Athlete
	
	
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def query = Athlete.where {
			if(params.org?.id){
				org.id==params.org.id
			}
			if(params.item?.id){
				results {
					item.id==params.item.id
				}
			}
			if (params.raceGroup?.id){
				results {
					raceGroup.id==params.raceGroup.id
				}
			}
		}
		def results = query.list(params)
		respond results, model:[athleteInstanceCount: query.size()]
	}
}
