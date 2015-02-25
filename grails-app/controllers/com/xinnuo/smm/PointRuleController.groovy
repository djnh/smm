package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class PointRuleController {
	
	static scaffold = PointRule

    def index(Integer max) {
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			params.max = Math.min(max ?: 10, 100)
			def list = PointRule.findAllByRuleTemplate(activeSportsMeeting.ruleTemplate, params)
			respond list, model:[pointRuleInstanceCount: list.size()]
		}
		else{
			render "当前没有可用的运动会"
		}
    }

    @Transactional
    def save(PointRule pointRuleInstance) {
        if (pointRuleInstance == null) {
            notFound()
            return
        }

        if (pointRuleInstance.hasErrors()) {
            respond pointRuleInstance.errors, view:'create'
            return
        }
		
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			pointRuleInstance.ruleTemplate = activeSportsMeeting.ruleTemplate
		}
		else{
			render "当前没有可用的运动会"
		}

        pointRuleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pointRule.label', default: 'PointRule'), pointRuleInstance.id])
				redirect (action:'index')
            }
            '*' { respond pointRuleInstance, [status: CREATED] }
        }
    }

}
