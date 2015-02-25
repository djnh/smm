package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BreakRuleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			params.max = Math.min(max ?: 10, 100)
			def list = BreakRule.findAllByRuleTemplate(activeSportsMeeting.ruleTemplate, params)
			respond list, model:[breakRuleInstanceCount: list.size()]
		}
		else{
			render "当前没有可用的运动会"
		}
    }

    def show(BreakRule breakRuleInstance) {
        respond breakRuleInstance
    }

    def create() {
        respond new BreakRule(params)
    }

    @Transactional
    def save(BreakRule breakRuleInstance) {
        if (breakRuleInstance == null) {
            notFound()
            return
        }

        if (breakRuleInstance.hasErrors()) {
            respond breakRuleInstance.errors, view:'create'
            return
        }
		
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			breakRuleInstance.ruleTemplate = activeSportsMeeting.ruleTemplate
		}
		else{
			render "当前没有可用的运动会"
		}

        breakRuleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'breakRule.label', default: 'BreakRule'), breakRuleInstance.id])
				redirect (action:'index')
            }
            '*' { respond breakRuleInstance, [status: CREATED] }
        }
    }

    def edit(BreakRule breakRuleInstance) {
        respond breakRuleInstance
    }

    @Transactional
    def update(BreakRule breakRuleInstance) {
        if (breakRuleInstance == null) {
            notFound()
            return
        }

        if (breakRuleInstance.hasErrors()) {
            respond breakRuleInstance.errors, view:'edit'
            return
        }

        breakRuleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'breakRule.label', default: 'BreakRule'), breakRuleInstance.id])
                redirect (action:'index')
            }
            '*'{ respond breakRuleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BreakRule breakRuleInstance) {

        if (breakRuleInstance == null) {
            notFound()
            return
        }

        breakRuleInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'breakRule.label', default: 'BreakRule'), breakRuleInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'breakRule.label', default: 'BreakRule'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
