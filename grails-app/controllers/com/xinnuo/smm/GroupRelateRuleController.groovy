package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GroupRelateRuleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			params.max = Math.min(max ?: 10, 100)
			def list = GroupRelateRule.findAllByRuleTemplate(activeSportsMeeting.ruleTemplate, params)
			respond list, model:[groupRelateRuleInstanceCount: list.size()]
		}
		else{
			render "当前没有可用的运动会"
		}
    }

    def show(GroupRelateRule groupRelateRuleInstance) {
        respond groupRelateRuleInstance
    }

    def create() {
        respond new GroupRelateRule(params)
    }

    @Transactional
    def save(GroupRelateRule groupRelateRuleInstance) {
        if (groupRelateRuleInstance == null) {
            notFound()
            return
        }
		
		if (params.groupByHigherGroup == params.groupByLowerGroup){
			groupRelateRuleInstance.errors.reject("Higher Group and Lower Group can't be the same", "高水平组和低水平组不能是同一组")
		}

        if (groupRelateRuleInstance.hasErrors()) {
            respond groupRelateRuleInstance.errors, view:'create'
            return
        }
		
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			groupRelateRuleInstance.ruleTemplate = activeSportsMeeting.ruleTemplate
		}
		else{
			render "当前没有可用的运动会"
		}

        groupRelateRuleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'groupRelateRule.label', default: 'GroupRelateRule'), groupRelateRuleInstance.id])
				redirect (action:'index')
            }
            '*' { respond groupRelateRuleInstance, [status: CREATED] }
        }
    }

    def edit(GroupRelateRule groupRelateRuleInstance) {
        respond groupRelateRuleInstance
    }

    @Transactional
    def update(GroupRelateRule groupRelateRuleInstance) {
        if (groupRelateRuleInstance == null) {
            notFound()
            return
        }
		
		if (params.groupByHigherGroup == params.groupByLowerGroup){
			groupRelateRuleInstance.errors.reject("Higher Group and Lower Group can't be the same", "高水平组和低水平组不能是同一组")
		}

        if (groupRelateRuleInstance.hasErrors()) {
            respond groupRelateRuleInstance.errors, view:'edit'
            return
        }
		
        groupRelateRuleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'groupRelateRule.label', default: 'GroupRelateRule'), groupRelateRuleInstance.id])
                redirect (action:'index')
            }
            '*'{ respond groupRelateRuleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GroupRelateRule groupRelateRuleInstance) {

        if (groupRelateRuleInstance == null) {
            notFound()
            return
        }

        groupRelateRuleInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'groupRelateRule.label', default: 'GroupRelateRule'), groupRelateRuleInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupRelateRule.label', default: 'GroupRelateRule'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
