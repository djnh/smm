package com.xinnuo.smm

class BreakRuleGradeController {

    def listByType = {
		assert null != params.id
		params.max = Math.min( params.max? params.max.toInteger() : 10, 100)
		render g.select(optionKey:"id",from:BreakRuleGrade.findAllByBreakRuleType( BreakRuleType.get(params.id), params), name:"grade.id")
	}
}
