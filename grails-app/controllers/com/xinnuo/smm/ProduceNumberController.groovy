package com.xinnuo.smm

import java.text.DecimalFormat

class ProduceNumberController {

    def index() { }
	
	def produceByOrg() {}
	
	def produceBySeparate(){}
	
	def produce(Integer max){
		if(params.produceType == "org"){
			redirect(action:'produceByOrg')
		}
		else if(params.produceType == "separate"){
			redirect(action:'produceBySeparate')
		}
		else if(params.produceType == "inseparate"){
			def df = new DecimalFormat("00")
			for(org in Org.list()){
				def counter = 1;
				for(athlete in Athlete.findAllByOrg(org)){
					athlete.number = df.format(org.id) + df.format(counter);
					counter ++
				}
			}
		}
		else if(params.produceType == "race"){
			def df = new DecimalFormat("00")
			for(item in Item.list()){
				def counter = 1;
				for(result in Result.findAllByItem(item)){
					result.athlete.number = df.format(item.id) + df.format(counter);
					counter ++
				}
			}
		}
		else if(params.produceType == "all"){
			def df = new DecimalFormat("0000")
			for (athlete in Athlete.list()) {
				athlete.number = df.format(athlete.id)
				athlete.save(flush:true)
			}
		}
		else if(params.mail != "" && params.femail != ""){
			def df = new DecimalFormat("00")
			for(org in Org.list()){
				def counter = 1;
				for(athlete in Athlete.findAllByOrgAndSex(org, GroupSex.get(1))){
					athlete.number = params.mail + df.format(org.id) + df.format(counter);
					counter ++
				}
				counter = 1;
				for(athlete in Athlete.findAllByOrgAndSex(org, GroupSex.get(2))){
					athlete.number = params.femail + df.format(org.id) + df.format(counter);
					counter ++
				}
			}
		}
		params.max = Math.min(max ?: 10, 100)
		respond Athlete.list(params), model:[athletePropertyInstanceCount: Athlete.count()]
	}
}
