package com.xinnuo.smm

import grails.transaction.Transactional;

class GroupingItemsController {

    def index() {
		def notGroupedItems = Item.where {
			results {
				groupNumber == null
			}
		}.list()
		
		def groupedItems = Item.where {
			results {
				groupNumber != null
			}
		}.list()
		[notGroupedItems:notGroupedItems, groupedItems: groupedItems]
	}
	
	def reset(Item itemInstance){
		session.item = itemInstance
	}
	
	@Transactional
	def submit() {
		//随机分组
		if(params.groupingType == "随机"){
			session.groupingType = "随机"
			session.raceGroups = session.item.raceGroups.asList()
			session.raceGroup = session.raceGroups[0]
			def randomResults = Result.findAllByRaceGroupAndItem(session.raceGroup, session.item)
			Collections.shuffle(randomResults)
			def groupCounter = 1; //组别
			def laneCounter = 1;  //道次
			for(result in randomResults){
				result.groupNumber = groupCounter
				result.laneNumber = laneCounter
				result.save(flush:true)
				laneCounter ++
				if(laneCounter == session.item.groupMemberMax){
					laneCounter = 1
					groupCounter++
				}
			}
			session.results = randomResults
		}
		//蛇形分组
		else if(params.groupingType == "蛇形"){
		
		}
		else{
			session.raceGroups.remove(0)
			session.raceGroup = session.raceGroups[0]
			def randomResults = Result.findAllByRaceGroupAndItem(session.raceGroup, session.item)
			Collections.shuffle(randomResults)
			def groupCounter = 1; //组别
			def laneCounter = 1;  //道次
			for(result in randomResults){
				result.groupNumber = groupCounter
				result.laneNumber = laneCounter
				result.save(flush:true)
				laneCounter ++
				if(laneCounter == session.item.groupMemberMax){
					laneCounter = 1
					groupCounter++
				}
			}
			session.results = randomResults
			if(session.raceGroups.size() == 0){
				flash.message = "分组完成"
				redirect(action:"index")
			}
		}
		
	}
	
	@Transactional
	def cancel() {
		Collections.shuffle(session.results)
		def groupCounter = 1; //组别
		def laneCounter = 1;  //道次
		for(result in session.results){
			result.groupNumber = groupCounter
			result.laneNumber = laneCounter
			result.save(flush:true)
			laneCounter ++
			if(laneCounter == session.item.groupMemberMax){
				laneCounter = 1
				groupCounter++
			}
		}
		render(view:"submit")
	}
}
