package com.xinnuo.smm

class RuleTemplateController {

    static scaffold = RuleTemplate
	
	def index(Integer max) {
		def activeSportsMeeting = SportsMeeting.findByActivate(true)
		if(activeSportsMeeting){
			redirect(action:'edit',id:activeSportsMeeting.ruleTemplate.id)
		}
		else{
			render "当前没有可用的运动会"
		}
	}
}
