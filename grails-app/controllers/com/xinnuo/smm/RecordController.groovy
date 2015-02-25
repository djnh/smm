package com.xinnuo.smm

class RecordController {

    static scaffold = Record
	
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		print params
		def query = Record.where {
			if(params.item){
				item.id==params.item.id
			}
			if (params.raceGroup){
				raceGroup.id==params.raceGroup.id
			}
			if(params.grade){
				grade.id==params.grade.id
			}
		}
		def results = query.list(params)
		respond results, model:[recordInstanceCount: query.size()]
	}
}
