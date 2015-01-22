package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DetailPropertyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DetailProperty.list(params), model:[detailPropertyInstanceCount: DetailProperty.count(), activateSportsMeeting: SportsMeeting.findByActivate(true)]
    }

    def show(DetailProperty detailPropertyInstance) {
        respond detailPropertyInstance
    }

    def create() {
        respond new DetailProperty(params)
    }

    @Transactional
    def save(DetailProperty detailPropertyInstance) {
        if (detailPropertyInstance == null) {
            notFound()
            return
        }

        if (detailPropertyInstance.hasErrors()) {
            respond detailPropertyInstance.errors, view:'create'
            return
        }
		
        detailPropertyInstance.sportsMeeting = SportsMeeting.findByActivate(true)
		
		detailPropertyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'detailProperty.label', default: 'DetailProperty'), detailPropertyInstance.id])
                redirect action:"index"
            }
            '*' { respond detailPropertyInstance, [status: CREATED] }
        }
    }

    def edit(DetailProperty detailPropertyInstance) {
        respond detailPropertyInstance
    }

    @Transactional
    def update(DetailProperty detailPropertyInstance) {
        if (detailPropertyInstance == null) {
            notFound()
            return
        }

        if (detailPropertyInstance.hasErrors()) {
            respond detailPropertyInstance.errors, view:'edit'
            return
        }

        detailPropertyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'detailProperty.label', default: 'DetailProperty'), detailPropertyInstance.id])
                redirect action:"index"
            }
            '*'{ respond detailPropertyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DetailProperty detailPropertyInstance) {

        if (detailPropertyInstance == null) {
            notFound()
            return
        }

        detailPropertyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'detailProperty.label', default: 'DetailProperty'), detailPropertyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'detailProperty.label', default: 'DetailProperty'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
