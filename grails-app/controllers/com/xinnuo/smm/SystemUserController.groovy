package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SystemUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SystemUser.list(params), model:[systemUserInstanceCount: SystemUser.count(), activateSportsMeeting: SportsMeeting.findByActivate(true)]
    }

    def show(SystemUser systemUserInstance) {
        respond systemUserInstance
    }

    def create() {
        respond new SystemUser(params), model:[activateSportsMeeting: SportsMeeting.findByActivate(true)]
    }

    @Transactional
    def save(SystemUser systemUserInstance) {
        if (systemUserInstance == null) {
            notFound()
            return
        }
		
		if (!(params.password == params.repassword)){
			systemUserInstance.errors.reject("password not matched", "两次输入的密码不符")
		}

        if (systemUserInstance.hasErrors()) {
            respond systemUserInstance.errors, view:'create'
            return
        }

        systemUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'systemUser.label', default: 'SystemUser'), systemUserInstance.id])
                redirect (action:'index')
            }
            '*' { respond systemUserInstance, [status: CREATED] }
        }
    }

    def edit(SystemUser systemUserInstance) {
        respond systemUserInstance
    }

    @Transactional
    def update(SystemUser systemUserInstance) {
        if (systemUserInstance == null) {
            notFound()
            return
        }
		
		if (!(params.password == params.repassword)){
			systemUserInstance.errors.reject("password not matched", "两次输入的密码不符")
		}

        if (systemUserInstance.hasErrors()) {
            respond systemUserInstance.errors, view:'edit'
            return
        }

        systemUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SystemUser.label', default: 'SystemUser'), systemUserInstance.id])
                redirect (action:'index')
            }
            '*'{ respond systemUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SystemUser systemUserInstance) {

        if (systemUserInstance == null) {
            notFound()
            return
        }

        systemUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'systemUser.label', default: 'SystemUser'), systemUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemUser.label', default: 'SystemUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
