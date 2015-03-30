package com.xinnuo.smm

import grails.transaction.Transactional;

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
	
	@Transactional
	def update(Athlete athleteInstance) {
		if (athleteInstance == null) {
			notFound()
			return
		}

		if (athleteInstance.hasErrors()) {
			respond athleteInstance.errors, view:'edit'
			return
		}
		
		if(athleteInstance.isDirty('sex')){
			Result.deleteAll(Result.findAllByAthlete(athleteInstance))
		}

		athleteInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'athlete.label', default: 'Athlete'), athleteInstance.id])
				redirect (action:'index')
			}
			'*'{ respond athleteInstance, [status: OK] }
		}
	}

}
