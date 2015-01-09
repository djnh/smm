package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SportsMeetingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SportsMeeting.list(params), model:[sportsMeetingInstanceCount: SportsMeeting.count(), ActivateAportsMeeting: SportsMeeting.findByActivate("1")]
    }

    def show(SportsMeeting sportsMeetingInstance) {
        respond sportsMeetingInstance
    }

    def create() {
        respond new SportsMeeting(params)
    }

    @Transactional
    def save(SportsMeeting sportsMeetingInstance) {
        if (sportsMeetingInstance == null) {
            notFound()
            return
        }

        if (sportsMeetingInstance.hasErrors()) {
            respond sportsMeetingInstance.errors, view:'create'
            return
        }
		
		SportsMeeting.executeUpdate("update SportsMeeting set activate=false")
		
        sportsMeetingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sportsMeeting.label', default: 'SportsMeeting'), sportsMeetingInstance.id])
                redirect (action:'index')
            }
            '*' { respond sportsMeetingInstance, [status: CREATED] }
        }
    }

    def edit(SportsMeeting sportsMeetingInstance) {
        respond sportsMeetingInstance
    }

    @Transactional
    def update(SportsMeeting sportsMeetingInstance) {
        if (sportsMeetingInstance == null) {
            notFound()
            return
        }

        if (sportsMeetingInstance.hasErrors()) {
            respond sportsMeetingInstance.errors, view:'edit'
            return
        }

        sportsMeetingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SportsMeeting.label', default: 'SportsMeeting'), sportsMeetingInstance.id])
                redirect (action:'index')
            }
            '*'{ respond sportsMeetingInstance, [status: OK] }
        }
    }
	
	@Transactional
	def activate(SportsMeeting sportsMeetingInstance) {
		if (sportsMeetingInstance == null) {
			notFound()
			return
		}

		if (sportsMeetingInstance.hasErrors()) {
			respond sportsMeetingInstance.errors, view:'index'
			return
		}
		
		SportsMeeting.executeUpdate("update SportsMeeting set activate=false")

		sportsMeetingInstance.activate = true
		sportsMeetingInstance.save flush:true

		redirect (action:'index')
	}
	
	@Transactional
	def close(SportsMeeting sportsMeetingInstance) {
		if (sportsMeetingInstance == null) {
			notFound()
			return
		}

		if (sportsMeetingInstance.hasErrors()) {
			respond sportsMeetingInstance.errors, view:'index'
			return
		}
		
		sportsMeetingInstance.activate = false
		sportsMeetingInstance.save flush:true

		redirect (action:'index')
	}


    @Transactional
    def delete(SportsMeeting sportsMeetingInstance) {

        if (sportsMeetingInstance == null) {
            notFound()
            return
        }
		
		if (sportsMeetingInstance.activate) {
			flash.message = '该运动会还处于激活状态，请关闭后再进行删除操作。 '
			redirect action:"index"
			return
		}

        sportsMeetingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SportsMeeting.label', default: 'SportsMeeting'), sportsMeetingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sportsMeeting.label', default: 'SportsMeeting'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
