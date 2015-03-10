package com.xinnuo.smm

import grails.transaction.Transactional;

class RecordController {

    static scaffold = Record
	
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		print params
		def query = Record.where {
			if(params.item){
				item.id==params.item.id
			}
			if (params.raceGroup){
				raceGroup.id==params.raceGroup.id
			}
			if(params.grade){
				grade.id==params.grade.id
			}
		}
		def results = query.list(params)
		respond results, model:[recordInstanceCount: query.size()]
	}
	
	@Transactional
    def save(Record recordInstance) {
        if (recordInstance == null) {
            notFound()
            return
        }

        if (recordInstance.hasErrors()) {
            respond recordInstance.errors, view:'create'
            return
        }
		
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			recordInstance.sportsMeeting = activeSportsMeeting
		}
		else{
			render "当前没有可用的运动会"
		}

        recordInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'record.label', default: 'Record'), recordInstance.id])
				redirect (action:'index')
            }
            '*' { respond recordInstance, [status: CREATED] }
        }
    } 
}
