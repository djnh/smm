package com.xinnuo.smm

import grails.transaction.Transactional;

class SignUpRuleController {

	def index = {
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			redirect(action:"edit",id:activeSportsMeeting.id)
		}
		else{
			render "当前没有可用的运动会"
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
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'sportsMeeting.label', default: 'SportsMeeting'),
					sportsMeetingInstance.id
				])
				redirect (action:'index')
			}
			'*'{ respond sportsMeetingInstance, [status: OK] }
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
