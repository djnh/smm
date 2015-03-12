package com.xinnuo.smm



import static org.springframework.http.HttpStatus.*

import grails.transaction.Transactional

@Transactional(readOnly = true)
class ResultController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		if(params.athlete){
			def athlete = Athlete.get(params.athlete);
//			assert null != athlete.org
//			assert null != athlete.sex
			session.currentAthlete = athlete;
		}
		assert null!=session.currentAthlete
        params.max = Math.min(max ?: 10, 100)
		def results = Result.findAllByAthlete(session.currentAthlete);
        respond results, model:[resultInstanceCount: results.size()]
    }

    def show(Result resultInstance) {
        respond resultInstance
    }

    def create() {
        respond new Result(params)
    }

    @Transactional
    def save(Result resultInstance) {
        if (resultInstance == null) {
            notFound()
            return
        }

        if (resultInstance.hasErrors()) {
            respond resultInstance.errors, view:'create'
            return
        }

        resultInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'result.label', default: 'Result'), resultInstance.id])
				redirect (action:'index')
            }
            '*' { respond resultInstance, [status: CREATED] }
        }
    }

    def edit(Result resultInstance) {
        respond resultInstance
    }

    @Transactional
    def update(Result resultInstance) {
        if (resultInstance == null) {
            notFound()
            return
        }

        if (resultInstance.hasErrors()) {
            respond resultInstance.errors, view:'edit'
            return
        }

        resultInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'result.label', default: 'Result'), resultInstance.id])
                redirect (action:'index')
            }
            '*'{ respond resultInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Result resultInstance) {

        if (resultInstance == null) {
            notFound()
            return
        }

        resultInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'result.label', default: 'Result'), resultInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'result.label', default: 'Result'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
